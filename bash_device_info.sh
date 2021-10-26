RED='\033[0;31m'
NC='\033[0m'

echo -e "${RED}$USER${NC}@${RED}$HOSTNAME${NC}"
echo "---------------"

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        echo -e "${RED}OS:${NC} Linux"
elif [[ "$OSTYPE" == "darwin"* ]]; then
        echo -e "${RED}OS:${NC} Mac Os"
elif [[ "$OSTYPE" == "cygwin" ]]; then
        echo -e "${RED}OS:${NC} CYG win"
elif [[ "$OSTYPE" == "msys" ]]; then
        echo -e "${RED}OS:${NC} MSYS"
elif [[ "$OSTYPE" == "win32" ]]; then
        echo -e "${RED}OS:${NC} Windows"
elif [[ "$OSTYPE" == "freebsd"* ]]; then
        echo -e "{RED}OS:${NC} FreeBSD"
else
        echo -e "${RED}OS:${NC} Unknown"
fi

echo -e "${RED}Host:${NC} $HOSTNAME"

KERNEL=$(uname -r)
echo -e  "${RED}Kernel:${NC} $KERNEL"

echo -e  "${RED}Shell:${NC} ${BASH_VERSION}"

RES=$(xdpyinfo | grep dimensions | sed -r 's/^[^0-9]*([0-9]+x[0-9]+).*$/\1/')
echo -e "${RED}Resolution:${NC} $RES" 

MEMORY=$(grep MemTotal /proc/meminfo | awk '{print $2}')           
echo -e "${RED}Memory:${NC} $(( ${MEMORY%% *} / 1024)) MiB"

CPU=$(lscpu | grep 'Model name' | cut -f 2 -d ":" | awk '{$1=$1}1')
echo -e "${RED}CPU:${NC} $CPU"

