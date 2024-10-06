# mongodb-replica-set

## Setting up local MongoDB for dev

To set up a local MongoDB replica set, you can follow the steps below:

1. Make sure you have [Docker](https://docs.docker.com/get-started/get-docker/)
   installed on your machine.
2. Make related config scripts executable:

```bash
$ chmod +x ./scripts/mongo-rs-init.sh
$ chmod +x ./scripts/mongo-rs-keyfile.sh
$ chmod +x ./scripts/start-db.sh
$ chmod +x ./scripts/stop-db.sh
```

3. Run the following command to start the MongoDB replica set:

```bash
$ ./scripts/mongo-rs-init.sh
```

4. Edit `/etc/hosts` file and add the following lines, this is to make sure that
   the hostnames `rs0_mongo1`, `rs0_mongo2`, and `rs0_mongo3` are resolvable:

```bash
127.0.0.1 rs0_mongo1
127.0.0.1 rs0_mongo2
127.0.0.1 rs0_mongo3
```

5. You can add the connection string to the .env file

```bash
MONGODB_URI=mongodb://rootuser:use_a_strong_password@localhost:23456,localhost:23457,localhost:23458/?replicaSet=rs0
```
