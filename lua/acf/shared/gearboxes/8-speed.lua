
-- 8-Speed Gearboxes

-- Weight
local Gear8SW = 100
local Gear8MW = 200
local Gear8LW = 400
local StWB = 0.75 --straight weight bonus mulitplier

-- Torque Rating
local Gear8ST = 340
local Gear8MT = 1000
local Gear8LT = 10000
local StTB = 1.25 --straight torque bonus multiplier

ACF.RegisterGearboxClass("8-Speed", {
	Name		= "8-Speed Gearbox",
	CreateMenu	= ACF.ManualGearboxMenu,
	Gears = {
		Min	= 0,
		Max	= 8,
	}
})

do -- Inline Gearboxes
	ACF.RegisterGearbox("8Gear-L-S", "8-Speed", {
		Name		= "8-Speed, Inline, Small",
		Description	= "A small and light 8 speed gearbox.",
		Model		= "models/engines/linear_s.mdl",
		Mass		= Gear8SW,
		Switch		= 0.15,
		MaxTorque	= Gear8ST,
	})

	ACF.RegisterGearbox("8Gear-L-M", "8-Speed", {
		Name		= "8-Speed, Inline, Medium",
		Description	= "A medium duty 8 speed gearbox..",
		Model		= "models/engines/linear_m.mdl",
		Mass		= Gear8MW,
		Switch		= 0.2,
		MaxTorque	= Gear8MT,
	})

	ACF.RegisterGearbox("8Gear-L-L", "8-Speed", {
		Name		= "8-Speed, Inline, Large",
		Description	= "Heavy duty 8 speed gearbox, however rather heavy.",
		Model		= "models/engines/linear_l.mdl",
		Mass		= Gear8LW,
		Switch		= 0.3,
		MaxTorque	= Gear8LT,
	})
end

do -- Inline Dual Clutch Gearboxes
	ACF.RegisterGearbox("8Gear-LD-S", "8-Speed", {
		Name		= "8-Speed, Inline, Small, Dual Clutch",
		Description	= "A small and light 8 speed gearbox The dual clutch allows you to apply power and brake each side independently\n\nThe Final Drive slider is a multiplier applied to all the other gear ratios",
		Model		= "models/engines/linear_s.mdl",
		Mass		= Gear8SW,
		Switch		= 0.15,
		MaxTorque	= Gear8ST,
		DualClutch	= true,
	})

	ACF.RegisterGearbox("8Gear-LD-M", "8-Speed", {
		Name		= "8-Speed, Inline, Medium, Dual Clutch",
		Description	= "A a medium duty 8 speed gearbox. The dual clutch allows you to apply power and brake each side independently\n\nThe Final Drive slider is a multiplier applied to all the other gear ratios",
		Model		= "models/engines/linear_m.mdl",
		Mass		= Gear8MW,
		Switch		= 0.2,
		MaxTorque	= Gear8MT,
		DualClutch	= true,
	})

	ACF.RegisterGearbox("8Gear-LD-L", "8-Speed", {
		Name		= "8-Speed, Inline, Large, Dual Clutch",
		Description	= "Heavy duty 8 speed gearbox. The dual clutch allows you to apply power and brake each side independently\n\nThe Final Drive slider is a multiplier applied to all the other gear ratios",
		Model		= "models/engines/linear_l.mdl",
		Mass		= Gear8LW,
		Switch		= 0.3,
		MaxTorque	= Gear8LT,
		DualClutch	= true,
	})
end

do -- Transaxial Gearboxes
	ACF.RegisterGearbox("8Gear-T-S", "8-Speed", {
		Name		= "8-Speed, Transaxial, Small",
		Description	= "A small and light 8 speed gearbox..",
		Model		= "models/engines/transaxial_s.mdl",
		Mass		= Gear8SW,
		Switch		= 0.15,
		MaxTorque	= Gear8ST,
	})

	ACF.RegisterGearbox("8Gear-T-M", "8-Speed", {
		Name		= "8-Speed, Transaxial, Medium",
		Description	= "A medium duty 8 speed gearbox..",
		Model		= "models/engines/transaxial_m.mdl",
		Mass		= Gear8MW,
		Switch		= 0.2,
		MaxTorque	= Gear8MT,
	})

	ACF.RegisterGearbox("8Gear-T-L", "8-Speed", {
		Name		= "8-Speed, Transaxial, Large",
		Description	= "Heavy duty 8 speed gearbox, however rather heavy.",
		Model		= "models/engines/transaxial_l.mdl",
		Mass		= Gear8LW,
		Switch		= 0.3,
		MaxTorque	= Gear8LT,
	})
end

do -- Transaxial Dual Clutch Gearboxes
	ACF.RegisterGearbox("8Gear-TD-S", "8-Speed", {
		Name		= "8-Speed, Transaxial, Small, Dual Clutch",
		Description	= "A small and light 8 speed gearbox The dual clutch allows you to apply power and brake each side independently\n\nThe Final Drive slider is a multiplier applied to all the other gear ratios",
		Model		= "models/engines/transaxial_s.mdl",
		Mass		= Gear8SW,
		Switch		= 0.15,
		MaxTorque	= Gear8ST,
		DualClutch	= true,
	})

	ACF.RegisterGearbox("8Gear-TD-M", "8-Speed", {
		Name		= "8-Speed, Transaxial, Medium, Dual Clutch",
		Description	= "A a medium duty 8 speed gearbox. The dual clutch allows you to apply power and brake each side independently\n\nThe Final Drive slider is a multiplier applied to all the other gear ratios",
		Model		= "models/engines/transaxial_m.mdl",
		Mass		= Gear8MW,
		Switch		= 0.2,
		MaxTorque	= Gear8MT,
		DualClutch	= true,
	})

	ACF.RegisterGearbox("8Gear-TD-L", "8-Speed", {
		Name		= "8-Speed, Transaxial, Large, Dual Clutch",
		Description	= "Heavy duty 8 speed gearbox. The dual clutch allows you to apply power and brake each side independently\n\nThe Final Drive slider is a multiplier applied to all the other gear ratios",
		Model		= "models/engines/transaxial_l.mdl",
		Mass		= Gear8LW,
		Switch		= 0.3,
		MaxTorque	= Gear8LT,
		DualClutch	= true,
	})
end

do -- Straight-through Gearboxes
	ACF.RegisterGearbox("8Gear-ST-S", "8-Speed", {
		Name		= "8-Speed, Straight, Small",
		Description	= "A small and light 8 speed straight-through gearbox.",
		Model		= "models/engines/t5small.mdl",
		Mass		= math.floor(Gear8SW * StWB),
		Switch		= 0.15,
		MaxTorque	= math.floor(Gear8ST * StTB),
	})

	ACF.RegisterGearbox("8Gear-ST-M", "8-Speed", {
		Name		= "8-Speed, Straight, Medium",
		Description	= "A medium 8 speed straight-through gearbox.",
		Model		= "models/engines/t5med.mdl",
		Mass		= math.floor(Gear8MW * StWB),
		Switch		= 0.2,
		MaxTorque	= math.floor(Gear8MT * StTB),
	})

	ACF.RegisterGearbox("8Gear-ST-L", "8-Speed", {
		Name		= "8-Speed, Straight, Large",
		Description	= "A large 8 speed straight-through gearbox.",
		Model		= "models/engines/t5large.mdl",
		Mass		= math.floor(Gear8LW * StWB),
		Switch		= 0.3,
		MaxTorque	= math.floor(Gear8LT * StTB),
	})
end
