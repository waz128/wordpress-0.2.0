node.override['desktop']['enable'] = true
node.override['network']['forwarding'] = true
default['network']['ipv6']['enable'] = true
default['network']['arp']['restricted'] = true
#default['env']['umask'] = "027"
#default['env']['root_path'] = "/"
#default['auth']['pw_max_age'] = 60
#default['auth']['pw_min_age'] = 7
#default['auth']['retries'] = 5
#default['auth']['lockout_time'] = 600
#default['auth']['timeout'] = 60
default['auth']['allow_homeless'] = true
default['auth']['pam']['passwdqc']['enable'] = true
default['security']['kernel']['enable_module_loading'] = true
default['security']['kernel']['enable_sysrq'] = false
default['security']['kernel']['enable_core_dump'] = false
default['security']['suid_sgid']['enforce'] = false
default['security']['packages']['clean'] = false