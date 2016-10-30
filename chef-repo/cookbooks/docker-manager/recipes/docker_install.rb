package 'docker' do
  action :install
end

group 'docker' do
  members 'vagrant'
  action :create
  append true
end

service 'docker' do
  supports status: true, restart: true, reload: true
  action [:enable, :start]
end
