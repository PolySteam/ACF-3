
--V4 Engines

ACF.RegisterEngineClass("V4", {
	Name = "V4 Engine",
})

do -- Diesel Engines
	ACF.RegisterEngine("1.9L-V4", "V4", {
		Name		 = "1.9L V4 Diesel",
		Description	 = "Torquey little lunchbox; for those smaller vehicles that don't agree with petrol powerbands",
		Model		 = "models/engines/v4s.mdl",
		Sound		 = "acf_base/engines/i4_diesel2.wav",
		Fuel		 = { Diesel = true },
		Type		 = "GenericDiesel",
		Mass		 = 110,
		Torque		 = 206,
		FlywheelMass = 0.3,
		RPM = {
			Idle	= 650,
			PeakMin	= 950,
			PeakMax	= 3000,
			Limit	= 4000,
		}
	})

	ACF.RegisterEngine("3.3L-V4", "V4", {
		Name		 = "3.3L V4 Diesel",
		Description	 = "Compact cube of git; for moderate utility applications",
		Model		 = "models/engines/v4m.mdl",
		Sound		 = "acf_base/engines/i4_dieselmedium.wav",
		Fuel		 = { Diesel = true },
		Type		 = "GenericDiesel",
		Mass		 = 275,
		Torque		 = 600,
		FlywheelMass = 1.05,
		RPM = {
			Idle	= 600,
			PeakMin	= 1050,
			PeakMax	= 3100,
			Limit	= 3900,
		}
	})
end

ACF.SetCustomAttachment("models/engines/v4m.mdl", "driveshaft", Vector(-5.99, 0, 4.85), Angle(0, 90, 90))
ACF.SetCustomAttachment("models/engines/v4s.mdl", "driveshaft", Vector(-4.79, 0, 3.88), Angle(0, 90, 90))
