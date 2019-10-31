#!/usr/bin/env bash
wget -O - https://raw.githubusercontent.com/gyuha/settings/master/applications/kakaotalk.sh | bash
sudo apt install -f fonts-nanum*
sudo apt install -f wine-stable
sudo apt install -f gnome-shell-extension-top-icons-plus
winearch=win32 wineprefix=~/.wine wine wineboot
cd ~/downloads/
wget https://raw.githubusercontent.com/winetricks/winetricks/master/src/winetricks
chmod +x winetricks
./winetricks riched30 gdiplus msxml6
sed -i 's/"MS Shell Dlg"="Gulim"/"MS Shell Dlg"="NanumGothic"/' ~/.wine/system.reg
sed -i 's/"MS Shell Dlg 2"="Tahoma"/"MS Shell Dlg 2"="NanumGothic"/' ~/.wine/system.reg
wget http://app.pc.kakao.com/talk/win32/KakaoTalk_Setup.exe
wine ./KakaoTalk_Setup.exe

