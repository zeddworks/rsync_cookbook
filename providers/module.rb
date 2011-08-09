action :create do
  module_name = new_resource.module_name
  path = new_resource.path
  comment = new_resource.comment
  uid = new_resource.uid
  gid = new_resource.gid

  template "/etc/rsync.d/#{module_name}.conf" do
    source "rsyncd-module.erb"
    mode "0755"
    cookbook "rsync"
    variables({
      :module_name => module_name,
      :path => path,
      :comment => comment,
      :uid => uid,
      :gid => gid
    })
    notifies :run, resources(:script => "enable_rsync"), :delayed
  end
end
