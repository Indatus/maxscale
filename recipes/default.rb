#provisions base packages for a node
node['maxscale']['packages'].each do |pkg| 
  package pkg 
end

dir = node['maxscale']['install_dir']

execute "install-maxscale" do
  archive = node['maxscale']['archive']
  command "mkdir -p #{dir} && cd #{dir} && curl https://downloads.skysql.com/files/SkySQL/MaxScale/#{archive} > #{archive} && mkdir maxscale && tar zxf #{archive} -C maxscale"
  action :run
  not_if File.exists?(File.join([dir, 'maxscale']))
end

template File.join([dir, 'maxscale', 'maxstart.sh']) do
  source "maxstart.sh.erb"
  mode "751"
  owner "root"
  group "root"
end


template File.join([dir, 'maxscale', 'MaxScale', 'etc', 'MaxScale.cnf']) do
  source "MaxScale.cnf.erb"
  mode "751"
  owner "root"
  group "root"
end