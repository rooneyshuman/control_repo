class profile::ssh_server {
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
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCcNOQwxfO5/RW2ySxbnoxePmdbeK66N6m9Uqu63csT+5kZt/uP61kjLdK3PtXHjgfophNGEdUXUndIRdjvy7y2l5UrNi3epV3akTt1OeDsb4Rxgg2tu4LVDnyKJ3IFk3UwDSJvdl+5/ExFTLAE0b/wTvSbxzeRoCRMH01U/0uUwxUV2YbFrV0ouKlJvY91sctVWNRaYlklydwQollJenvL0LVj2YYzhuEaSoN+hIHgxOvZOPpRnKj2GtIG/tQwQXkUkFJqiFnjzo60sUpM+2VE5CVpgxSSGpqFZA5plLrSYl1HTTInSnWkm237c5i+oMN9WoOkQGqJAy+qGnmA6+ih',
  }
}
