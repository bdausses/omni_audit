default['audit']['fetcher'] = 'chef-server-automate'
default['audit']['reporter'] = 'chef-server-automate'

# Linux
if node['os'] == 'linux'

  # Amazon Linux 2
  if node['platform'] == 'amazon'
    if node['platform_version'] == "2"
      default['audit']['profiles'] = [
        {
          name: 'CIS Amazon Linux 2 Benchmark Level 1',
          compliance: 'admin/cis-amazonlinux2-level1',
        },
      ]
    end
  end

  # CentOS
  if node['platform'] == 'centos'
    # Centos 6
    if node[:platform_version][0] == "6"
      default['audit']['profiles'] = [
        {
          name: 'CIS CentOS 6 - Level 1 - Server',
          compliance: 'admin/cis-centos6-level1',
        },
      ]
    # Centos 7
    elsif node[:platform_version][0] == "7"
      default['audit']['profiles'] = [
        {
          name: 'CIS CentOS 7 - Level 1 - Server',
          compliance: 'admin/cis-centos7-level1',
        },
      ]
    end

  # Redhat
  elsif node['platform'] == 'redhat'
    # Redhat 6
    if node[:platform_version][0] == "6"
      default['audit']['profiles'] = [
        {
          name: 'CIS Redhat 6 - Level 1 - Server',
          compliance: 'admin/cis-rhel6-level1',
        },
      ]
    # Redhat 7
    elsif node[:platform_version][0] == "7"
      default['audit']['profiles'] = [
        {
          name: 'CIS Redhat 7 - Level 1 - Server',
          compliance: 'admin/cis-rhel7-level1-server',
        },
      ]
    end

  # SUSE Linux Enterprise
  elsif node['platform'] == 'suse'
    # SLES 11
    if node['platform_version'] =~ /11.*/
      default['audit']['profiles'] = [
        {
          name: 'CIS SUSE Linux Enterprise Server 11 Benchmark Level 1',
          compliance: 'admin/cis-sles11-level1',
        },
      ]
    # SLES 12
    elsif node['platform_version'] =~ /12.*/
      default['audit']['profiles'] = [
        {
          name: 'CIS SUSE Linux Enterprise Server 12 Benchmark Level 1',
          compliance: 'admin/cis-sles12-level1',
        },
      ]
    end

  # Ubuntu
  elsif node['platform'] == 'ubuntu'
    # Ubuntu 16.04
    if node['platform_version'] == "16.04"
      default['audit']['profiles'] = [
        {
          name: 'CIS Ubuntu 16.04 - Level 1 - Server',
          compliance: 'admin/cis-ubuntu16.04lts-level1-server',
        },
      ]
    # Ubuntu 18.04
    elsif node['platform_version'] == "18.04"
      default['audit']['profiles'] = [
        {
          name: 'CIS Ubuntu Linux 18.04 LTS Benchmark Level 1 - Server',
          compliance: 'admin/cis-ubuntu18.04lts-level1-server',
        },
      ]
    end
  end

# Windows
elsif node['os'] == 'windows'
  default['audit']['profiles'] = [
    {
      name: 'Windows Baseline',
      compliance: 'leela/windows_baseline_wrapper',
    },
  ]
end
