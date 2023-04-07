#!/bin/bash
exists()
{
  command -v "$1" >/dev/null 2>&1
}

echo "---------------------------------------------------"
echo -e "\e[32mШаг 1: Инициализация скрипта \e[0m" && sleep 2

sudo apt install curl -y
curl -s https://raw.githubusercontent.com/NodeRunTeam/NodeGuide/main/logo_hc.sh | bash


echo "---------------------------------------------------"
echo -e "\e[32mВыберите действие. Введите на нужную цифру и подтвердите действие клавишей Enter\e[0m" && sleep 3
echo -e ""
echo "1 - Установить ноду (Base)"

read doing

case $doing in 
  1) 
  echo "---------------------------------------------------"
  echo -e "\e[32mШаг 2: скачивание и установка ноды: \e[0m" && sleep 2

  sudo apt-get update && sudo apt-get upgrade -y
  sleep 3
  sudo apt-get install curl
  sleep 3
  wget https://raw.githubusercontent.com/NodeRunTeam/NodeGuide/main/docker.sh
  chmod +x docker.sh && ./docker.sh
  sleep 3
  sudo apt-get update && sudo apt install jq && sudo apt install apt-transport-https ca-certificates curl software-properties-common -y && curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - && sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable" && sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin && sudo apt-get install docker-compose-plugin
  sleep 3
  git clone https://github.com/base-org/node.git
  screen -S base
  cd node

  echo "---------------------------------------------------"
  echo -e "Установка ноды завершена."
  echo "---------------------------------------------------"
  sleep 1
  echo "---------------------------------------------------"
  echo -e "Шаг 3: Запуск ноды
  echo "---------------------------------------------------"
  sleep 1
  docker compose up
  ;;
esac
