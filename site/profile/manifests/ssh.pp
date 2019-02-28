class profile::ssh {
   package { 'openssh-server':
     ensure => present,
   }
   service { 'sshd':
     ensure => 'running',
     enable => 'true',
   }
   ssh_authorized_key { 'root@master.puppet.vm':
     ensure => present,
     user   => 'root',
     type   => 'ssh-rsa',
     key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDf78qRQr/sv74MZiBodiEB3mzTfyZUTvGEB+FXfL3NcCfr1m8QQu5V+sXNsj+M2X+eXI73KxQgaNVOmaimEe8ueMXO3JDQUClezLT7/CZQCTDDg0Py0YbdKbH6ubB2Y1W5iFEhA5VdfNoemOq8O5iv033wPbKOuawDxdVHR7qDK8qjkhGdzss7IDTZng8ujw8c6o0DdlwYYLEY+d0G2VtvMdlRlTqbOUKGrqhib7pWkPxTo6g06teL+h/zKbXRrZZHtyOpCdbB5WvQOoG9mMSsc0bd6LUnNSFMv4uHA0SpKP2pawvZ+BzboougXiw31zsRkQU2Trb3OnoERzK3dGxJ',
  }
}
