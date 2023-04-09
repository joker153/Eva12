if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/joker153/Eva12.git /Eva12
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Eva12
fi
cd /Eva12
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
