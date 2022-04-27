if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clonehttps://github.com/Uzxbot/FOR-A-FRIND /app
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /app
fi
cd /app
pip3 install -U -r requirements.txt
echo "starting UrlUploader ~@Tellybots";
python3 -m bot
