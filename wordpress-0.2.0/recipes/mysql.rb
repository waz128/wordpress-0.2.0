$global_variable = mypass
class myPass
   
        def random_password(length=10)
          CHARS = ('0'..'9').to_a + ('A'..'Z').to_a + ('a'..'z').to_a
          CHARS.sort_by { rand }.join[0...length]
        end
end

if platform_family?("centos", "rhel")

  package "mysql-server" do
      action :install
    end

    service "mysqld" do
      supports :status => true, :restart => true, :reload => true
      action [:start ]
    end

    execute "assign-root-password" do
      CHARS = ('0'..'9').to_a + ('A'..'Z').to_a + ('a'..'z').to_a
      def random_password(length=10)
        CHARS.sort_by { rand }.join[0...length]
      end
      $myPass = random_password
      action :run
      command "/usr/bin/mysqladmin -u root password '#{myPass}'"
      #echo '#{myPass}' > /tmp/mysqlrootpass.txt"
    end

    service "mysqld" do
      supports :status => true, :restart => true, :reload => true
      action [:enable]
    end

end