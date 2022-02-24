class grafana (
                $manage_package        = true,
                $package_ensure        = 'installed',
                $manage_service        = true,
                $manage_docker_service = true,
                $service_ensure        = 'running',
                $service_enable        = true,
              ) inherits grafana::params{

  class { '::grafana::install': }
  -> class { '::grafana::config': }
  ~> class { '::grafana::service': }
  -> Class['::grafana']

}
