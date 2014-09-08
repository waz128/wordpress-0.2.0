#
# Cookbook Name:: wordpress
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
include_recipe "wordpress-0.2.0::mysql"


package "php55" do
	action :install
end

package "php55-mysqlnd" do
	action :install
end

service "httpd" do
	supports :status => true, :restart => true, :reload => true
	action [ :enable, :start ]
end

remote_file "/var/www/html/wordpress-4.0-en_CA.tar.gz" do
  mode "0644"
  source "http://en-ca.wordpress.org/wordpress-4.0-en_CA.tar.gz"
end

bash "wordpress-4.0-en_CA.tar.gz" do
	user "root"
	cwd "/var/www/html"
	code <<-EOH
	tar -zxvf wordpress-4.0-en_CA.tar.gz
	cp -R wordpress/* /var/www/html
	rm -rf /var/www/html/wordpress
	rm -rf /var/www/html/wordpress-4.0-en_CA.tar.gz
	EOH
end

service "httpd" do
	supports :status => true, :restart => true, :reload => true
	action [ :reload ]
end
