docker rmi image-mysql
docker build -t image-mysql ./mysql
# sh ./scripts/sql_run.sh