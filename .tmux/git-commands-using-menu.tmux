#!/bin/bash

# Original solution sourced from:
#       https://unix.stackexchange.com/questions/146570/arrow-key-enter-menu
#
# Updated to do the following:
#   - Display index with each option
#   - Choose options 1-9 with numeric input
#   - Clear the menu and reset the cursor when an option is selected
#
#  Arguments:
#    array of options
#
#  Return value:
#    selected index (0 for opt1, 1 for opt2 ...)

LAST_SELECTED=0
select_option () {
  # local header="\nAdd A Header\nWith\nAs Many\nLines as you want"
  # header+="\n\nPlease choose an option:\n\n"
  # printf "$header"
	options=("$@")

	# helpers for terminal print control and key input
	ESC=$(printf "\033")
	cursor_blink_on()	{ printf "$ESC[?25h"; }
	cursor_blink_off()	{ printf "$ESC[?25l"; }
	cursor_to()			{ printf "$ESC[$1;${2:-1}H"; }
	print_option()		{ printf "\t   $1 "; }
	print_selected()	{ printf "\t${COLOR_GREEN}  $ESC[7m $1 $ESC[27m${NC}"; }
	get_cursor_row()	{ IFS=';' read -sdR -p $'\E[6n' ROW COL; echo ${ROW#*[}; }
    key_input() {
      local key
      # read 3 chars, 1 at a time
      for ((i=0; i < 3; ++i)); do
        read -s -n1 input 2>/dev/null >&2
        # concatenate chars together
        key+="$input"
        # if a number is encountered, echo it back
        if [[ $input =~ ^[1-9]$ ]]; then
          echo $input; return;
        # if enter, early return
        elif [[ $input = "" ]]; then
          echo enter; return;
        # if we encounter something other than [1-9] or "" or the escape sequence
        # then consider it an invalid input and exit without echoing back
        elif [[ ! $input = $ESC && i -eq 0 ]]; then
          return
        fi
      done

      if [[ $key = $ESC[A ]]; then echo up; fi;
      if [[ $key = $ESC[B ]]; then echo down; fi;
  }
  function cursorUp() { printf "$ESC[A"; }
  function clearRow() { printf "$ESC[2K\r"; }
  function eraseMenu() {
    cursor_to $lastrow
    clearRow
    numHeaderRows=$(printf "$header" | wc -l)
    numOptions=${#options[@]}
    numRows=$(($numHeaderRows + $numOptions))
    for ((i=0; i<$numRows; ++i)); do
      cursorUp; clearRow;
    done
  }

	# initially print empty new lines (scroll down if at bottom of screen)
	for opt in "${options[@]}"; do printf "\n"; done

	# determine current screen position for overwriting the options
	local lastrow=`get_cursor_row`
	local startrow=$(($lastrow - $#))
    # local selected=0
    local selected=$LAST_SELECTED

	# ensure cursor and input echoing back on upon a ctrl+c during read -s
	trap "cursor_blink_on; stty echo; printf '\n'; exit" 2
	cursor_blink_off

	while true; do
    # print options by overwriting the last lines
		local idx=0
    for opt in "${options[@]}"; do
      cursor_to $(($startrow + $idx))
      # add an index to the option
      local label="$(($idx + 1)). $opt"
      if [ $idx -eq $selected ]; then
        print_selected "$label"
      else
        print_option "$label"
      fi
      ((idx++))
    done

    # user key control
    input=$(key_input)
    case $input in
    enter) break;;
    [1-9])
        # If a digit is encountered, consider it a selection (if within range)
        if [ $input -lt $(($# + 1)) ]; then
          selected=$(($input - 1))
          break
        fi
        ;;
     up)	((selected--));
	if [ $selected -lt 0 ]; then selected=$(($# - 1)); fi;;
     down)  ((selected++));
	if [ $selected -ge $# ]; then selected=0; fi;;
   esac
   done

  eraseMenu
	cursor_blink_on

    LAST_SELECTED=$selected
	return $selected
}

send_command(){
  if [[ "$1" == "Enter" ]];
  then
    tmux send-keys -t right "$2" Enter
  else
    tmux send-keys -t right "$1"
  fi
}

options=( "cd ~/BLOG/pedago" \
  "cd ~/BLOG/pedago/public" \
  "git status" \
  "git add ." \
  "git commit" \
  "git push" \
  "hugo" \
  "thumbnails hugo" \
  "quit" )

while true; do
select_option "${options[@]}"
number=$?
result="${options[$number]}"

# echo "You chose: $result # $number"

case $number in
  0) send_command Enter "$result" ;;
  1) send_command Enter "$result" ;;
  2) send_command Enter "git status" ;;
  3) send_command Enter "git add ." ;;
  4) send_command "git commit -m \""
     tmux select-pane -t right
    ;;
  5) send_command Enter "git push -u origin \$(git rev-parse --abbrev-ref HEAD)" ;;
  6) send_command Enter "hugo" ;;
  7) send_command Enter "thumb_hugo" ;;
  8) exit 0 ;;
esac
done
