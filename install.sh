#!/bin/bash
echo "Installing AutoDefaceFinder - 0xGolip-Team Tools VIP"
pkg install bash -y > /dev/null
curl -s https://raw.githubusercontent.com/parfumGlofy/autodefacefinder/main/main.sh > main.sh
chmod +x main.sh
echo ""
echo "Selesai. Jalankan dengan: ./main.sh"
./main.sh
