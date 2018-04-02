#!/bin/sh

# if [ "$ACCOUNT" != "demo" ]
# then
#   pipenv run python cloudmapper.py gather --account-name $ACCOUNT
# else
# 	cp config.json.demo config.json
# fi
pipenv run python cloudmapper.py prepare --regions "us-east-1,us-east-2" --account-name $ACCOUNT
# pipenv run python cloudmapper.py prepare --stack-names $FILTER --dns-names $FILTER --db-user-names $FILTER --account-name $ACCOUNT
# pipenv run python cloudmapper.py prepare --stack-names $FILTER --dns-names $FILTER --db-user-names $FILTER --account-name $ACCOUNT
pipenv run python cloudmapper.py serve --public
