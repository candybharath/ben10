if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/ashokkg06/Ben-filter-bot.git /Ben-filter-bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Ben-filter-bot
fi
cd /Ben-filter-bot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
