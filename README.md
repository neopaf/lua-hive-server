# Prerequisities

Install https://thrift.apache.org

# Build

```bash
luarocks rocks install thrift --server https://neopaf.github.io/rocks/
wget https://raw.githubusercontent.com/apache/hive/master/service-rpc/if/TCLIService.thrift -Ospec/TCLIService.thrift
thrift --gen lua spec/TCLIService.thrift
patch -p0 <fix.patch
```

```bash
luarocks build
luarocks pack hive 
```

## Publish

Manually copy to
https://github.com/neopaf/rocks

Read README there and publish to
https://neopaf.github.io/rocks/

## Installation

```bash
luarocks install hive --server https://neopaf.github.io/rocks/
```
