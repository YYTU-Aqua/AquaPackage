
#1) exit
#2) update
zenity --text-info --filename "/usr/share/common-licenses/GPL-3"
pass=$(zenity --forms --add-password "パスワード")
extension=$(zenity --list --width 600 --title "パッケージを選んでください" --text="パッケージ" --column "パッケージ" --column "ジャンル" FireFox ネット Wine exe)

case $extension in
FireFox) sudo apt install firefox -y
Wine) sudo dpkg --add-architecture i386 
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main'
rm winehq.key
sudo apt update
wget https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/xUbuntu_18.04/Release.key
sudo apt-key add Release.key
sudo apt-add-repository 'deb https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/xUbuntu_18.04/ ./'
sudo apt update

sudo apt install --install-recommends winehq-stable
echo $pass
;;
yaa) echo "yaa"
esac
