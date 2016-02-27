##############################################################
##	How to restore password in a new arch linux install
##
##############################################################

- create an empty .password folder in your home directory.
- 'git init' and 'git remote add origin' then 'git pull' to pull the remote's data.
- begin to restore pass word:
	+ gpg --import -a key.priv
	+ gpg --import -a key.pub
	+ gpg --edit-key -> type trust -> type 5 to enable that imported private key as one of your keys.
- Now you can encrypt or decrypt normally. 

- FINISH!!!
