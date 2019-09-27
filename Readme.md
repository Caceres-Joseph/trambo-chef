# Install


## Install chef in docker
1. apt-get update
2. apt-get install curl -y
3. curl https://omnitruck.chef.io/install.sh | sudo bash -s -- -P chef-workstation -c stable -v 0.2.41


## run docker 
```
docker run -it -v C:\Users\Notebook\learn-chef:/root/chef-repo -p 8100:80 ubuntu:14.04 /bin/bash
```

# Cookbook

## Terms
**package:** Used to manage packages on a node \
**service:** Used to manage services on a node \
**user:** Manage users on the node \
**group:** Manage groups \
**template:** Manage files with embedded ruby templates \
**cookbook_file:** Transfer files from the files subdirectory in the cookbook to a location on the node \
**file:** Manage contents of a file on node \
**directory:** Manage directories on node \
**execute:** Execute a command on the node  
**cron:** Edit an existing cron file on the node 



## Create a cookbook
```
chef generate cookbook cookbook_rubi
```

## Add the Cookbook to your Node
Now that our basic cookbooks are complete, we can upload them to our chef server.

We can do that individually by typing:
```
knife cookbook upload apt
knife cookbook upload nginx
```
Or, we can upload everything by typing:
```
knife cookbook upload -a
```