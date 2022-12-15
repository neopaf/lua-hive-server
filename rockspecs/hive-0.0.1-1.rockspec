package = "hive"
version = "0.0.1-1"
source = {
  url = "https://git.vimpelcom.ru/products/hermes/lua-hive"
}
description = {
  summary = "LuaRocks packaging of Apache HiveServer2 Thrift client",
  maintainer = "Alexander Petrossian",
  license = "Apache 2.0"
}
dependencies = {
  "thrift >= 0.10.0"
}
build = {
  type = "builtin",
  modules = {
    ["hive.TCLIService_constants"] = "gen-lua/TCLIService_constants.lua",
    ["hive.TCLIService_ttypes"] = "gen-lua/TCLIService_ttypes.lua",
    ["hive.TCLIService_TCLIService"] = "gen-lua/TCLIService_TCLIService.lua",
  }
}
