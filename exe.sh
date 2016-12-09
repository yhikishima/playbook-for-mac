#!/bin/sh

# Xcodeのインストール
# Homebrewのインストール
# Ansibleのインストール
# gitのインストール
# Homebrew Caskオプションの設定
# Playbookの実行

if [ $1 = "test" ]; then
  echo "Dry Runの実行"
  ansible-playbook -vv localhost.yml -i hosts -C
elif [ $1 = "do" ]; then
  echo "Xcodeのインストール&"
  echo "Homebrewのインストール&"
  echo "Ansibleのインストール&"
  echo "gitのインストール&"
  echo "Homebrew Caskオプションの設定&"
  echo "Playbookの実行をします"
  sudo xcodebuild -license&&ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"&&brew update&&brew install ansible&&echo 'export HOMEBREW_CASK_OPTS="--appdir=/Applications"' >> ~/.bash_profile&&source ~/.bash_profile&&ansible-playbook -vv localhost.yml -i hosts
fi