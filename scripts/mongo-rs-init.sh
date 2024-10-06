#!/bin/bash

mongosh -u rootuser -p use_a_strong_password --host rs0_mongo1:23456 <<EOF
var config = {
    "_id": "rs0",
    "members": [
        {
            "_id": 1,
            "host": "rs0_mongo1:23456",
            "priority": 2
        },
        {
            "_id": 2,
            "host": "rs0_mongo2:23457",
            "priority": 1
        },
        {
            "_id": 3,
            "host": "rs0_mongo3:23458",
            "priority": 1
        }
    ]
};
rs.initiate(config);
rs.status();
EOF