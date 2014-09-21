name             'wordpress'
maintainer       'YOUR_COMPANY_NAME'
maintainer_email 'YOUR_EMAIL'
license          'All rights reserved'
description      'Installs/Configures wordpress'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.2.5'

depends		 'os-hardening', '= 1.1.2'
depends		 'logrotate', '~> 1.7.0'
depends		 'mysql', '~> 5.5.2'
depends		 'database', '~> 2.3.0'
depends		 'sshd', '~> 1.1.1'
depends		 'timezone-ii', '~> 0.2.0'