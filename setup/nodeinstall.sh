# Download and install nvm:
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

# in lieu of restarting the shell
\. "$HOME/.nvm/nvm.sh"

# Download and install Node.js:
nvm install 24

# Verify the Node.js version:
node -v # Should print "v24.2.0".
nvm current # Should print "v24.2.0".

# Verify npm version:
npm -v # Should print "11.3.0".


#cd to backend folder and run
#npm init -y
#install express version 4.18.2
#npm install express@4.18.2
#install nodemon as a Dev Dependancy
#npm install nodemon -D
#npm install mongoose