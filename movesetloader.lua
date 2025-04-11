-- Unified Moveset Loader by DAN
local moves = {
	"metor",
	"blinkstep",
	"chronobreak",
	"vitalbloom"
}

for _, move in ipairs(moves) do
	local url = "https://raw.githubusercontent.com/whatsmynameyo/rblx/main/" .. move
	local success, err = pcall(function()
		loadstring(game:HttpGet(url, true))()
	end)
	if not success then
		warn("Failed to load move: " .. move .. " | Error: " .. tostring(err))
	end
end
