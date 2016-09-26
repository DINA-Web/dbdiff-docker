# dbdiff

This utility takes two database schemas and diffs them.

The connection is made with Java, using settings such as jdbc-url:s and credentials specified in a .env-file).

## Usage

Use the Makefile, "make" will build the tool and then run a diff against dbs specified in the .env file. 

Or stepwise:

	- make build
	- make dbdiff

The `db-diff.sh` file shows the diff command used.

### Environment

Use the .env file to set up the connections. 

Format:

	JDBC_DB1=jdbc:mysql://servername:3306/database_name?useUnicode=true&useSSL=false&characterEncoding=UTF-8
	USER_DB1=root
	PASS_DB1=password12

	JDBC_DB2=jdbc:mysql://servername:13306/database_name?useUnicode=true&useSSL=false&characterEncoding=UTF-8
	USER_DB2=root
	PASS_DB2=password12

Make sure both db servers are available from the computer that runs "make dbdiff".

Sometimes this can be achieved through ssh tunnels as shown in the Makefile, ie:

	ssh -fNL servername:13306:127.0.0.1:3306 useraccount@www.domain.net
