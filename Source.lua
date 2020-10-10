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
local newcclosure = newcclosure or function(Function) return Function end
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

if Settings.Lighting then
	Lighting.GlobalShadows = false
	Lighting.FogStart = math.huge
	Lighting.FogEnd = math.huge

	if sethiddenproperty then
		sethiddenproperty(Lighting, "Technology", Enum.Technology.Compatibility)
	end
end

if Settings.Texture then
	workspace.LevelOfDetail = Enum.ModelLevelOfDetail.Disabled
	workspace.InterpolationThrottling = Enum.InterpolationThrottlingMode.Enabled

	if sethiddenproperty then
		sethiddenproperty(workspace, "MeshPartHeads", Enum.MeshPartHeads.Disabled)
	end
end

for Index, Object in ipairs(game:GetDescendants()) do
	if Object:IsA("Sky") and Settings.Texture then
		Object.SkyboxBk = ""
		Object.SkyboxBk = ""
		Object.SkyboxDn = ""
		Object.SkyboxFt = ""
		Object.SkyboxLf = ""
		Object.SkyboxRt = ""
		Object.SkyboxUp = ""
		Object.StarCount = 0
		Object.SunTextureId = ""
		Object.MoonTextureId = ""
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
	elseif (Object:IsA("Decal") or Object:IsA("Texture")) and Object.Name ~= "face" and Settings.Texture then
		Object.Texture = ""
	elseif (Object:IsA("ParticleEmitter") or Object:IsA("Sparkles") or Object:IsA("Smoke") or Object:IsA("Trail") or Object:IsA("Fire")) and Settings.Effects then
		Object.Enabled = false
	elseif (Object:IsA("ColorCorrectionEffect") or Object:IsA("DepthOfFieldEffect") or Object:IsA("SunRaysEffect") or Object:IsA("BloomEffect") or Object:IsA("BlurEffect")) and Settings.Lighting then
		Object.Enabled = false
	end
end
