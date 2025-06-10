# based off release will determine install procedure below
# cat /etc/lsb-release
export Ub_Release=`cat /etc/lsb-release|grep DISTRIB_REL|awk -F '=' '{print $2}'`
sudo apt-get install -Y gnupg curl

curl -fsSL https://www.mongodb.org/static/pgp/server-8.0.asc | \
   sudo gpg -o /usr/share/keyrings/mongodb-server-8.0.gpg \
   --dearmor

# Fetch value from Mongo DB install page for Ub_Release number above
#https://www.mongodb.com/docs/manual/tutorial/install-mongodb-on-ubuntu/#create-the-list-file.

echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-8.0.gpg ] https://repo.mongodb.org/apt/ubuntu noble/mongodb-org/8.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-8.0.list

sudo apt-get update

#install latest release of mongodb
sudo apt-get install -y mongodb-org

# start mongo
# sudo systemctl start mongod
