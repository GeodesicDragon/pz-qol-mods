require "recipecode"

Recipe = Recipe or {}
Recipe.GetItemTypes = Recipe.GetItemTypes or {}
Recipe.OnCanPerform = Recipe.OnCanPerform or {}
Recipe.OnCreate = Recipe.OnCreate or {}
Recipe.OnGiveXP = Recipe.OnGiveXP or {}
Recipe.OnTest = Recipe.OnTest or {}

function Recipe.OnCreate.GeoQOLBagThread(items, result, player)

	local TailoringLevel = player:getPerkLevel(Perks.Tailoring)
	
	if TailoringLevel >= 3 and TailoringLevel <= 8  then
		player:getInventory():AddItem("Base.Thread")
	elseif TailoringLevel >= 9 then
		player:getInventory():AddItem("Base.Thread")
		player:getInventory():AddItem("Base.Thread")
	end
	
end