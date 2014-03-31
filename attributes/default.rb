#defines base packages
default['maxscale']['packages'] = %w(curl vim git-core ntp unzip nfs-utils nfs-utils-lib bc)

#directory where MaxScale will be installed
default['maxscale']['install_dir'] = "/usr/local/skysql"

#archive to download and install from SkySQL
default['maxscale']['archive'] = "maxscale.preview.0.4.tar.gz"

# array of hashes, each hash will represent key/value settings for the server
# expected keys are type, address, port, and protocol. Example
# type = server
# address = IP / DNS name
# port = port number
# protocol = mySQLBackend
default['maxscale']['servers'] = []



##############################################################
#############[ CONFIG SECTION ]###############################
##############################################################

#thread config
default['maxscale']['threads']                      = 1

#monitor config
default['maxscale']['monitor']['enabled']           = true
default['maxscale']['monitor']['type']              = 'monitor'
default['maxscale']['monitor']['module']            = 'galeramon'
default['maxscale']['monitor']['user']              = 'galeramon_user'
default['maxscale']['monitor']['passwd']            = 'galeramon_pass'

#galera service config
default['maxscale']['galera_svc']['enabled']           = true
default['maxscale']['galera_svc']['type']           = 'service'
default['maxscale']['galera_svc']['router']         = 'readconnroute'
default['maxscale']['galera_svc']['router_options'] = 'synced'
default['maxscale']['galera_svc']['user']           = 'galera_svc_user'
default['maxscale']['galera_svc']['passwd']         = 'galera_svc_pass'

#httpd router config
default['maxscale']['httpd_router']['enabled']      = true
default['maxscale']['httpd_router']['router']       = 'testroute'

#debug cli config
default['maxscale']['debug']['enabled']             = true
default['maxscale']['debug']['router']              = 'debugcli'

# galera listener config
default['maxscale']['galera_listener']['enabled']   = true
default['maxscale']['galera_listener']['protocol']  = 'MySQLClient'
default['maxscale']['galera_listener']['port']      = '3336'

# debug listener config
default['maxscale']['debug_listener']['enabled']    = true
default['maxscale']['debug_listener']['protocol']   = 'telnetd'
default['maxscale']['debug_listener']['port']       = '4442'

#httpd listener config
default['maxscale']['httpd_listener']['enabled']    = true
default['maxscale']['httpd_listener']['protocol']   = 'HTTPD'
default['maxscale']['httpd_listener']['port']       = '6444'