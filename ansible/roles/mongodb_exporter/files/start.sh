#!/bin/bash -xe

listCollections="routingOperationsDB.cached_transactions,routingOperationsDB.tasks,routingOperationsDB.transactions,riderequestdb.rideRequestDoc"
/usr/local/bin/mongodb_exporter \
  --web.listen-address=":9216" \
  --mongodb.uri=mongodb://127.0.0.1:27017 \
  --mongodb.collstats-colls=$listCollections
