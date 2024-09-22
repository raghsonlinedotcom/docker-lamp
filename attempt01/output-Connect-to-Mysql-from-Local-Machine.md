# Connect to MySQL from the local machine

* Install `mariadb` as the `mysql` was not present/available 
* Later it was available in the same path

```md
───────┴───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
mysql -uroot -p -P3366 -h127.0.0.1
zsh: command not found: mysql
mariadb -uroot -p -P3366 -A -h127.0.0.1
zsh: command not found: mariadb
whereis mariadb
mariadb:
which mariadb
mariadb not found
brew install mariadb
==> Downloading https://formulae.brew.sh/api/formula.jws.json
############################################################################################################################################################ 100.0%
==> Downloading https://formulae.brew.sh/api/cask.jws.json
############################################################################################################################################################ 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/mariadb/manifests/11.5.2
############################################################################################################################################################ 100.0%
==> Fetching dependencies for mariadb: mecab, mecab-ipadic, msgpack, groonga and lz4
==> Downloading https://ghcr.io/v2/homebrew/core/mecab/manifests/0.996-4
############################################################################################################################################################ 100.0%
==> Fetching mecab
==> Downloading https://ghcr.io/v2/homebrew/core/mecab/blobs/sha256:b442dff5851dc2e529a82d84a59b135e6f79ba6af1f295589e776aa2439d71f6
############################################################################################################################################################ 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/mecab-ipadic/manifests/2.7.0-20070801-1
############################################################################################################################################################ 100.0%
==> Fetching mecab-ipadic
==> Downloading https://ghcr.io/v2/homebrew/core/mecab-ipadic/blobs/sha256:2ab9a752833b99a87201dc1217e3774ca21aac1a87971dac1196bed13d1b428a
############################################################################################################################################################ 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/msgpack/manifests/6.1.0
############################################################################################################################################################ 100.0%
==> Fetching msgpack
==> Downloading https://ghcr.io/v2/homebrew/core/msgpack/blobs/sha256:7a4291f35809d557ff65bdec687fc12468b557d8c27499fad634b84fc27c6a65
############################################################################################################################################################ 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/groonga/manifests/14.0.7
############################################################################################################################################################ 100.0%
==> Fetching groonga
==> Downloading https://ghcr.io/v2/homebrew/core/groonga/blobs/sha256:1939364b135a0ceddca4d16d07544c1dba11e2153994915bd3ab9ae07c445197
############################################################################################################################################################ 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/lz4/manifests/1.10.0-1
############################################################################################################################################################ 100.0%
==> Fetching lz4
==> Downloading https://ghcr.io/v2/homebrew/core/lz4/blobs/sha256:6590245dc4a919c46afa16366914cd4b5c0c4a8f4fb35a4f6ab89053f289ae5d
############################################################################################################################################################ 100.0%
==> Fetching mariadb
==> Downloading https://ghcr.io/v2/homebrew/core/mariadb/blobs/sha256:cda6f1a3253d69bc36dadff3cd9ed8e3c91795eb392c9f7b1a4ea0b63c19a8e3
############################################################################################################################################################ 100.0%
==> Installing dependencies for mariadb: mecab, mecab-ipadic, msgpack, groonga and lz4
==> Installing mariadb dependency: mecab
==> Downloading https://ghcr.io/v2/homebrew/core/mecab/manifests/0.996-4
Already downloaded: /Users/raghavan.muthu/Library/Caches/Homebrew/downloads/c3b1ce288999bf20be4e6f931edd01876367bd1046d2d7979b68eb3e5f2315f9--mecab-0.996-4.bottle_manifest.json
==> Pouring mecab--0.996.arm64_sonoma.bottle.4.tar.gz
🍺  /opt/homebrew/Cellar/mecab/0.996: 19 files, 4.1MB
==> Installing mariadb dependency: mecab-ipadic
==> Downloading https://ghcr.io/v2/homebrew/core/mecab-ipadic/manifests/2.7.0-20070801-1
Already downloaded: /Users/raghavan.muthu/Library/Caches/Homebrew/downloads/daa8ae338ff2bd6c9d5e70d7b50f6571f1dd831848ea35ad632cd3ceb14917f6--mecab-ipadic-2.7.0-20070801-1.bottle_manifest.json
==> Pouring mecab-ipadic--2.7.0-20070801.arm64_sonoma.bottle.1.tar.gz
🍺  /opt/homebrew/Cellar/mecab-ipadic/2.7.0-20070801: 15 files, 50.6MB
==> Installing mariadb dependency: msgpack
==> Downloading https://ghcr.io/v2/homebrew/core/msgpack/manifests/6.1.0
Already downloaded: /Users/raghavan.muthu/Library/Caches/Homebrew/downloads/64deb06ebbeaaf491c089ce032ab47d3a2fd7017a0d42f92620a8feed75d9e28--msgpack-6.1.0.bottle_manifest.json
==> Pouring msgpack--6.1.0.arm64_sonoma.bottle.tar.gz
🍺  /opt/homebrew/Cellar/msgpack/6.1.0: 39 files, 226.2KB
==> Installing mariadb dependency: groonga
==> Downloading https://ghcr.io/v2/homebrew/core/groonga/manifests/14.0.7
Already downloaded: /Users/raghavan.muthu/Library/Caches/Homebrew/downloads/ab5133380440bfbedae1630a4893d7a4d77e5e4bed25776dfd3c3839ab40ea93--groonga-14.0.7.bottle_manifest.json
==> Pouring groonga--14.0.7.arm64_sonoma.bottle.tar.gz
🍺  /opt/homebrew/Cellar/groonga/14.0.7: 902 files, 88.3MB
==> Installing mariadb dependency: lz4
==> Downloading https://ghcr.io/v2/homebrew/core/lz4/manifests/1.10.0-1
Already downloaded: /Users/raghavan.muthu/Library/Caches/Homebrew/downloads/8e11e90eb21a06e0f199af9d80e011e3693c77dd353b2477579d95c8471a5802--lz4-1.10.0-1.bottle_manifest.json
==> Pouring lz4--1.10.0.arm64_sonoma.bottle.1.tar.gz
🍺  /opt/homebrew/Cellar/lz4/1.10.0: 24 files, 714.2KB
==> Installing mariadb
==> Pouring mariadb--11.5.2.arm64_sonoma.bottle.tar.gz
==> /opt/homebrew/Cellar/mariadb/11.5.2/bin/mysql_install_db --verbose --user=raghavan.muthu --basedir=/opt/homebrew/Cellar/mariadb/11.5.2 --datadir=/opt/homebrew/
==> Caveats
A "/etc/my.cnf" from another install may interfere with a Homebrew-built
server starting up correctly.

MySQL is configured to only allow connections from localhost by default

To start mariadb now and restart at login:
  brew services start mariadb
Or, if you don't want/need a background service you can just run:
  /opt/homebrew/opt/mariadb/bin/mariadbd-safe --datadir\=/opt/homebrew/var/mysql
==> Summary
🍺  /opt/homebrew/Cellar/mariadb/11.5.2: 948 files, 212.9MB
==> Running `brew cleanup mariadb`...
Disable this behaviour by setting HOMEBREW_NO_INSTALL_CLEANUP.
Hide these hints with HOMEBREW_NO_ENV_HINTS (see `man brew`).
==> Upgrading 12 dependents of upgraded formulae:
Disable this behaviour by setting HOMEBREW_NO_INSTALLED_DEPENDENTS_CHECK.
Hide these hints with HOMEBREW_NO_ENV_HINTS (see `man brew`).
aom 3.9.1 -> 3.10.0, composer 2.7.7 -> 2.7.9, curl 8.9.1 -> 8.10.0, gradle 8.9 -> 8.10.1, groovy 4.0.22 -> 4.0.23, jpeg-xl 0.10.3 -> 0.11.0, libarchive 3.7.4 -> 3.7.5, ffmpeg 7.0.2 -> 7.0.2_1, maven 3.9.8 -> 3.9.9, php 8.3.10 -> 8.3.11, postgresql@14 14.12 -> 14.13, tomcat 10.1.26 -> 10.1.30
==> Downloading https://ghcr.io/v2/homebrew/core/libarchive/manifests/3.7.5
############################################################################################################################################################ 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/curl/manifests/8.10.0-1
############################################################################################################################################################ 100.0%
==> Fetching dependencies for curl: libnghttp2 and openssl@3
==> Downloading https://ghcr.io/v2/homebrew/core/libnghttp2/manifests/1.63.0
############################################################################################################################################################ 100.0%
==> Fetching libnghttp2
==> Downloading https://ghcr.io/v2/homebrew/core/libnghttp2/blobs/sha256:8d8295aef078f83d3a316d20cb8feae89bb8cd84bbb53b3c3b66dd178aa92101
############################################################################################################################################################ 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/openssl/3/manifests/3.3.2
############################################################################################################################################################ 100.0%
==> Fetching openssl@3
==> Downloading https://ghcr.io/v2/homebrew/core/openssl/3/blobs/sha256:df4760f0256178172f6193d8bb6c4cbeffd78ac646926ad345c5170331c5d55c
############################################################################################################################################################ 100.0%
==> Fetching curl
==> Downloading https://ghcr.io/v2/homebrew/core/curl/blobs/sha256:55c7257e15917f412d8dc643f1ebe78d45852b5d21adf6c9bd57aaef10b66a59
############################################################################################################################################################ 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/gradle/manifests/8.10.1
############################################################################################################################################################ 100.0%
==> Fetching dependencies for gradle: freetype, readline, sqlite, python@3.12 and cairo
==> Downloading https://ghcr.io/v2/homebrew/core/freetype/manifests/2.13.3
############################################################################################################################################################ 100.0%
==> Fetching freetype
==> Downloading https://ghcr.io/v2/homebrew/core/freetype/blobs/sha256:939f90de3dd92919020832ba03d6617a0d2ec9a8e185f6a2c518f149c7b299f4
############################################################################################################################################################ 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/readline/manifests/8.2.13
############################################################################################################################################################ 100.0%
==> Fetching readline
==> Downloading https://ghcr.io/v2/homebrew/core/readline/blobs/sha256:e46d4ff0c800dd35b9d5cef74e61ade54edc0834231f35c695af206bed9e3608
############################################################################################################################################################ 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/sqlite/manifests/3.46.1
############################################################################################################################################################ 100.0%
==> Fetching sqlite
==> Downloading https://ghcr.io/v2/homebrew/core/sqlite/blobs/sha256:ea8ee59ee1cf5599778ed5ce03f118dfc96cc814f0a8aefa059502101ee45c7c
############################################################################################################################################################ 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/python/3.12/manifests/3.12.6
############################################################################################################################################################ 100.0%
==> Fetching python@3.12
==> Downloading https://ghcr.io/v2/homebrew/core/python/3.12/blobs/sha256:00871488a4207f0265eab8e339146f63874e7454487169e819a1e4a5bd13a62b
############################################################################################################################################################ 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/cairo/manifests/1.18.2
############################################################################################################################################################ 100.0%
==> Fetching cairo
==> Downloading https://ghcr.io/v2/homebrew/core/cairo/blobs/sha256:8d7d5bc22a123340ce7092b9bf1438ce8e959157e38b784226f48b616a76122a
############################################################################################################################################################ 100.0%
==> Fetching gradle
==> Downloading https://ghcr.io/v2/homebrew/core/gradle/blobs/sha256:c9932cfacbdb888c1666c13327d7870115a5b2e621819e365491aa5468f56a85
############################################################################################################################################################ 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/groovy/manifests/4.0.23
############################################################################################################################################################ 100.0%
==> Fetching dependencies for groovy: glib
==> Downloading https://ghcr.io/v2/homebrew/core/glib/manifests/2.82.0
############################################################################################################################################################ 100.0%
==> Fetching glib
==> Downloading https://ghcr.io/v2/homebrew/core/glib/blobs/sha256:4047dfc944e3dc37dfe960135d7db67ab8c8422ed311787d894cae93dba02b37
############################################################################################################################################################ 100.0%
==> Fetching groovy
==> Downloading https://ghcr.io/v2/homebrew/core/groovy/blobs/sha256:b99325a58df4b5eace82bbfcd4b5b0fb8ca4535949dd708b54363989756562cf
############################################################################################################################################################ 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/jpeg-xl/manifests/0.11.0
############################################################################################################################################################ 100.0%
==> Fetching dependencies for jpeg-xl: imath and libpng
==> Downloading https://ghcr.io/v2/homebrew/core/imath/manifests/3.1.12
############################################################################################################################################################ 100.0%
==> Fetching imath
==> Downloading https://ghcr.io/v2/homebrew/core/imath/blobs/sha256:787f2525c5b53bb1153e265774555f2a39c350bf927ce32fdb675987db179776
############################################################################################################################################################ 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/libpng/manifests/1.6.44
############################################################################################################################################################ 100.0%
==> Fetching libpng
==> Downloading https://ghcr.io/v2/homebrew/core/libpng/blobs/sha256:04c7ef0bb97718b8388e93e0e0f6a3e361da422b7f63f2a1f2bbb8ddb92da119
############################################################################################################################################################ 100.0%
==> Fetching jpeg-xl
==> Downloading https://ghcr.io/v2/homebrew/core/jpeg-xl/blobs/sha256:d3c74c5e1251537f657139d522c679101aa27ef9adcc502b67a2c65d4e566cd1
############################################################################################################################################################ 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/aom/manifests/3.10.0
############################################################################################################################################################ 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/ffmpeg/manifests/7.0.2_1
############################################################################################################################################################ 100.0%
==> Fetching dependencies for ffmpeg: aom, unbound, mbedtls, libssh, mpg123, sdl2 and svt-av1
==> Downloading https://ghcr.io/v2/homebrew/core/aom/manifests/3.10.0
Already downloaded: /Users/raghavan.muthu/Library/Caches/Homebrew/downloads/ffe58ac9efb04f3e766ec87512b3531691610e969746c7db293ecd7c6db7b076--aom-3.10.0.bottle_manifest.json
==> Fetching aom
==> Downloading https://ghcr.io/v2/homebrew/core/aom/blobs/sha256:64ae34cc94bd038a3c2072757a794b5eb04084a937fba9caf522c8a752454c14
############################################################################################################################################################ 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/unbound/manifests/1.21.0
############################################################################################################################################################ 100.0%
==> Fetching unbound
==> Downloading https://ghcr.io/v2/homebrew/core/unbound/blobs/sha256:7d736a54f65236d835cb7d8b5c57389fedf36f0d8e73d3d0d2c3571132a36b7b
############################################################################################################################################################ 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/mbedtls/manifests/3.6.1
############################################################################################################################################################ 100.0%
==> Fetching mbedtls
==> Downloading https://ghcr.io/v2/homebrew/core/mbedtls/blobs/sha256:85ebbef174334a956d09467ae5f96664a80ddff5e4907d29b19f6dba93312323
############################################################################################################################################################ 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/libssh/manifests/0.11.1
############################################################################################################################################################ 100.0%
==> Fetching libssh
==> Downloading https://ghcr.io/v2/homebrew/core/libssh/blobs/sha256:0a6184ee3bcd7d1ef5deb30a1534d04a90ba4f6070eddd5a05fe75b9acc20ea1
############################################################################################################################################################ 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/mpg123/manifests/1.32.7
############################################################################################################################################################ 100.0%
==> Fetching mpg123
==> Downloading https://ghcr.io/v2/homebrew/core/mpg123/blobs/sha256:5bbad58b97fa3ac74819960781bc299b10157ab61532d25f938980a29865a021
############################################################################################################################################################ 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/sdl2/manifests/2.30.7
############################################################################################################################################################ 100.0%
==> Fetching sdl2
==> Downloading https://ghcr.io/v2/homebrew/core/sdl2/blobs/sha256:4e63f83af8ccbf1cd9b261892dcbc588181d5443e7252447bd3db97f9a736ad3
############################################################################################################################################################ 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/svt-av1/manifests/2.2.1
############################################################################################################################################################ 100.0%
==> Fetching svt-av1
==> Downloading https://ghcr.io/v2/homebrew/core/svt-av1/blobs/sha256:c6286d14ed2e49b1258acc3c3a5f6eb8139ba6cbd99b72f4a9ee33704a7d3db5
############################################################################################################################################################ 100.0%
==> Fetching ffmpeg
==> Downloading https://ghcr.io/v2/homebrew/core/ffmpeg/blobs/sha256:afadd6a7d7698e1bb21bff339c787e8fef3e9678d29b2f4c8e09713527b96b4a
############################################################################################################################################################ 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/maven/manifests/3.9.9
############################################################################################################################################################ 100.0%
==> Fetching maven
==> Downloading https://ghcr.io/v2/homebrew/core/maven/blobs/sha256:106bdaaec0342b1656442dd5d1521b3edf69df22576726110bf1d56af0d4bfef
############################################################################################################################################################ 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/php/manifests/8.3.11
############################################################################################################################################################ 100.0%
==> Fetching dependencies for php: apr and libpq
==> Downloading https://ghcr.io/v2/homebrew/core/apr/manifests/1.7.5
############################################################################################################################################################ 100.0%
==> Fetching apr
==> Downloading https://ghcr.io/v2/homebrew/core/apr/blobs/sha256:d4ddf068fd1c071ac911af823e5b7b6de2a4506a1812e95bc9505c844b5524fe
############################################################################################################################################################ 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/libpq/manifests/16.4
############################################################################################################################################################ 100.0%
==> Fetching libpq
==> Downloading https://ghcr.io/v2/homebrew/core/libpq/blobs/sha256:5cba324d7dbc763dc432f818202484e06ec870bfaf715ad19ca6871dc7b75c05
############################################################################################################################################################ 100.0%
==> Fetching php
==> Downloading https://ghcr.io/v2/homebrew/core/php/blobs/sha256:56e783e27c6457b98471348dde7821c49712174386f0d97709894351d6e5f1c1
############################################################################################################################################################ 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/postgresql/14/manifests/14.13
############################################################################################################################################################ 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/tomcat/manifests/10.1.30
############################################################################################################################################################ 100.0%
==> Fetching dependencies for tomcat: jpeg-turbo
==> Downloading https://ghcr.io/v2/homebrew/core/jpeg-turbo/manifests/3.0.4
############################################################################################################################################################ 100.0%
==> Fetching jpeg-turbo
==> Downloading https://ghcr.io/v2/homebrew/core/jpeg-turbo/blobs/sha256:e936777455b6cb66819a7db9f4396dfd4d0b8c7b0d700ea28213780b16c2dac1
############################################################################################################################################################ 100.0%
==> Fetching tomcat
==> Downloading https://ghcr.io/v2/homebrew/core/tomcat/blobs/sha256:5e280a06f5c9d113ebcaae62fc11dafdbb2233a619e72007704ebd52e736ff3b
############################################################################################################################################################ 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/composer/manifests/2.7.9
############################################################################################################################################################ 100.0%
==> Fetching composer
==> Downloading https://ghcr.io/v2/homebrew/core/composer/blobs/sha256:c3a13e9e93b6f820869237b0b7f0c6ca860328fc8b99a1e1bb53e950f6f4c833
############################################################################################################################################################ 100.0%
==> Upgrading curl
  8.9.1 -> 8.10.0
==> Installing dependencies for curl: libnghttp2 and openssl@3
==> Installing curl dependency: libnghttp2
==> Downloading https://ghcr.io/v2/homebrew/core/libnghttp2/manifests/1.63.0
Already downloaded: /Users/raghavan.muthu/Library/Caches/Homebrew/downloads/e63c5bc0f458327f00ee55e74895b72e64faad010393790efba6fc3e26689285--libnghttp2-1.63.0.bottle_manifest.json
==> Pouring libnghttp2--1.63.0.arm64_sonoma.bottle.tar.gz
🍺  /opt/homebrew/Cellar/libnghttp2/1.63.0: 14 files, 805.2KB
==> Installing curl dependency: openssl@3
==> Downloading https://ghcr.io/v2/homebrew/core/openssl/3/manifests/3.3.2
Already downloaded: /Users/raghavan.muthu/Library/Caches/Homebrew/downloads/15a43beab5e5017b1a9fe7584ff44a48195632fd196c23ee0e5e7ecf67e9ef2a--openssl@3-3.3.2.bottle_manifest.json
==> Pouring openssl@3--3.3.2.arm64_sonoma.bottle.tar.gz
🍺  /opt/homebrew/Cellar/openssl@3/3.3.2: 6,984 files, 32.5MB
==> Installing curl
==> Pouring curl--8.10.0.arm64_sonoma.bottle.1.tar.gz
🍺  /opt/homebrew/Cellar/curl/8.10.0: 530 files, 4MB
==> Running `brew cleanup curl`...
Removing: /opt/homebrew/Cellar/curl/8.9.1... (529 files, 4.3MB)
Removing: /Users/raghavan.muthu/Library/Caches/Homebrew/curl_bottle_manifest--8.9.1... (18.9KB)
==> Upgrading gradle
  8.9 -> 8.10.1
==> Installing dependencies for gradle: freetype, readline, sqlite, python@3.12 and cairo
==> Installing gradle dependency: freetype
==> Downloading https://ghcr.io/v2/homebrew/core/freetype/manifests/2.13.3
Already downloaded: /Users/raghavan.muthu/Library/Caches/Homebrew/downloads/4c4d14d574a7af9a5a0220cd5012c698bd87b75a3d5e39a6a6c34b4c411aab52--freetype-2.13.3.bottle_manifest.json
==> Pouring freetype--2.13.3.arm64_sonoma.bottle.tar.gz
🍺  /opt/homebrew/Cellar/freetype/2.13.3: 68 files, 2.5MB
==> Installing gradle dependency: readline
==> Downloading https://ghcr.io/v2/homebrew/core/readline/manifests/8.2.13
Already downloaded: /Users/raghavan.muthu/Library/Caches/Homebrew/downloads/aa1afa38997a2866d91c81fdda8b36d436cd4ea7a82aed07d13c83c56eb3460e--readline-8.2.13.bottle_manifest.json
==> Pouring readline--8.2.13.arm64_sonoma.bottle.tar.gz
🍺  /opt/homebrew/Cellar/readline/8.2.13: 51 files, 1.7MB
==> Installing gradle dependency: sqlite
==> Downloading https://ghcr.io/v2/homebrew/core/sqlite/manifests/3.46.1
Already downloaded: /Users/raghavan.muthu/Library/Caches/Homebrew/downloads/b34f1b968c8d3adc8763b7151754bc4f348c94372d89d1ae23cd11b643b7bdb2--sqlite-3.46.1.bottle_manifest.json
==> Pouring sqlite--3.46.1.arm64_sonoma.bottle.tar.gz
🍺  /opt/homebrew/Cellar/sqlite/3.46.1: 12 files, 4.8MB
==> Installing gradle dependency: python@3.12
==> Downloading https://ghcr.io/v2/homebrew/core/python/3.12/manifests/3.12.6
Already downloaded: /Users/raghavan.muthu/Library/Caches/Homebrew/downloads/510a95d974bb22d4b9f5b64df55324e8bd6677d522c6a22630cd284c22f730eb--python@3.12-3.12.6.bottle_manifest.json
==> Pouring python@3.12--3.12.6.arm64_sonoma.bottle.tar.gz
==> /opt/homebrew/Cellar/python@3.12/3.12.6/bin/python3.12 -Im ensurepip
==> /opt/homebrew/Cellar/python@3.12/3.12.6/bin/python3.12 -Im pip install -v --no-index --upgrade --isolated --target=/opt/homebrew/lib/python3.12/site-packages /
🍺  /opt/homebrew/Cellar/python@3.12/3.12.6: 3,263 files, 65.3MB
==> Installing gradle dependency: cairo
==> Downloading https://ghcr.io/v2/homebrew/core/cairo/manifests/1.18.2
Already downloaded: /Users/raghavan.muthu/Library/Caches/Homebrew/downloads/9d3ab10478bcceef6fbed69d1a4f387b5d996a592bb1ccbf33e560e3d2d5e103--cairo-1.18.2.bottle_manifest.json
==> Pouring cairo--1.18.2.arm64_sonoma.bottle.tar.gz
🍺  /opt/homebrew/Cellar/cairo/1.18.2: 53 files, 2.2MB
==> Installing gradle
==> Pouring gradle--8.10.1.arm64_sonoma.bottle.tar.gz
🍺  /opt/homebrew/Cellar/gradle/8.10.1: 21,892 files, 449.1MB
==> Running `brew cleanup gradle`...
Removing: /opt/homebrew/Cellar/gradle/8.9... (21,772 files, 446MB)
Removing: /Users/raghavan.muthu/Library/Caches/Homebrew/gradle_bottle_manifest--8.9... (37.7KB)
Removing: /Users/raghavan.muthu/Library/Caches/Homebrew/gradle--8.9... (187.3MB)
==> Upgrading groovy
  4.0.22 -> 4.0.23
==> Installing dependencies for groovy: glib
==> Installing groovy dependency: glib
==> Downloading https://ghcr.io/v2/homebrew/core/glib/manifests/2.82.0
Already downloaded: /Users/raghavan.muthu/Library/Caches/Homebrew/downloads/0d960c4d394de6412ef4288dc6997ba290b07282eaef7746a2c54907599b4def--glib-2.82.0.bottle_manifest.json
==> Pouring glib--2.82.0.arm64_sonoma.bottle.tar.gz
🍺  /opt/homebrew/Cellar/glib/2.82.0: 526 files, 36.5MB
==> Installing groovy
==> Pouring groovy--4.0.23.arm64_sonoma.bottle.tar.gz
==> Caveats
You should set GROOVY_HOME:
  export GROOVY_HOME=/opt/homebrew/opt/groovy/libexec
==> Summary
🍺  /opt/homebrew/Cellar/groovy/4.0.23: 100 files, 24.2MB
==> Running `brew cleanup groovy`...
Removing: /opt/homebrew/Cellar/groovy/4.0.22... (100 files, 24MB)
Removing: /Users/raghavan.muthu/Library/Caches/Homebrew/groovy_bottle_manifest--4.0.22... (41.1KB)
==> Upgrading jpeg-xl
  0.10.3 -> 0.11.0
==> Installing dependencies for jpeg-xl: imath and libpng
==> Installing jpeg-xl dependency: imath
==> Downloading https://ghcr.io/v2/homebrew/core/imath/manifests/3.1.12
Already downloaded: /Users/raghavan.muthu/Library/Caches/Homebrew/downloads/6afdf93c912565e828ad2386867db9e96b58441f29b901492560bcde9e8a22ad--imath-3.1.12.bottle_manifest.json
==> Pouring imath--3.1.12.arm64_sonoma.bottle.tar.gz
🍺  /opt/homebrew/Cellar/imath/3.1.12: 50 files, 947.2KB
==> Installing jpeg-xl dependency: libpng
==> Downloading https://ghcr.io/v2/homebrew/core/libpng/manifests/1.6.44
Already downloaded: /Users/raghavan.muthu/Library/Caches/Homebrew/downloads/0e089cec124a817e140dfc78aba6887ae650dd4fefe1d55d5b516a872f8007b5--libpng-1.6.44.bottle_manifest.json
==> Pouring libpng--1.6.44.arm64_sonoma.bottle.tar.gz
🍺  /opt/homebrew/Cellar/libpng/1.6.44: 28 files, 1.3MB
==> Installing jpeg-xl
==> Pouring jpeg-xl--0.11.0.arm64_sonoma.bottle.tar.gz
🍺  /opt/homebrew/Cellar/jpeg-xl/0.11.0: 64 files, 32.4MB
==> Running `brew cleanup jpeg-xl`...
Removing: /opt/homebrew/Cellar/jpeg-xl/0.10.3... (63 files, 28.3MB)
Removing: /Users/raghavan.muthu/Library/Caches/Homebrew/jpeg-xl_bottle_manifest--0.10.3... (23.0KB)
==> Upgrading ffmpeg
  7.0.2 -> 7.0.2_1
==> Installing dependencies for ffmpeg: aom, unbound, mbedtls, libssh, mpg123, sdl2 and svt-av1
==> Installing ffmpeg dependency: aom
==> Downloading https://ghcr.io/v2/homebrew/core/aom/manifests/3.10.0
Already downloaded: /Users/raghavan.muthu/Library/Caches/Homebrew/downloads/ffe58ac9efb04f3e766ec87512b3531691610e969746c7db293ecd7c6db7b076--aom-3.10.0.bottle_manifest.json
==> Pouring aom--3.10.0.arm64_sonoma.bottle.tar.gz
🍺  /opt/homebrew/Cellar/aom/3.10.0: 24 files, 10MB
==> Installing ffmpeg dependency: unbound
==> Downloading https://ghcr.io/v2/homebrew/core/unbound/manifests/1.21.0
Already downloaded: /Users/raghavan.muthu/Library/Caches/Homebrew/downloads/22330ea41f3a660a77910097fecae561e200ec458b58e3f0130d0c08333b1284--unbound-1.21.0.bottle_manifest.json
==> Pouring unbound--1.21.0.arm64_sonoma.bottle.tar.gz
🍺  /opt/homebrew/Cellar/unbound/1.21.0: 59 files, 6.0MB
==> Installing ffmpeg dependency: mbedtls
==> Downloading https://ghcr.io/v2/homebrew/core/mbedtls/manifests/3.6.1
Already downloaded: /Users/raghavan.muthu/Library/Caches/Homebrew/downloads/d40da23c8d5098a89de939b1183996cd2d04cd22ea893bc18fbf7a75a4e88921--mbedtls-3.6.1.bottle_manifest.json
==> Pouring mbedtls--3.6.1.arm64_sonoma.bottle.tar.gz
🍺  /opt/homebrew/Cellar/mbedtls/3.6.1: 200 files, 13.2MB
==> Installing ffmpeg dependency: libssh
==> Downloading https://ghcr.io/v2/homebrew/core/libssh/manifests/0.11.1
Already downloaded: /Users/raghavan.muthu/Library/Caches/Homebrew/downloads/3591f41514c0ebe698a36753dce13e71fa33363993429a04af0da249f1eea04c--libssh-0.11.1.bottle_manifest.json
==> Pouring libssh--0.11.1.arm64_sonoma.bottle.tar.gz
🍺  /opt/homebrew/Cellar/libssh/0.11.1: 25 files, 1.4MB
==> Installing ffmpeg dependency: mpg123
==> Downloading https://ghcr.io/v2/homebrew/core/mpg123/manifests/1.32.7
Already downloaded: /Users/raghavan.muthu/Library/Caches/Homebrew/downloads/cafa152604dcb33d6bed294a9e4b23e4db617e9351612e3f3f64d890b20a185e--mpg123-1.32.7.bottle_manifest.json
==> Pouring mpg123--1.32.7.arm64_sonoma.bottle.tar.gz
🍺  /opt/homebrew/Cellar/mpg123/1.32.7: 34 files, 2.0MB
==> Installing ffmpeg dependency: sdl2
==> Downloading https://ghcr.io/v2/homebrew/core/sdl2/manifests/2.30.7
Already downloaded: /Users/raghavan.muthu/Library/Caches/Homebrew/downloads/200de509c09359b3b745c94dc554cb591669c2b5cf4f0aec61ff826dd8ed3385--sdl2-2.30.7.bottle_manifest.json
==> Pouring sdl2--2.30.7.arm64_sonoma.bottle.tar.gz
🍺  /opt/homebrew/Cellar/sdl2/2.30.7: 94 files, 6.5MB
==> Installing ffmpeg dependency: svt-av1
==> Downloading https://ghcr.io/v2/homebrew/core/svt-av1/manifests/2.2.1
Already downloaded: /Users/raghavan.muthu/Library/Caches/Homebrew/downloads/e1f7fa7df6b4356a14476bb12b653142e30f54c6c27bef01cffc75c85234db88--svt-av1-2.2.1.bottle_manifest.json
==> Pouring svt-av1--2.2.1.arm64_sonoma.bottle.tar.gz
🍺  /opt/homebrew/Cellar/svt-av1/2.2.1: 19 files, 2.9MB
==> Installing ffmpeg
==> Pouring ffmpeg--7.0.2_1.arm64_sonoma.bottle.tar.gz
🍺  /opt/homebrew/Cellar/ffmpeg/7.0.2_1: 287 files, 51.8MB
==> Running `brew cleanup ffmpeg`...
Removing: /opt/homebrew/Cellar/ffmpeg/7.0.2... (287 files, 51.8MB)
Removing: /Users/raghavan.muthu/Library/Caches/Homebrew/ffmpeg_bottle_manifest--7.0.2... (95.2KB)
==> Upgrading maven
  3.9.8 -> 3.9.9
==> Pouring maven--3.9.9.arm64_sonoma.bottle.tar.gz
🍺  /opt/homebrew/Cellar/maven/3.9.9: 94 files, 10.2MB
==> Running `brew cleanup maven`...
Removing: /opt/homebrew/Cellar/maven/3.9.8... (94 files, 10.2MB)
Removing: /Users/raghavan.muthu/Library/Caches/Homebrew/maven_bottle_manifest--3.9.8... (37.4KB)
==> Upgrading php
  8.3.10 -> 8.3.11
==> Installing dependencies for php: apr and libpq
==> Installing php dependency: apr
==> Downloading https://ghcr.io/v2/homebrew/core/apr/manifests/1.7.5
Already downloaded: /Users/raghavan.muthu/Library/Caches/Homebrew/downloads/3ccc12316b52e5273d7562dbae3c2d6cb1b68b52874c8fd2ce69f4c0eafc07c0--apr-1.7.5.bottle_manifest.json
==> Pouring apr--1.7.5.arm64_sonoma.bottle.tar.gz
🍺  /opt/homebrew/Cellar/apr/1.7.5: 60 files, 1.4MB
==> Installing php dependency: libpq
==> Downloading https://ghcr.io/v2/homebrew/core/libpq/manifests/16.4
Already downloaded: /Users/raghavan.muthu/Library/Caches/Homebrew/downloads/15305c6812ed3b99c93fbb293e70c514240f51c7266838b2cd84a83ec0fffe7c--libpq-16.4.bottle_manifest.json
==> Pouring libpq--16.4.arm64_sonoma.bottle.tar.gz
🍺  /opt/homebrew/Cellar/libpq/16.4: 2,384 files, 29.7MB
==> Installing php
==> Pouring php--8.3.11.arm64_sonoma.bottle.tar.gz
==> /opt/homebrew/Cellar/php/8.3.11/bin/pear config-set php_ini /opt/homebrew/etc/php/8.3/php.ini system
==> /opt/homebrew/Cellar/php/8.3.11/bin/pear config-set php_dir /opt/homebrew/share/pear system
==> /opt/homebrew/Cellar/php/8.3.11/bin/pear config-set doc_dir /opt/homebrew/share/pear/doc system
==> /opt/homebrew/Cellar/php/8.3.11/bin/pear config-set ext_dir /opt/homebrew/lib/php/pecl/20230831 system
==> /opt/homebrew/Cellar/php/8.3.11/bin/pear config-set bin_dir /opt/homebrew/opt/php/bin system
==> /opt/homebrew/Cellar/php/8.3.11/bin/pear config-set data_dir /opt/homebrew/share/pear/data system
==> /opt/homebrew/Cellar/php/8.3.11/bin/pear config-set cfg_dir /opt/homebrew/share/pear/cfg system
==> /opt/homebrew/Cellar/php/8.3.11/bin/pear config-set www_dir /opt/homebrew/share/pear/htdocs system
==> /opt/homebrew/Cellar/php/8.3.11/bin/pear config-set man_dir /opt/homebrew/share/man system
==> /opt/homebrew/Cellar/php/8.3.11/bin/pear config-set test_dir /opt/homebrew/share/pear/test system
==> /opt/homebrew/Cellar/php/8.3.11/bin/pear config-set php_bin /opt/homebrew/opt/php/bin/php system
==> /opt/homebrew/Cellar/php/8.3.11/bin/pear update-channels
🍺  /opt/homebrew/Cellar/php/8.3.11: 524 files, 88.8MB
==> Running `brew cleanup php`...
Removing: /opt/homebrew/Cellar/php/8.3.10... (524 files, 88.8MB)
Removing: /Users/raghavan.muthu/Library/Caches/Homebrew/php_bottle_manifest--8.3.10... (57.3KB)
==> Upgrading tomcat
  10.1.26 -> 10.1.30
==> Installing dependencies for tomcat: jpeg-turbo
==> Installing tomcat dependency: jpeg-turbo
==> Downloading https://ghcr.io/v2/homebrew/core/jpeg-turbo/manifests/3.0.4
Already downloaded: /Users/raghavan.muthu/Library/Caches/Homebrew/downloads/2a3630ffd65db74be2c3c6104929548e1a0e8f2c82583e0732016f49b52b2c13--jpeg-turbo-3.0.4.bottle_manifest.json
==> Pouring jpeg-turbo--3.0.4.arm64_sonoma.bottle.tar.gz
🍺  /opt/homebrew/Cellar/jpeg-turbo/3.0.4: 45 files, 3.4MB
==> Installing tomcat
==> Pouring tomcat--10.1.30.all.bottle.tar.gz
==> Caveats
Configuration files: /opt/homebrew/etc/tomcat

To start tomcat now and restart at login:
  brew services start tomcat
Or, if you don't want/need a background service you can just run:
  /opt/homebrew/opt/tomcat/bin/catalina run
==> Summary
🍺  /opt/homebrew/Cellar/tomcat/10.1.30: 646 files, 17.5MB
==> Running `brew cleanup tomcat`...
Removing: /opt/homebrew/Cellar/tomcat/10.1.26... (634 files, 16.7MB)
Removing: /Users/raghavan.muthu/Library/Caches/Homebrew/tomcat_bottle_manifest--10.1.26... (37.9KB)
==> Upgrading composer
  2.7.7 -> 2.7.9
==> Pouring composer--2.7.9.arm64_sonoma.bottle.tar.gz
🍺  /opt/homebrew/Cellar/composer/2.7.9: 4 files, 2.9MB
==> Running `brew cleanup composer`...
Removing: /opt/homebrew/Cellar/composer/2.7.7... (4 files, 2.9MB)
Removing: /Users/raghavan.muthu/Library/Caches/Homebrew/composer_bottle_manifest--2.7.7-1... (52.0KB)
==> Checking for dependents of upgraded formulae...
==> Reinstalling 1 dependent with broken linkage from source:
exa
Error: exa has been disabled because it is not maintained upstream! It was disabled on 2024-01-24.
==> Caveats
==> mariadb
A "/etc/my.cnf" from another install may interfere with a Homebrew-built
server starting up correctly.

MySQL is configured to only allow connections from localhost by default

To start mariadb now and restart at login:
  brew services start mariadb
Or, if you don't want/need a background service you can just run:
  /opt/homebrew/opt/mariadb/bin/mariadbd-safe --datadir\=/opt/homebrew/var/mysql
==> groovy
You should set GROOVY_HOME:
  export GROOVY_HOME=/opt/homebrew/opt/groovy/libexec
==> tomcat
Configuration files: /opt/homebrew/etc/tomcat

To start tomcat now and restart at login:
  brew services start tomcat
Or, if you don't want/need a background service you can just run:
  /opt/homebrew/opt/tomcat/bin/catalina run
brew cleanup composer
whereis mysql
mysql: /opt/homebrew/bin/mysql /opt/homebrew/share/man/man1/mariadb.1
which mysql
/opt/homebrew/bin/mysql
mysql -uroot -p -P3366 -h127.0.0.1
Enter password:
ERROR 2026 (HY000): TLS/SSL error: SSL is required, but the server does not support it
mysql -uroot -p -P3366 -hlocalhost
Enter password:
ERROR 2026 (HY000): TLS/SSL error: SSL is required, but the server does not support it
```
# `--skip-ssl` is the savior

```sh
mysql -uroot -p -P3366 -hlocalhost --skip-ssl
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 9
Server version: 11.0.2-MariaDB-1:11.0.2+maria~ubu2204 mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> show users;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'users' at line 1
MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mydb               |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
5 rows in set (0.010 sec)

MariaDB [(none)]> select user, host from mysql.user;
+-------------+-----------+
| User        | Host      |
+-------------+-----------+
| root        | %         |
| user        | %         |
| mariadb.sys | localhost |
| root        | localhost |
+-------------+-----------+
4 rows in set (0.005 sec)

MariaDB [(none)]>

MariaDB [(none)]> quit
Bye
```

