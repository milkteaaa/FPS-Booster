--> Settings
local Settings = _G.fps_Settings or {
	Graphics = true,
	Lighting = true,
	Texture = true,
	Terrain = true,
	Effects = false
}

--> Variables
local sethiddenproperty = sethiddenproperty or set_hidden_property or set_hidden_prop
local Lighting = game:GetService("Lighting")
local Terrain = workspace.Terrain

if settings then
	local RenderSettings = settings():GetService("RenderSettings")
	local UserGameSettings = UserSettings():GetService("UserGameSettings")

	if Settings.Graphics then
		RenderSettings.EagerBulkExecution = false
		RenderSettings.QualityLevel = Enum.QualityLevel.Level01
		RenderSettings.MeshPartDetailLevel = Enum.MeshPartDetailLevel.Level01
		UserGameSettings.SavedQualityLevel = Enum.SavedQualitySetting.QualityLevel1
		workspace.InterpolationThrottling = Enum.InterpolationThrottlingMode.Enabled
	end
end

if Settings.Lighting then
	Lighting.GlobalShadows = false
	Lighting.FogEnd = 1e9

	if sethiddenproperty then
		pcall(sethiddenproperty, Lighting, "Technology", Enum.Technology.Compatibility)
	end
end

if Settings.Texture then
	workspace.LevelOfDetail = Enum.ModelLevelOfDetail.Disabled

	if sethiddenproperty then
		pcall(sethiddenproperty, workspace, "MeshPartHeads", Enum.MeshPartHeads.Disabled)
	end
end

if Settings.Terrain then
	Terrain.WaterWaveSize = 0
	Terrain.WaterWaveSpeed = 0
	Terrain.WaterReflectance = 0
	Terrain.WaterTransparency = 0

	if sethiddenproperty then
		sethiddenproperty(Terrain, "Decoration", false)
	end
end

for Index, Object in ipairs(game:GetDescendants()) do
	if Object:IsA("Sky") and Settings.Texture then
		Object.StarCount = 0
		Object.CelestialBodiesShown = false
	elseif Object:IsA("BasePart") and Settings.Texture then
		Object.Material = "SmoothPlastic"
	elseif Object:IsA("BasePart") and Settings.Lighting then
		Object.CastShadow = false
	elseif Object:IsA("Atmosphere") and Settings.Lighting then
		Object.Density = 0
		Object.Offset = 0
		Object.Glare = 0
		Object.Haze = 0
	elseif Object:IsA("SurfaceAppearance") and Settings.Texture then
		Object:Destroy()
	elseif (Object:IsA("Decal") or Object:IsA("Texture")) and string.lower(Object.Parent.Name) ~= "head" and Settings.Texture then
		Object.Transparency = 1
	elseif (Object:IsA("ParticleEmitter") or Object:IsA("Sparkles") or Object:IsA("Smoke") or Object:IsA("Trail") or Object:IsA("Fire")) and Settings.Effects then
		Object.Enabled = false
	elseif (Object:IsA("ColorCorrectionEffect") or Object:IsA("DepthOfFieldEffect") or Object:IsA("SunRaysEffect") or Object:IsA("BloomEffect") or Object:IsA("BlurEffect")) and Settings.Lighting then
		Object.Enabled = false
	end
end
