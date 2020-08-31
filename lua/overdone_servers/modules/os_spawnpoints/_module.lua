local MODULE = {}

MODULE.DisplayName = "OS: Spawnpoints"
MODULE.FolderName = "os_spawnpoints"
MODULE.Version = "1.0.0"

OverdoneServers.OS_Spawnpoints = OverdoneServers.OS_Spawnpoints or {}
MODULE.PublicVar = OverdoneServers.OS_Spawnpoints
OverdoneServers.OS_Spawnpoints.Module = MODULE

MODULE.DataToLoad = {
    Client = {
    
    },
    Server = {
        "init.lua"
    },
    Shared = {
        
    },
    Fonts = {}
}

OverdoneServers:AddModule(MODULE)