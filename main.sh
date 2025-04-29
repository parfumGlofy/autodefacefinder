#!/bin/bash

# AutoDefaceFinder - 0xGolip-Team Tools VIP
# Full offline defacement file scanner - No API, No edit needed

RED='\033[1;31m'
GRN='\033[1;32m'
YLW='\033[1;33m'
CYN='\033[1;36m'
WHT='\033[1;37m'
NC='\033[0m'

BANNER() {
    clear
    echo -e "${GRN}"
    echo " ╔══════════════════════════════════════════════╗"
    echo " ║        0xGolip-Team Tools VIP Scanner        ║"
    echo " ╠══════════════════════════════════════════════╣"
    echo " ║       AutoDefaceFinder - Local Recon Tool    ║"
    echo " ║        Advanced File Monitor for Android     ║"
    echo " ║              Status: ONLINE [✓]              ║"
    echo -e " ╚══════════════════════════════════════════════╝${NC}"
    echo -e "${WHT}              © 2025 0xGolip-Team Cyber Division${NC}"
    echo ""
}

SCAN_DIR() {
    echo -e "${CYN}[~] Scanning Directory: ${WHT}$1${NC}"
    sleep 1
    echo -e "${YLW}--------------------------------------------------${NC}"
    find "$1" -type f -iname "*.php" -o -iname "*.phtml" -o -iname "*.ico" -o -iname "*.txt" \
    -printf "${GRN}[+] File: %p${NC}\n    ${CYN}Last Modified:${NC} %TY-%Tm-%Td %TH:%TM:%TS\n\n"
    echo -e "${YLW}--------------------------------------------------${NC}"
}

MAIN_MENU() {
    while true; do
        BANNER
        echo -e "${WHT}[ VIP MENU ]${NC}"
        echo -e "${GRN}1${NC}. Scan default directory ${YLW}(/sdcard/htdocs)${NC}"
        echo -e "${GRN}2${NC}. Scan custom directory"
        echo -e "${GRN}3${NC}. Exit"
        echo -ne "${CYN}>> Pilih opsi [1-3]: ${NC}"
        read opsi
        case $opsi in
            1)
                SCAN_DIR "/sdcard/htdocs"
                read -p "${WHT}Tekan enter untuk kembali ke menu...${NC}"
                ;;
            2)
                echo -ne "${CYN}>> Masukkan path direktori: ${NC}"
                read dir
                if [ -d "$dir" ]; then
                    SCAN_DIR "$dir"
                else
                    echo -e "${RED}[!] Direktori tidak ditemukan.${NC}"
                fi
                read -p "${WHT}Tekan enter untuk kembali ke menu...${NC}"
                ;;
            3)
                echo -e "${GRN}[✓] Keluar. Tetap aman - 0xGolip-Team Tools VIP${NC}"
                exit 0
                ;;
            *)
                echo -e "${RED}[!] Pilihan tidak valid.${NC}"
                sleep 1
                ;;
        esac
    done
}

MAIN_MENU
