## Make wrapper

```bash
tarantoolctl rocks install https://nexus.vimpelcom.ru/repository/common__raw/hermes/thrift-0.10.0-4.all.rock --server https://luarocks.org
wget https://raw.githubusercontent.com/apache/hive/master/service-rpc/if/TCLIService.thrift
thrift --gen lua TCLIService.thrift
```

```bash
tarantoolctl rocks build
tarantoolctl rocks pack hive 
```


Uploaded [Result](hive-0.0.1-1.all.rock) here


https://nexus.vimpelcom.ru/#browse/search=keyword%3D%22hermes%2Fhive-0.0.1-1.all.rock%22:8dba85d8d235b4d4aa6e8539eff8bb3a:ff95d7df7a621b7c627c9b7187063700


Direct link:

https://nexus.vimpelcom.ru/repository/common__raw/hermes/hive-0.0.1-1.all.rock
