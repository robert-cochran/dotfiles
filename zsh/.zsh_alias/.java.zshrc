# JAVA                                                                             

export JAVA_17_HOME=$(/usr/libexec/java_home -v 17)                                
export JAVA_11_HOME=$(/usr/libexec/java_home -v 11)                                
export JAVA_8_HOME=$(/usr/libexec/java_home -v 1.8)                                
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/temurin-8.jdk/Contents/Home 
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/openjdk-11.jdk/Contents/Home

#use this cmd to see what jdk's are available to use -> /usr/libexec/java_home -v
alias java17="export JAVA_HOME=$JAVA_17_HOME"                                      
alias java11="export JAVA_HOME=$JAVA_11_HOME"                                        
alias java8="export JAVA_HOME=$JAVA_8_HOME"                                        

#export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"                           
#export PATH="/opt/homebrew/opt/openjdk@8/bin:$PATH"   

#set default to Java 8                                                             
java8 # is this all thats needed to compile and run with this jdk? will this impact maven? spring?

#notes:                                                                            
#- setup for mac: https://stackoverflow.com/questions/69875335/macos-how-to-install-java-17
#- setup for mac: https://gist.github.com/gwpantazes/50810d5635fc2e053ad117b39b597a14
#- setup for mac: https://medium.com/@devkosal/switching-java-jdk-versions-on-macos-80bc868e686a
#- jdk comparions: https://whichjdk.com/#adoptium-eclipse-temurin                  
#- sdkman can manage jdk's itself but might be overkill: https://sdkman.io/   
