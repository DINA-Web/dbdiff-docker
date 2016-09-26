#!/bin/bash
liquibase --driver="com.mysql.jdbc.Driver" \
	--url=$JDBC_DB1 \
	--username=$USER_DB1 \
	--password=$PASS_DB1 \
	diff \
	--referenceDriver="com.mysql.jdbc.Driver" \
	--referenceUrl=$JDBC_DB2 \
	--referenceUsername=$USER_DB2 \
	--referencePassword=$PASS_DB2
