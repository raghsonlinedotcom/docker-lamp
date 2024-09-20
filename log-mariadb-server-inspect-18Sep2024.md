[
    {
        "Id": "0d62abeb7ca84960384478d841b835ccf7ccb049de748e59e4c52c9362ba1f69",
        "Created": "2024-09-18T12:19:31.669425258Z",
        "Path": "docker-entrypoint.sh",
        "Args": [
            "mariadbd"
        ],
        "State": {
            "Status": "running",
            "Running": true,
            "Paused": false,
            "Restarting": false,
            "OOMKilled": false,
            "Dead": false,
            "Pid": 7984,
            "ExitCode": 0,
            "Error": "",
            "StartedAt": "2024-09-18T12:19:31.7241713Z",
            "FinishedAt": "0001-01-01T00:00:00Z"
        },
        "Image": "sha256:6a73600e45a7f1c28b03fe7331377899efaa6bd4c78e973c55c661d8c05dd1fd",
        "ResolvConfPath": "/var/lib/docker/containers/0d62abeb7ca84960384478d841b835ccf7ccb049de748e59e4c52c9362ba1f69/resolv.conf",
        "HostnamePath": "/var/lib/docker/containers/0d62abeb7ca84960384478d841b835ccf7ccb049de748e59e4c52c9362ba1f69/hostname",
        "HostsPath": "/var/lib/docker/containers/0d62abeb7ca84960384478d841b835ccf7ccb049de748e59e4c52c9362ba1f69/hosts",
        "LogPath": "/var/lib/docker/containers/0d62abeb7ca84960384478d841b835ccf7ccb049de748e59e4c52c9362ba1f69/0d62abeb7ca84960384478d841b835ccf7ccb049de748e59e4c52c9362ba1f69-json.log",
        "Name": "/docker-lamp-mariadb-server",
        "RestartCount": 0,
        "Driver": "overlay2",
        "Platform": "linux",
        "MountLabel": "",
        "ProcessLabel": "",
        "AppArmorProfile": "",
        "ExecIDs": null,
        "HostConfig": {
            "Binds": [
                "/Users/raghavan.muthu/raghs/prfsnl/github-repos/docker-lamp/db:/docker-entrypoint-initdb.d:rw",
                "/Users/raghavan.muthu/raghs/prfsnl/github-repos/docker-lamp/mysql:/var/lib/mysql:rw"
            ],
            "ContainerIDFile": "",
            "LogConfig": {
                "Type": "json-file",
                "Config": {}
            },
            "NetworkMode": "docker-lamp_lamp-network",
            "PortBindings": {
                "3306/tcp": [
                    {
                        "HostIp": "",
                        "HostPort": "3366"
                    }
                ]
            },
            "RestartPolicy": {
                "Name": "no",
                "MaximumRetryCount": 0
            },
            "AutoRemove": false,
            "VolumeDriver": "",
            "VolumesFrom": null,
            "ConsoleSize": [
                0,
                0
            ],
            "CapAdd": null,
            "CapDrop": null,
            "CgroupnsMode": "private",
            "Dns": null,
            "DnsOptions": null,
            "DnsSearch": null,
            "ExtraHosts": [],
            "GroupAdd": null,
            "IpcMode": "private",
            "Cgroup": "",
            "Links": null,
            "OomScoreAdj": 0,
            "PidMode": "",
            "Privileged": false,
            "PublishAllPorts": false,
            "ReadonlyRootfs": false,
            "SecurityOpt": null,
            "UTSMode": "",
            "UsernsMode": "",
            "ShmSize": 67108864,
            "Runtime": "runc",
            "Isolation": "",
            "CpuShares": 0,
            "Memory": 0,
            "NanoCpus": 0,
            "CgroupParent": "",
            "BlkioWeight": 0,
            "BlkioWeightDevice": null,
            "BlkioDeviceReadBps": null,
            "BlkioDeviceWriteBps": null,
            "BlkioDeviceReadIOps": null,
            "BlkioDeviceWriteIOps": null,
            "CpuPeriod": 0,
            "CpuQuota": 0,
            "CpuRealtimePeriod": 0,
            "CpuRealtimeRuntime": 0,
            "CpusetCpus": "",
            "CpusetMems": "",
            "Devices": null,
            "DeviceCgroupRules": null,
            "DeviceRequests": null,
            "MemoryReservation": 0,
            "MemorySwap": 0,
            "MemorySwappiness": null,
            "OomKillDisable": null,
            "PidsLimit": null,
            "Ulimits": null,
            "CpuCount": 0,
            "CpuPercent": 0,
            "IOMaximumIOps": 0,
            "IOMaximumBandwidth": 0,
            "MaskedPaths": [
                "/proc/asound",
                "/proc/acpi",
                "/proc/kcore",
                "/proc/keys",
                "/proc/latency_stats",
                "/proc/timer_list",
                "/proc/timer_stats",
                "/proc/sched_debug",
                "/proc/scsi",
                "/sys/firmware",
                "/sys/devices/virtual/powercap"
            ],
            "ReadonlyPaths": [
                "/proc/bus",
                "/proc/fs",
                "/proc/irq",
                "/proc/sys",
                "/proc/sysrq-trigger"
            ]
        },
        "GraphDriver": {
            "Data": {
                "LowerDir": "/var/lib/docker/overlay2/f98b3f77a83b34c600fd3c0cc6eacdcff06bd03fe320f7f2df0b0dae956f4dd6-init/diff:/var/lib/docker/overlay2/05fe7db3c493ebace7f76713bfbf2cef94e4221ec6cf963f4c77e0141cc78049/diff:/var/lib/docker/overlay2/9dcf0fd0e1bee32d9a7baad1d20ff6a14122e7fff4abd61ebb5cb35b0bed58b0/diff:/var/lib/docker/overlay2/b5d1baf47bee4b5192c6dbfa810474021a09720d4e677b62daa1c4790e0daffe/diff:/var/lib/docker/overlay2/adf9e41a0083ac0b27d199bf65cb4a368b184b810ee052135a2693c1d617ddd1/diff:/var/lib/docker/overlay2/c91200e84852e5fd3db6ef5f201d0f719f078a87ec84c86ea28847d80acbfa32/diff:/var/lib/docker/overlay2/abdda0cc4872705ef2840fca58d0817aff32c4507a70086b41dfb7ae25c557df/diff:/var/lib/docker/overlay2/6f297d80195802c5dfea84b5194c4a586929641d0ceac211d7e72a417ca6093a/diff:/var/lib/docker/overlay2/1a8069235cdda96dc384e6f5b631d09ecb9191be72cca6092c6573f33c663e37/diff",
                "MergedDir": "/var/lib/docker/overlay2/f98b3f77a83b34c600fd3c0cc6eacdcff06bd03fe320f7f2df0b0dae956f4dd6/merged",
                "UpperDir": "/var/lib/docker/overlay2/f98b3f77a83b34c600fd3c0cc6eacdcff06bd03fe320f7f2df0b0dae956f4dd6/diff",
                "WorkDir": "/var/lib/docker/overlay2/f98b3f77a83b34c600fd3c0cc6eacdcff06bd03fe320f7f2df0b0dae956f4dd6/work"
            },
            "Name": "overlay2"
        },
        "Mounts": [
            {
                "Type": "bind",
                "Source": "/Users/raghavan.muthu/raghs/prfsnl/github-repos/docker-lamp/db",
                "Destination": "/docker-entrypoint-initdb.d",
                "Mode": "rw",
                "RW": true,
                "Propagation": "rprivate"
            },
            {
                "Type": "bind",
                "Source": "/Users/raghavan.muthu/raghs/prfsnl/github-repos/docker-lamp/mysql",
                "Destination": "/var/lib/mysql",
                "Mode": "rw",
                "RW": true,
                "Propagation": "rprivate"
            }
        ],
        "Config": {
            "Hostname": "0d62abeb7ca8",
            "Domainname": "",
            "User": "",
            "AttachStdin": false,
            "AttachStdout": true,
            "AttachStderr": true,
            "ExposedPorts": {
                "3306/tcp": {}
            },
            "Tty": false,
            "OpenStdin": false,
            "StdinOnce": false,
            "Env": [
                "MYSQL_DATABASE=mydb",
                "MYSQL_USER=user",
                "MYSQL_PASSWORD=userpassword",
                "MYSQL_ROOT_PASSWORD=rootpassword",
                "PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin",
                "GOSU_VERSION=1.14",
                "LANG=C.UTF-8",
                "MARIADB_VERSION=1:11.0.2+maria~ubu2204"
            ],
            "Cmd": [
                "mariadbd"
            ],
            "Image": "mariadb:latest",
            "Volumes": {
                "/var/lib/mysql": {}
            },
            "WorkingDir": "",
            "Entrypoint": [
                "docker-entrypoint.sh"
            ],
            "OnBuild": null,
            "Labels": {
                "com.docker.compose.config-hash": "ea7087c7d9b0e42e709a741ec1403be93c7bd6bc63c0f5775306507db7a0f9e3",
                "com.docker.compose.container-number": "1",
                "com.docker.compose.depends_on": "",
                "com.docker.compose.image": "sha256:6a73600e45a7f1c28b03fe7331377899efaa6bd4c78e973c55c661d8c05dd1fd",
                "com.docker.compose.oneoff": "False",
                "com.docker.compose.project": "docker-lamp",
                "com.docker.compose.project.config_files": "/Users/raghavan.muthu/raghs/prfsnl/github-repos/docker-lamp/docker-compose.yml",
                "com.docker.compose.project.working_dir": "/Users/raghavan.muthu/raghs/prfsnl/github-repos/docker-lamp",
                "com.docker.compose.service": "mysql",
                "com.docker.compose.version": "2.29.2",
                "org.opencontainers.image.authors": "MariaDB Community",
                "org.opencontainers.image.base.name": "docker.io/library/ubuntu:jammy",
                "org.opencontainers.image.description": "MariaDB Database for relational SQL",
                "org.opencontainers.image.documentation": "https://hub.docker.com/_/mariadb/",
                "org.opencontainers.image.licenses": "GPL-2.0",
                "org.opencontainers.image.ref.name": "ubuntu",
                "org.opencontainers.image.source": "https://github.com/MariaDB/mariadb-docker",
                "org.opencontainers.image.title": "MariaDB Database",
                "org.opencontainers.image.url": "https://github.com/MariaDB/mariadb-docker",
                "org.opencontainers.image.vendor": "MariaDB Community",
                "org.opencontainers.image.version": "11.0.2"
            }
        },
        "NetworkSettings": {
            "Bridge": "",
            "SandboxID": "1e2648a3485ee85c5f36fee729a56ff210773904f5c036924e6597e7aa03fb48",
            "SandboxKey": "/var/run/docker/netns/1e2648a3485e",
            "Ports": {
                "3306/tcp": [
                    {
                        "HostIp": "0.0.0.0",
                        "HostPort": "3366"
                    }
                ]
            },
            "HairpinMode": false,
            "LinkLocalIPv6Address": "",
            "LinkLocalIPv6PrefixLen": 0,
            "SecondaryIPAddresses": null,
            "SecondaryIPv6Addresses": null,
            "EndpointID": "",
            "Gateway": "",
            "GlobalIPv6Address": "",
            "GlobalIPv6PrefixLen": 0,
            "IPAddress": "",
            "IPPrefixLen": 0,
            "IPv6Gateway": "",
            "MacAddress": "",
            "Networks": {
                "docker-lamp_lamp-network": {
                    "IPAMConfig": null,
                    "Links": null,
                    "Aliases": [
                        "docker-lamp-mariadb-server",
                        "mysql"
                    ],
                    "MacAddress": "02:42:ac:16:00:03",
                    "DriverOpts": null,
                    "NetworkID": "c7dfc69660b4a8fe3d4c977b2e6ac25c3783ec0eaf49a4c879ef1609a7202750",
                    "EndpointID": "9fc5f0189df9737a483928200f0e8ad4668bbc86bf0ccb29406837b0bed5e01a",
                    "Gateway": "172.22.0.1",
                    "IPAddress": "172.22.0.3",
                    "IPPrefixLen": 16,
                    "IPv6Gateway": "",
                    "GlobalIPv6Address": "",
                    "GlobalIPv6PrefixLen": 0,
                    "DNSNames": [
                        "docker-lamp-mariadb-server",
                        "mysql",
                        "0d62abeb7ca8"
                    ]
                }
            }
        }
    }
]
