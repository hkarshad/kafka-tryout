# kafka-tryout
Repo to understand features and configurations of kafka via docker compose. 

# Run
## Pre-requisite
* docker
* docker-compose

## Commands
> docker compose -f "docker-compose-single-node.yaml" up


> docker compose -f "docker-compose-single-node.yaml" down


> docker compose -f "docker-compose-single-node.yaml" restart


> docker compose -f "docker-compose-single-node.yaml" up -d --build

> # command to be run before starting kafka in kraft mode(any docker compose files without zookeeper)
> .\<kraft|mm2>\generate_env.bat

# Test

## Commands
> docker run -it --name consumer --net=kafka-tryout_kafka-network confluentinc/cp-kafka:7.3.1 kafka-console-consumer --bootstrap-server broker-1:29092 --topic kafka.docker.test --from-beginning --group console-test-group
>
> docker run -it --name producer --net=kafka-tryout_kafka-network confluentinc/cp-kafka:7.3.1 kafka-console-producer --bootstrap-server broker-1:29092 --topic kafka.docker.test
>
> docker run -it --name describe_topic --net=kafka-tryout_kafka-network confluentinc/cp-kafka:7.3.1 kafka-topics --describe --topic kafka.docker.test --bootstrap-server broker-1:29092
>
> docker run -it --name describe_group --net=kafka-tryout_kafka-network confluentinc/cp-kafka:7.3.1 kafka-consumer-groups --describe --group console-test-group --bootstrap-server broker-1:29092
>
> docker run -it --name create_topic --net=kafka-tryout_kafka-network confluentinc/cp-kafka:7.3.1 kafka-topics --create --topic kafka.docker.create.test --partitions 3 --replication-factor 2 --bootstrap-server broker-1:29092
> 
> docker container prune -f
>
