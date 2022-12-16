## Make wrapper

Build https://github.com/neopaf/lua-thrift and put .rock to /tmp

```bash
luarocks rocks install /tmp/thrift-0.17.0-4.all.rock
wget https://raw.githubusercontent.com/apache/hive/master/service-rpc/if/TCLIService.thrift -Ospec/TCLIService.thrift
thrift --gen lua spec/TCLIService.thrift
patch -p0 <fix.patch
```

```bash
luarocks build
luarocks pack hive 
```

[result](hive-0.0.4-1.all.rock) 
