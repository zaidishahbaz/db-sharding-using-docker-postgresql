# A small poc for database sharding using docker in postgresql
The poc application will spin up 3 docker containers, each running a psql server and then we shard our db request on these three servers using  a hash ring.

# Commands to run on local

## buidling the image
docker build -t pgshard .

## spin up the containers
docker run --name shard1 -p 5432:5432 pgshard
docker run --name shard2 -p 5433:5432 pgshard
docker run --name shard3 -p 5434:5432 pgshard

## spin up pgadmin
docker run -e PGADMIN_DEFAULT_EMAIL=“<your_email>” -e PGADMIN_DEFAULT_PASSWORD="<your_email>" -p 5555:80 —name pgadmin dpage/pgadmin4 