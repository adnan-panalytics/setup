mkdir ~/.logs
export PROMPT_COMMAND='if [ "$(id -u)" -ne 0  ]; then echo "$(date "+%Y-%m-%d.%H:%M:%S") $(pwd) $(history 1)" >> ~/.logs/bash-history-$(date "+%Y-%m-%d").log; fi'
echo "PROMPT_COMMAND='$PROMPT_COMMAND'" >> ~/.bashrc
source ~/.bashrc