#Script for command line test

#!/bin/bash

# sign up, sign in, Exit.

source colour.sh
#======================================================================================================================================================#
#=============================================================SCRIPT===================================================================================#

echo -e "$colstrip"
echo -e " $bold$blue                                      HOME PAGE                                 $normal"
echo "1. Sign in
2. Sign up
3. Exit"
echo ""
echo "Enter choice"
read Entry

case $Entry in

1)      bash signin.sh;;

2) 	bash signup1.sh;;

*) exit;;
 esac
