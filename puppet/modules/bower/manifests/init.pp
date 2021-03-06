# bower
class bower ($node_version = 'v4.0.0') {
    exec { 'node':
        command => "curl -SL https://nodejs.org/dist/${node_version}/node-${node_version}-linux-x64.tar.gz | tar -xz -C /usr/local --strip-components=1",
        creates => '/usr/local/bin/node',
    }
    ->
    package { 'bower':
        ensure   => installed,
        provider => npm,
    }
}
