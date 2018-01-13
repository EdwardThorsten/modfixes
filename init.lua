-- 20170223: Switched lapis mod. Convert old blocks/items.
--if minetest.get_modpath("lapis") then
--    minetest.register_alias( 'lapis:stone_with_lapis', 'lapis:lapis_block' )
--    minetest.register_alias( 'lapis:lapisblock', 'lapis:lapis_block' )
--    minetest.register_alias( 'lapis:lapis', 'lapis:lapis_stone' )
--    minetest.register_alias( 'lapis:stone_with_pyrite', 'lapis:pyrite_ore' )
--end
-- 20170223: Get rid of annoying vines in ethereal swamp biomes. If plantlife_modpack vines mod is present.
if minetest.get_modpath("ethereal") and minetest.get_modpath("vines") then
	minetest.register_abm({
		nodenames = {"ethereal:vine"},
		interval = 1,
		chance = 1,
		action = function(pos, node)
			minetest.set_node({x = pos.x, y = pos.y, z = pos.z}, {name = "vines:vine_middle"})
		end
	})
end
