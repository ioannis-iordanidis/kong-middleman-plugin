package = "middleman"

version = "0.1.1-1"

-- The version '0.1.1' is the source code version, the trailing '1' is the version of this rockspec.
-- whenever the source version changes, the rockspec should be reset to 1. The rockspec version is only
-- updated (incremented) when this file changes, but the source remains the same.

supported_platforms = {"linux", "macosx"}

source = {
  url = "https://github.com/ioannis-iordanidis/kong-middleman-plugin",
  tag = "0.1.1"
}

description = {
  summary = "A Kong plugin that allows for an extra HTTP POST request before proxying the original.",
  license = "MIT"
}

dependencies = {
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.middleman.access"] = "kong/plugins/middleman/access.lua",
    ["kong.plugins.middleman.handler"] = "kong/plugins/middleman/handler.lua",
    ["kong.plugins.middleman.schema"] = "kong/plugins/middleman/schema.lua",
    ["kong.plugins.middleman.json"] = "kong/plugins/middleman/json.lua"
  }
}
