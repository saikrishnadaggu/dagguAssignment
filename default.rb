package "httpd" do 
	action :install
end

service "httpd" do
	action [:enable, :start]
end

execute "touch /var/www/html/index.html"
execute "echo '<html>' >> /var/www/html/index.html"
execute "echo '<head>' >> /var/www/html/index.html"
execute "echo '<title>Hello World</title>' >> /var/www/html/index.html"
execute "echo '</head>' >> /var/www/html/index.html"
execute "echo '<body>' >> /var/www/html/index.html"
execute "echo '<h1>Hello World!</h1>' >> /var/www/html/index.html"
execute "echo '</body>' >> /var/www/html/index.html"
execute "echo '</html>' >> /var/www/html/index.html"

service "httpd" do 
	action :restart
end

