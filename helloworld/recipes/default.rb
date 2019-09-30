#
# Cookbook:: helloworld
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.




# install redis
package 'redis-server' do
    action :install
end
  

# installation should already enable and start the service
service 'redis-server' do
    action [:enable, :start]
end


#Chef::Log.info("********** Searching for master IP: #{instance['public_ip']} **********")
