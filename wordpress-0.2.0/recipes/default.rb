#
# Cookbook Name:: wordpress
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#include_recipe "wordpress-0.2.0::sophos"
#include_recipe "wordpress-0.2.0::apache+wordpress" 
#include_recipe "wordpress-0.2.0::mysql"
#include_recipe "wordpress-0.2.0::os-hardening"
include_recipe "wordpress-0.2.0::timezone"
#include_recipe "wordpress-0.2.0::logrotate"
#include_recipe "wordpress-0.2.0::disableiptables"

