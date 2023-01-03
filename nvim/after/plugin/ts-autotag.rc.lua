local status, autotag = pcall(require, "nvim-ts-autotage")
if (not status) then return end


autotag.setup {}
