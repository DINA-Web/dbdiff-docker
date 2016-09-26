include .env
PWD := $(shell pwd)

build:
	docker build -t dina/dbdiff .

dbdiff:
	ssh -fNL laptop:13306:127.0.0.1:3306 account@server.dina-web.net
	docker run -it --rm \
		--net=host \
		--env-file=.env \
		-v $(PWD)/db-diff.sh:/scripts/db-diff.sh \
    		dina/dbdiff

debug:
	docker run -it --rm \
		--net=host \
		--env-file=.env \
		-v $(PWD)/db-diff.sh:/scripts/db-diff.sh \
    		dina/dbdiff bash
