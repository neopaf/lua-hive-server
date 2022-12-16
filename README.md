## Make wrapper

```bash
tarantoolctl rocks install https://nexus.vimpelcom.ru/repository/common__raw/hermes/thrift-0.10.0-4.all.rock --server https://luarocks.org
wget https://raw.githubusercontent.com/apache/hive/master/service-rpc/if/TCLIService.thrift
```

```bash
thrift --gen lua TCLIService.thrift
patch -p0 <fix.patch
```

```bash
tarantoolctl rocks build
tarantoolctl rocks pack hive 
```

[Uploaded](https://nexus.vimpelcom.ru/#browse/upload:common__raw)
[result](hive-0.0.2-1.all.rock) 
to `/hermes` folder  

Direct link:

https://nexus.vimpelcom.ru/repository/common__raw/hermes/hive-0.0.2-1.all.rock
