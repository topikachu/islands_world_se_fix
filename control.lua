script.on_event(defines.events.on_surface_created, function(event)
	local index = event.surface_index
	if game.surfaces[index].name == "nauvis" then
		return
	end
	local s = game.surfaces[index]
	local mgs = s.map_gen_settings
	if mgs.property_expression_names.elevation and mgs.property_expression_names.elevation == "kap-islands-world2" then
		mgs.property_expression_names.elevation = nil
		s.map_gen_settings = mgs
	end
end)
