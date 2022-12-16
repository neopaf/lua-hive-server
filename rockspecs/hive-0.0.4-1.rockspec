package = "hive"
version = "0.0.4-1"
source = {
  url = "https://git.vimpelcom.ru/products/hermes/lua-hive"
}
description = {
  summary = "LuaRocks packaging of Apache HiveServer2 Thrift client",
  maintainer = "Alexander Petrossian",
  license = "Apache 2.0"
}
dependencies = {
  "thrift >= 0.17.0"
}
build = {
  type = "builtin",
  modules = {
    ["TCLIService_constants"] = "gen-lua/TCLIService_constants.lua",
    ["TCLIService_ttypes"] = "gen-lua/TCLIService_ttypes.lua",
    ["TCLIService_TCLIService"] = "gen-lua/TCLIService_TCLIService.lua",
  },
  copy_directories = { "spec" }
}
