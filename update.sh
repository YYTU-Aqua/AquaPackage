
#1) exit
#2) update
#といったメニューが表示される。番号で処理を指定する。
echo "この操作をすると再起動されます"
zenity --question --width 350  --text "パッケージ情報を更新しますか？" --ok-label "OK" --cancel-label "NO"
case $? in
0) 
pass=$(zenity --forms --width 350 --add-password "パスワード")
extension=$(zenity --list --title "パッケージを選んでください" --text="パッケージ" --column "パッケージ" --column "ジャンル" FireFox ネット)
;;
1) zenity --text-info --filename "/usr/share/common-licenses/GPL-3"
pass=$(zenity --forms --add-password "パスワード")
extension=$(zenity --list --width 600 --title "パッケージを選んでください" --text="パッケージ" --column "パッケージ" --column "ジャンル" FireFox ネット)
;;
*) echo "Timeout"
;;
esac

case $extension in
FireFox) sudo apt install firefox -y
echo $pass
;;
yaa) echo "yaa"
esac
