
#1) exit
#2) update
zenity --text-info --filename "/usr/share/common-licenses/GPL-3"
pass=$(zenity --forms --add-password "パスワード")
extension=$(zenity --list --width 600 --title "パッケージを選んでください" --text="パッケージ" --column "パッケージ" --column "ジャンル" FireFox ネット Wine exe)

case $extension in
FireFox) sudo apt install firefox -y
Wine) sudo apt install --install-recommends winehq-stable
echo $pass
;;
yaa) echo "yaa"
esac
