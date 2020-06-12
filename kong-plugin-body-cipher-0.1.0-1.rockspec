package = "kong-plugin-body-cipher"  
version = "0.1.0-1"             
local pluginName = package:match("^kong%-plugin%-(.+)$")  -- "myplugin"

supported_platforms = {"linux", "macosx"}
source = {
  url = "https://github.com/edana-dev/kong-plugin-body-cipher.git",
  tag = "0.1.0"
}

description = {
  summary = "A kong plugin for decrypt request body and encrypt response body.",
  homepage = "https://github.com/edana-dev/kong-plugin-body-cipher",
  license = "Apache 2.0"
}

dependencies = {
}

build = {
  type = "builtin",
  modules = {
    -- TODO: add any additional files that the plugin consists of
    ["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua",
  }
}
