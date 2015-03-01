define system_v::init_script(
    $start_levels = '2345',
    $start_priority = '85',
    $end_priority = '15',
    $description = $name,
    $script = $name,
    $user = 'root',
    $cwd = '/',
    $lockfile = "/var/lock/subsys/${name}",
    $start = "${name} start",
    $stop = "${name} stop",
    $status = "${name} status"
) {
    file { "/etc/init.d/${name}":
        content => template('system_v/scripts.sh.erb'),
        owner   => 'root',
        group   => 'root',
        mode    => '0755',
    }
}
