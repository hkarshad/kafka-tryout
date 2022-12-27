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

# Test

## Commands
> docker run -it --name consumer --net=kafka-tryout_kafka-network confluentinc/cp-kafka:7.3.1 kafka-console-consumer --bootstrap-server broker-1:29091 --topic kafka.docker.test --from-beginning --group console-test-group
>
> docker run -it --name producer --net=kafka-tryout_kafka-network confluentinc/cp-kafka:7.3.1 kafka-console-producer --bootstrap-server broker-1:29091 --topic kafka.docker.test
