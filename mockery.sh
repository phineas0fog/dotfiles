#!/bin/env sh

r=$((RANDOM%6+0));
case $r in
    0 )
	echo -e '\033[1;31m WTF?! mount /dev/brain ! \033[0m';
	;;
    1 )
	echo -e '\033[1;31m Error 404 ! \033[0m';
	;;
    2 )
	echo -e '\033[1;31m Dude ! Stop try to execute this command... She does NOT exist !  \033[0m';
	;;
    3 )
	echo -e '\033[1;31m No, I dont feel like it. \033[0m';
	;;
    4 )
	echo -e '\033[1;31m You cant force me. \033[0m';
	;;
    5 )
	echo -e '\033[1;31m Command not found ! \033[0m';
	;;
    6 )
	echo -e '\033[1;31m I cant do that... Sorry. \033[0m';
	;;
esac
