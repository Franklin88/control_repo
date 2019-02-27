node default {
  file {'/root/README':
    ensure => file,
    content => "This is a README file\n",
    owner => 'root',
    mode => '0600',
  }
}
