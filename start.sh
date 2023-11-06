if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Unknownforall1/Auto-filter-bot.git /Auto-filter-bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Auto-filter-bot
fi
cd /Auto-filter-bot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
