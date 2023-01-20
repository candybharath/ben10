if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/ashokkg06/Auto-filter-pro.git /Auto-filter-pro
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Auto-filter-pro
fi
cd /Auto-filter-pro
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
