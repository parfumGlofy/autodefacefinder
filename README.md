# AutoDefaceFinder - 0xGolip-Team Tools VIP

**AutoDefaceFinder** adalah tools bash OSINT buatan 0xGolip-Team untuk mendeteksi file mencurigakan pada direktori lokal seperti `/sdcard/htdocs`.

### Fitur:
- Deteksi file `.php`, `.phtml`, `.ico`, `.txt`
- Tampilkan path lengkap dan waktu modifikasi
- Menu interaktif, siap pakai, tanpa edit kode

---

## Cara Pakai (Termux):

### Opsi 1: Git Clone
```bash
pkg install git bash -y
git clone https://github.com/parfumglofy/autodefacefinder
cd autodefacefinder
chmod +x AutoDefaceFinder.sh
./AutoDefaceFinder.sh
