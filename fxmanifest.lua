fx_version 'cerulean'
game 'gta5'
version '1.2.0'
lua54 'yes'
author 'wx / woox'
description 'Advanced robbery system for FiveM'

client_scripts {
    'client/*.lua'
}

server_scripts {
    'server/*.lua',
    'configs/config_secret.lua'
}

shared_scripts {'@ox_lib/init.lua','configs/config_robbery.lua'}