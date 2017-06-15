#package 'cowsay' do
#  action :install
#end

package 'tree' do
  action :install
end

package 'git' do
  action :install
end

file '/etc/motd' do
  content "Property of ...
  IPADDRERSS: #{node['ipaddress']}
  HOSTNAME:  #{node['hostname']}
  MEMORY:  #{node['memory']['total']}
  CPU:  #{node['cpu']['0']['mhz']}"
end
