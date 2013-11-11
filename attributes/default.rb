default["diamond"]["install_method"] = "package"
default["diamond"]["graphite_server_role"] = nil
default["diamond"]["graphite_server"] = "graphite"
default["diamond"]["path_prefix"] = "servers"
default["diamond"]["interval"] = "10"
default["diamond"]["handlers"] = "diamond.handler.graphite.GraphiteHandler, diamond.handler.archive.ArchiveHandler"
default["diamond"]["source_repository"] = "git://github.com/BrightcoveOS/Diamond.git"
default["diamond"]["source_path"] = "/usr/local/share/diamond_src"
default["diamond"]["source_reference"] = 'HEAD'
default['diamond']['add_collectors'] = ['cpu', 'diskspace', 'diskusage', 'loadavg', 'memory', 'network', 'vmstat', 'tcp']
case node["platform_family"]
  when "debian"
    default["diamond"]["version"] = '3.4.49'
  when "rhel"
    default["diamond"]["version"] = '3.4.49-0'
  else
    default["diamond"]["install_method"] = "source"
end
