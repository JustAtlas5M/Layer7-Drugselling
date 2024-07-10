fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'Layer7'
description 'Drug Selling'
version '1.0.0'

shared_scripts {
    '@ox_lib/init.lua',
    'config.lua'
}
client_scripts {
    'client/speeches.lua',
    'client/main.lua',
}
server_scripts {
    'server/main.lua',
}

