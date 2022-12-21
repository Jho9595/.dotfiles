-- import all language dap to this init.lua
require "my-dap-config.dap-go"

-- NOTE: uses load_launchjs instead of json5 below for now
-- use the exact json from vscode but note that the json is strict by defult on luvarnim as it uses json_decode not json5 (can have comments next to values and trailing comma)
-- create in root folder = .vscode/launch.json
require('dap.ext.vscode').load_launchjs()
-- require('dap.ext.vscode').json_decode() = require'json5'.parse -- if the installation of json5 is a success, use this intead

-- NOTE: run "DevToolsSecurity -enable" in terminal to disable inputting password every restart of macos

-- NOTE: vim cannot debug if the program is the folder name use the value like below
-- however, you must launch it in main.go only. find a way to run it if main.go has multiple files or has certain folder name like cmd in operator code
-- {
--   "version": "0.2.0",
--   "configurations": [
--     {
--       "name": "report service",
--       "type": "go",
--       "request": "launch",
--       "program": "${file}",
--       "env": {
--         "PORT": "8087",
--         // so on
--       }
--     }
--   ]
-- }
