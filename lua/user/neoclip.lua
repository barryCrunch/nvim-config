local neoclip_status_ok, neoclip = pcall(require, "neoclip")
if not neoclip_status_ok then
  return
end

local nc = require("neoclip")

nc.setup {}
