#Switch to root before executing the script [sudo su]
apt-get install -y python3 python3-setuptools python3-dev build-essential python3-pip python3-mysqldb
pip3 install flask
pip3 install flask-mysql
FLASK_APP=app.py flask run --host=0.0.0.0
