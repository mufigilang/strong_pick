minetest.register_craftitem("strong_pick:stick", {
	description = "Strong Stick",
	inventory_image = "strong_stick.png",
	groups = {flammable = 2},
})

minetest.register_tool("strong_pick:pick_wood", {
	description = "Strong Wooden Pickaxe",
	inventory_image = "strong_tool_woodpick.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[3]=0.50}, uses=4, maxlevel=3},
		},
		damage_groups = {fleshy=2},
		groups = {pickaxe = 1, flammable = 2}
	},
	groups = {pickaxe = 1}
})

minetest.register_craft({
    output = "strong_pick:stick",
    recipe = {
        {"", "group:stick", ""},
        {"", "group:stick", ""},
        {"", "group:stick", ""}
    }
})

minetest.register_craft({
    output = "strong_pick:pick_wood",
    recipe = {
        {"group:wood", "group:wood", "group:wood"},
        {"", "strong_pick:stick", ""},
        {"", "strong_pick:stick", ""}
    }
})
