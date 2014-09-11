include_recipe "os-hardening"

['desktop']['enable'] = false
['network']['forwarding'] = false
['network']['ipv6']['enable'] = false
['network']['arp']['restricted'] = true
['env']['umask'] = "027"
['env']['root_path'] = "/"
['auth']['pw_max_age'] = 60
['auth']['pw_min_age'] = 7
['auth']['retries'] = 5
['auth']['lockout_time'] = 600
['auth']['timeout'] = 60
['auth']['allow_homeless'] = false
['auth']['pam']['passwdqc']['enable'] = true
['security']['kernel']['enable_module_loading'] = true
['security']['kernel']['enable_sysrq'] = false
['security']['kernel']['enable_core_dump'] = false
['security']['suid_sgid']['enforce'] = true
['security']['suid_sgid']['remove_from_unkown'] = false
['security']['suid_sgid']['dry_run_on_unkown'] = false
['security']['packages']['clean'] = true