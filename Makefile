all: read

github-push:
	gh repo create 'Clone of OpenBK7231T_App with sunrise/sunset code' --push --public # use "upstream"
	gh repo set-default
	gh pr create

github-init:
	gh repo create 'Fix faulty cable conneciton on an 2018 BH EVO Street E-bike' --public
	rm -rf .git
	git init
	git add Makefile images/controller-label3.jpg images/controller-cover.jpg images/battery-connector.jpg images/battery-model.jpg  images/bike.jpg images/hookup3.png ./README.md 
	git commit -m "first commit"
	git remote add origin https://github.com/rickbronson/Fix-faulty-cable-conneciton-on-an-2018-BH-EVO-Street-E-bike.git
# /snap/bin/gh auth login --with-token < ~/.ssh/id_ed25519.pub 
# go here https://github.com/settings/tokens and get a new tokin and use this as the password on the next step, NOTE: you need to enable several permissions on this page!
#	git push -u origin master

github-update:
	git commit -a -m 'update README'
	git push -u origin master
