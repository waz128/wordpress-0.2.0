include_recipe "ntp"

node.override['ntp']['servers'] = '0.amazon.pool.ntp.org', '1.amazon.pool.ntp.org','2.amazon.pool.ntp.org', '3.amazon.pool.ntp.org', 'waztest.poo.ntp.org'

