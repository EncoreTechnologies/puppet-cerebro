# @summary Configures Cerebro
#
# @api private
#
class cerebro::config (
  String                      $secret              = $cerebro::secret,
  Array[Struct[{
        host => Stdlib::HTTPUrl,
        name => String[1]
  }]]                         $hosts               = $cerebro::hosts,
  Variant[Pattern[/^\/$/],
  Stdlib::Unixpath]           $basepath            = $cerebro::basepath,
  Optional[Stdlib::Unixpath]  $java_home           = $cerebro::java_home,
  Array[String[1]]            $java_opts           = $cerebro::java_opts,
  Optional[Hash]              $basic_auth_settings = $cerebro::basic_auth_settings,
  Stdlib::Unixpath            $sysconfig           = $cerebro::sysconfig,
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
