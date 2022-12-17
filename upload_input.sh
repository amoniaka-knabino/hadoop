docker exec hadoop runuser -l hadoop -c $'hdfs dfs -mkdir -p /user/hadoop/input'
docker exec hadoop runuser -l hadoop -c $'hdfs dfs -put /workfiles/mozzart_letters.py /user/hadoop/input/'
