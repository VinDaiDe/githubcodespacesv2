echo "Đang tải lệnh"
sleep 3
clear
echo "=>"
echo "1%"
clear
echo "======>"
echo "25%"
sleep 2
clear
echo "===========>"
echo "34%"
clear
echo "=====================>"
echo "66%"
sleep 3
clear
echo "=======================>"
echo "73%"
clear
echo "==================================>"
echo "95%"
clear
echo "===================================>"
echo "97%"
clear
echo "===================================>"
echo "97%"
clear
echo "===================================>"
echo "97%"
sleep 5
clear
echo "====================================>"
echo "99%"
sleep 3
clear
echo "======================================>"
echo "100%"
sleep 2
echo "Thành công"
sleep 1
echo "Đang chạy..."
echo "Ok"
clear
echo "______________________________________________"
echo "|    Toàn bộ lệnh thuộc quyền sở hữu của VinZ |"
echo "|         Không được ăn cắp đoạn lệnh này.    |"
echo "|                 Thân ái!                    |"
echo "|_____________________________________________|"
sleep 6
clear
echo "Đang update hệ thống"
sleep 3
clear
sudo apt update
sudo apt-get install speedtest-cli
clear
echo "Đang kiểm tra kết nối mạng"
speedtest-cli --simple
sleep 4
clear
echo "Đã kiểm tra xong, sẽ quay trở lại sau: 5"
sleep 1
clear
echo "Đã kiểm tra xong, sẽ quay trở lại sau: 4"
sleep 1
clear
echo "Đã kiểm tra xong, sẽ quay trở lại sau: 3"
sleep 1
clear
echo "Đã kiểm tra xong, sẽ quay trở lại sau: 2"
sleep 1
clear
echo "Đã kiểm tra xong, sẽ quay trở lại sau: 1"
sleep 1
clear
echo "Đã kiểm tra xong, sẽ quay trở lại sau: 0"
clear
echo "Đang tải Bios TianoCore"
sleep 3
wget -O bios64.bin "https://github.com/BlankOn/ovmf-blobs/raw/master/bios64.bin"
clear
read -p "Nhập liên kết tải file ISO: " iso_link && wget -O link.iso "$iso_link"
clear
echo "Đang tải ngrok cho Linux"
sleep 3
wget -O ngrok.tgz "https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz"
clear
tar -xf ngrok.tgz
rm -rf ngrok.tgz
clear
read -p "Nhập token ngrok: " ngrok_token && ./ngrok authtoken "$ngrok_token"
clear
echo "Vui lòng chọn khu vực" 
echo "us - Hoa Kỳ (Ohio)"
echo "eu - Châu Âu (Frankfurt)"
echo "ap - Đông Nam Á (Singapore)"
echo "au - Úc (Sydney)"
echo "sa - Nam Mỹ (Sao Paulo)"
echo "jp - Nhật Bản (Tokyo)"
echo "in - Ấn Độ (Mumbai)"
read -p "Nhập khu vực: " khuvuc
./ngrok tcp --region $khuvuc 5900 &>/dev/null &
clear
sudo apt update
sudo apt install qemu-kvm -y
clear
read -p "Nhập dung lượng ổ đĩa: " disk_size
qemu-img create -f raw win.img "$disk_size"
sleep 1
echo "Đang tạo ổ đĩa"
sleep 4
echo "Thành công!"
sleep 2
echo "Đang gán lệnh"
sleep 5
clear
echo "Đã tạo VPS thành công!"
echo "Địa chỉ IP của bạn là: "
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo " "
echo " "
echo "VPS sẽ hoạt động được 50h"
echo "________________________________________"
echo "|        Lệnh được viết bởi VinZ.      |"
echo "|______________________________________|"
echo "Hoạt động trên VPS: "
sudo qemu-system-x86_64 -m 12G -cpu host -boot order=c -drive file=link.iso,media=cdrom -drive file=win.img,format=raw -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0 -smp cores=4 -device rtl8139,netdev=n0 -netdev user,id=n0 -vga qxl -accel kvm -bios bios64.bin
clear
echo "-------------- Lỗi ----------------"
echo "Ôi không!"
echo "VPS đã dừng hoạt động "
echo "Xin lỗi vì điều này "
echo "-----------------------------------"
echo "Lệnh được viết bởi VinZ"
echo "github.com/VinDaiDe"
echo " "
echo " "
echo "Đang cố gắng kết nối lại..."
sleep 3
echo "Đang kiểm tra thông tin"
sleep 1
echo "Đang xử lý..."
sleep 2
echo "Đã kết nối"
echo "Địa chỉ IP truy cập của bạn sẽ vẫn như cũ"
sudo qemu-system-x86_64 -m 12G -cpu host -boot order=c -drive file=link.iso,media=cdrom -drive file=win.img,format=raw -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0 -smp cores=4 -device rtl8139,netdev=n0 -netdev user,id=n0 -vga qxl -accel kvm -bios bios64.bin
echo "Đang tiếp tục kết nối lại..."
echo "Thành công!"
sudo qemu-system-x86_64 -m 12G -cpu host -boot order=c -drive file=link.iso,media=cdrom -drive file=win.img,format=raw -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0 -smp cores=4 -device rtl8139,netdev=n0 -netdev user,id=n0 -vga qxl -accel kvm -bios bios64.bin
echo "Lỗi"
sleep 2
echo "Đang tiếp tục kết nối lại..."
echo "Thành công!"
sudo qemu-system-x86_64 -m 12G -cpu host -boot order=c -drive file=link.iso,media=cdrom -drive file=win.img,format=raw -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0 -smp cores=4 -device rtl8139,netdev=n0 -netdev user,id=n0 -vga qxl -accel kvm -bios bios64.bin
echo "Lỗi"
sleep 2
echo "Đang tiếp tục kết nối lại..."
echo "Thành công!"
sudo qemu-system-x86_64 -m 12G -cpu host -boot order=c -drive file=link.iso,media=cdrom -drive file=win.img,format=raw -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0 -smp cores=4 -device rtl8139,netdev=n0 -netdev user,id=n0 -vga qxl -accel kvm -bios bios64.bin
echo "Lỗi"
sleep 2
echo "Đang tiếp tục kết nối lại..."
echo "Thành công!"
sudo qemu-system-x86_64 -m 12G -cpu host -boot order=c -drive file=link.iso,media=cdrom -drive file=win.img,format=raw -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0 -smp cores=4 -device rtl8139,netdev=n0 -netdev user,id=n0 -vga qxl -accel kvm -bios bios64.bin
echo "Lỗi"
sleep 2
echo "Đang tiếp tục kết nối lại..."
echo "Thành công!"
sudo qemu-system-x86_64 -m 12G -cpu host -boot order=c -drive file=link.iso,media=cdrom -drive file=win.img,format=raw -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0 -smp cores=4 -device rtl8139,netdev=n0 -netdev user,id=n0 -vga qxl -accel kvm -bios bios64.bin
echo "Lỗi"
sleep 2
echo "Đang tiếp tục kết nối lại..."
echo "Thành công!"
sudo qemu-system-x86_64 -m 12G -cpu host -boot order=c -drive file=link.iso,media=cdrom -drive file=win.img,format=raw -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0 -smp cores=4 -device rtl8139,netdev=n0 -netdev user,id=n0 -vga qxl -accel kvm -bios bios64.bin
echo "Lỗi"
sleep 2
echo "Đang tiếp tục kết nối lại..."
echo "Thành công!"
sudo qemu-system-x86_64 -m 12G -cpu host -boot order=c -drive file=link.iso,media=cdrom -drive file=win.img,format=raw -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0 -smp cores=4 -device rtl8139,netdev=n0 -netdev user,id=n0 -vga qxl -accel kvm -bios bios64.bin
echo "Lỗi"
sleep 2
echo "Đang tiếp tục kết nối lại..."
echo "Thành công!"
sudo qemu-system-x86_64 -m 12G -cpu host -boot order=c -drive file=link.iso,media=cdrom -drive file=win.img,format=raw -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0 -smp cores=4 -device rtl8139,netdev=n0 -netdev user,id=n0 -vga qxl -accel kvm -bios bios64.bin
echo "Lỗi"
sleep 2
echo "Đang tiếp tục kết nối lại..."
echo "Thành công!"
sudo qemu-system-x86_64 -m 12G -cpu host -boot order=c -drive file=link.iso,media=cdrom -drive file=win.img,format=raw -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0 -smp cores=4 -device rtl8139,netdev=n0 -netdev user,id=n0 -vga qxl -accel kvm -bios bios64.bin
echo "Lỗi"
sleep 2
echo "Đang tiếp tục kết nối lại..."
echo "Thành công!"
sudo qemu-system-x86_64 -m 12G -cpu host -boot order=c -drive file=link.iso,media=cdrom -drive file=win.img,format=raw -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0 -smp cores=4 -device rtl8139,netdev=n0 -netdev user,id=n0 -vga qxl -accel kvm -bios bios64.bin
echo "Lỗi"
sleep 2
echo "Đang tiếp tục kết nối lại..."
echo "Thành công!"
sudo qemu-system-x86_64 -m 12G -cpu host -boot order=c -drive file=link.iso,media=cdrom -drive file=win.img,format=raw -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0 -smp cores=4 -device rtl8139,netdev=n0 -netdev user,id=n0 -vga qxl -accel kvm -bios bios64.bin
echo "Lỗi"
sleep 2
echo "Đang tiếp tục kết nối lại..."
echo "Thành công!"
sudo qemu-system-x86_64 -m 12G -cpu host -boot order=c -drive file=link.iso,media=cdrom -drive file=win.img,format=raw -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0 -smp cores=4 -device rtl8139,netdev=n0 -netdev user,id=n0 -vga qxl -accel kvm -bios bios64.bin
echo "Lỗi"
sleep 2
echo "Đang tiếp tục kết nối lại..."
echo "Thành công!"
sudo qemu-system-x86_64 -m 12G -cpu host -boot order=c -drive file=link.iso,media=cdrom -drive file=win.img,format=raw -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0 -smp cores=4 -device rtl8139,netdev=n0 -netdev user,id=n0 -vga qxl -accel kvm -bios bios64.bin
echo "Lỗi"
sleep 2
echo "Đang tiếp tục kết nối lại..."
echo "Thành công!"
sudo qemu-system-x86_64 -m 12G -cpu host -boot order=c -drive file=link.iso,media=cdrom -drive file=win.img,format=raw -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0 -smp cores=4 -device rtl8139,netdev=n0 -netdev user,id=n0 -vga qxl -accel kvm -bios bios64.bin
echo "Lỗi"
sleep 2
echo "Đang tiếp tục kết nối lại..."
echo "Thành công!"
sudo qemu-system-x86_64 -m 12G -cpu host -boot order=c -drive file=link.iso,media=cdrom -drive file=win.img,format=raw -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0 -smp cores=4 -device rtl8139,netdev=n0 -netdev user,id=n0 -vga qxl -accel kvm -bios bios64.bin
echo "Lỗi"
sleep 2
echo "Đang tiếp tục kết nối lại..."
echo "Thành công!"
sudo qemu-system-x86_64 -m 12G -cpu host -boot order=c -drive file=link.iso,media=cdrom -drive file=win.img,format=raw -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0 -smp cores=4 -device rtl8139,netdev=n0 -netdev user,id=n0 -vga qxl -accel kvm -bios bios64.bin
echo "Lỗi"
sleep 2
echo "Đang tiếp tục kết nối lại..."
echo "Thành công!"
sudo qemu-system-x86_64 -m 12G -cpu host -boot order=c -drive file=link.iso,media=cdrom -drive file=win.img,format=raw -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0 -smp cores=4 -device rtl8139,netdev=n0 -netdev user,id=n0 -vga qxl -accel kvm -bios bios64.bin
echo "Lỗi"
sleep 2
echo "Đang tiếp tục kết nối lại..."
echo "Thành công!"
sudo qemu-system-x86_64 -m 12G -cpu host -boot order=c -drive file=link.iso,media=cdrom -drive file=win.img,format=raw -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0 -smp cores=4 -device rtl8139,netdev=n0 -netdev user,id=n0 -vga qxl -accel kvm -bios bios64.bin
echo "Lỗi"
sleep 2
echo "Đang tiếp tục kết nối lại..."
echo "Thành công!"
sudo qemu-system-x86_64 -m 12G -cpu host -boot order=c -drive file=link.iso,media=cdrom -drive file=win.img,format=raw -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0 -smp cores=4 -device rtl8139,netdev=n0 -netdev user,id=n0 -vga qxl -accel kvm -bios bios64.bin
echo "Lỗi"
sleep 2
echo "Đang tiếp tục kết nối lại..."
echo "Thành công!"
sudo qemu-system-x86_64 -m 12G -cpu host -boot order=c -drive file=link.iso,media=cdrom -drive file=win.img,format=raw -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0 -smp cores=4 -device rtl8139,netdev=n0 -netdev user,id=n0 -vga qxl -accel kvm -bios bios64.bin
echo "Lỗi"
sleep 2
echo "Đang tiếp tục kết nối lại..."
echo "Thành công!"
sudo qemu-system-x86_64 -m 12G -cpu host -boot order=c -drive file=link.iso,media=cdrom -drive file=win.img,format=raw -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0 -smp cores=4 -device rtl8139,netdev=n0 -netdev user,id=n0 -vga qxl -accel kvm -bios bios64.bin
echo "Lỗi"
sleep 2
echo "Đang tiếp tục kết nối lại..."
echo "Thành công!"
sudo qemu-system-x86_64 -m 12G -cpu host -boot order=c -drive file=link.iso,media=cdrom -drive file=win.img,format=raw -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0 -smp cores=4 -device rtl8139,netdev=n0 -netdev user,id=n0 -vga qxl -accel kvm -bios bios64.bin
echo "Lỗi"
sleep 2
echo "Đang tiếp tục kết nối lại..."
echo "Thành công!"
sudo qemu-system-x86_64 -m 12G -cpu host -boot order=c -drive file=link.iso,media=cdrom -drive file=win.img,format=raw -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0 -smp cores=4 -device rtl8139,netdev=n0 -netdev user,id=n0 -vga qxl -accel kvm -bios bios64.bin
echo "Lỗi"
sleep 2
echo "Đang tiếp tục kết nối lại..."
echo "Thành công!"
sudo qemu-system-x86_64 -m 12G -cpu host -boot order=c -drive file=link.iso,media=cdrom -drive file=win.img,format=raw -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0 -smp cores=4 -device rtl8139,netdev=n0 -netdev user,id=n0 -vga qxl -accel kvm -bios bios64.bin
echo "Lỗi"
sleep 2
echo "Đang tiếp tục kết nối lại..."
echo "Thành công!"
sudo qemu-system-x86_64 -m 12G -cpu host -boot order=c -drive file=link.iso,media=cdrom -drive file=win.img,format=raw -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0 -smp cores=4 -device rtl8139,netdev=n0 -netdev user,id=n0 -vga qxl -accel kvm -bios bios64.bin
