docker exec hadoop runuser -l hadoop -c $'hdfs dfs -mkdir -p /user/hadoop/mrs'
docker exec hadoop runuser -l hadoop -c $'hdfs dfs -put /workfiles/most_used_word.py /user/hadoop/mrs/'

docker exec namenode runuser -l hadoop -c $'hadoop jar hadoop/share/hadoop/mapreduce/hadoop-mapreduce-examples-2.9.0.jar -file /user/hadoop/mrs/most_used_word.py -input /user/hadoop/mozzart_letters.txt -output /user/hadoop/test_output'

docker exec namenode runuser -l hadoop -c $'hdfs dfs -cat /user/hadoop/test_output'