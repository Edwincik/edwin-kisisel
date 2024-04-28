-- Branding!
local label =
[[ 
  //
  ||       ______ _______          _______ _   _ 
  ||      |  ____|  __ \ \        / /_   _| \ | |
  ||      | |__  | |  | \ \  /\  / /  | | |  \| |
  ||      |  __| | |  | |\ \/  \/ /   | | | . ` |
  ||      | |____| |__| | \  /\  /   _| |_| |\  |
  ||      |______|_____/   \/  \/   |_____|_| \_|
  ||                                      
  || 
  ||                Created by Edwincik
  ||]]

function GetCurrentVersion()
	return GetResourceMetadata( GetCurrentResourceName(), "version" )
end

PerformHttpRequest( "https://edwincik.github.io/edwincik-web/version.txt", function( err, text, headers )
	Citizen.Wait( 2000 )

	print( label )

	local curVer = GetCurrentVersion()

	print( "  ||    Current version: " .. curVer )

	if ( text ~= nil ) then
		print( "  ||    Latest recommended version: " .. text .."\n  ||" )

		if ( text ~= curVer ) then
			print( "  ||    ^1Your Edwin-Kisisel version is outdated, visit the FiveM forum post to get the latest version.\n^0  \\\\\n" )
		else
			print( "  ||    ^2Edwin-Kisisel is up to date!\n^0  ||\n  \\\\\n" )
		end
	else
		print( "  ||    ^1There was an error getting the latest version information.\n^0  ||\n  \\\\\n" )
	end
	if ( GetCurrentResourceName() ~= "edwin-kisisel" ) then
		print( "^1ERROR: Resource name is not edwin-kisisel, expect there to be issues with the resource. To ensure there are no issues, please leave the resource name as edwin-kisiel^0\n\n" )
	end
end )
