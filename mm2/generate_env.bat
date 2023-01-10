for /f %%i in ('docker run -it confluentinc/cp-kafka:7.3.1 kafka-storage random-uuid') do set id=%%i
echo cluster_id=%id% > %~dp0\env-s

for /f %%i in ('docker run -it confluentinc/cp-kafka:7.3.1 kafka-storage random-uuid') do set id=%%i
echo cluster_id=%id% > %~dp0\env-d