# @summary Configures Cerebro
#
# @api private
#
class cerebro::config (
  String                $secret              = $cerebro::secret,
  Stdlib::Host          $hosts               = $cerebro::hosts,
  Stdlib::Absolutepath  $basepath            = $cerebro::basepath,
  Stdlib::Absolutepath  $java_home           = $cerebro::java_home,
  Array[String[1]]      $java_opts           = $cerebro::java_opts,
  Optional[Hash]        $basic_auth_settings = $cerebro::basic_auth_settings,
  Stdlib::Absolutepath  $sysconfig           = $cerebro::sysconfig,
) {
  file { '/etc/cerebro/application.conf':
    ensure  => file,
    content => template('cerebro/etc/cerebro/application.conf.erb'),
  }
  file { $sysconfig:
    ensure  => file,
    mode    => '0644',
    content => template('cerebro/etc/sysconfig/cerebro.erb'),
  }
}
