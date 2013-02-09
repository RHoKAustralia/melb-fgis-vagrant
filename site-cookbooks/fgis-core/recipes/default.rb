#
# Cookbook Name:: fgis-core
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#
include_recipe "git::default"

execute "Install fgis from source" do
  command <<-SCRIPT
    mkdir -p /opt/apps/
    rm -rf /opt/apps/fgis-core
    git clone https://github.com/rhok-melbourne/fgis-core.git /opt/apps/fgis-core
    cd /opt/apps/fgis-core
    npm install
    npm install -g bower
    bower install
    nohup node app.js &
  SCRIPT
  action :run
end
