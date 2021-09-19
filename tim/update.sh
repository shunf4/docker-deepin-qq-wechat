#!/bin/bash
set -eo pipefail

apt update
apt install -y curl

curl -L -otim_latest.exe $(curl -L -s https://qzonestyle.gtimg.cn/qzone/qzactStatics/configSystem/data/1605/config1.js | grep -P 'https://dldir1\.qq\.com/qqfile/qq/PCTIM/[^"]*' --only-matching --color=none)

echo 一些按钮可能变得灰暗。
echo 若提示是否关闭TIM并启动升级程序，请点击位于左侧的按钮以示肯定。
su qq -s /bin/bash -c 'WINEPREFIX="/home/qq/.deepinwine/Deepin-TIM" deepin-wine tim_latest.exe'

