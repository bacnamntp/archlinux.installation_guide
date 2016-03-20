<VirtualHost virtual-dev.com:80>
    ServerAdmin bacnamntp@gmail.com
    DocumentRoot "/home/bacnamntp/virtual-dev.com/nhathuocxuanly/public"
    ServerName virtual-dev.com
    ServerAlias virtual-dev.com
    ErrorLog "/home/bacnamntp/virtual-dev.com/logs/error_log"
    CustomLog "/home/bacnamntp/virtual-dev.com/logs/access_log" common

    <Directory "/home/bacnamntp/virtual-dev.com/nhathuocxuanly/public">
	AllowOverride All
        Require all granted
    </Directory>
</VirtualHost>
