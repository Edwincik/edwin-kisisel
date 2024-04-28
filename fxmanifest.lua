fx_version 'cerulean'
game 'gta5'
version "1.3.1"

client_scripts {
    "client/*.lua"
}
server_script "sv_version_check.lua"
server_scripts {
    "@oxmysql/lib/MySQL.lua",
}
shared_scripts {
    "config.lua"
}