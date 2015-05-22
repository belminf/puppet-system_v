define system_v::init_app(
    $proc,
    $options,
    $pid_file = "/var/run/${name}.pid",
    $stdout_log = "/var/log/${name}.log",
    $stderr_log = "/var/log/${name}.log",
    $user = 'root',
) {
    file { "/etc/init.d/${name}":
        content => template('system_v/app.sh.erb'),
        owner   => 'root',
        group   => 'root',
        mode    => '0755',
    }
}
