redis-cluster Cookbook
===============================
This cookbook will install and configure redis-server and redis-sentinel. This is quick proof of concept, the next step would be to consolidate master and slave recipe using different OpsWorks databags search.

Requirements
------------
This cookbook is written for OpsWorks (Chef 12 flavor) as uses Chef search against AWS OpsWorks databags to retrieve IP address of master node.

Usage
-----
#### redis-cluster::master
Installs redis-server and redis-sentinel with this node as master. redis-sentinel configuration will initially monitor this node.

#### redis-cluster::slave
Installs redis-server and redis-sentinel with this node as a slave. redis-server configuration will include slaveof and point to the master node. 

License and Authors
-------------------
Authors: Ed Bartholomew
