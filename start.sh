Green='\033[0;32m'
Yellow='\033[1;33m'
Purple='\033[1;35m'
NC='\033[0m' # No Color

echo ""
printf "${Green}Welcome in My repo for CP${NC}"
echo ""
echo "Follow below steps"
printf "${Yellow}Step 1:${NC} open another terminal and enter this command \n"
printf "          ${Purple}sudo${NC} vi /etc/bash.bashrc  \n"
echo "        and then put your password there"
echo ""
printf "${Yellow}Step 2:${NC} Add two lines there at the end \n"
printf "          ${Purple}alias${NC} m="bash ~/CP_env/test.sh"  \n"
echo ""
echo "exit from there by Esc -> :wq -> enter"

RED='\033[0;31m'
NC='\033[0m' # No Color
echo ""
printf "I ${RED}love${NC} Stack Overflow \n"
echo ""