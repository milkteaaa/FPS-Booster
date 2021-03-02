# Script
```lua
_G.FPS_Settings = {
	Graphics = true,
	Lighting = true,
	Texture = true,
	Terrain = true,
	Effects = false
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/GRIPPERTV/FPS-Booster/main/Source.lua", true))()
```
The current settings on the code is the default settings, if the settings from the code are removed it will be replaced by the default settings

# How to Configure
You can specify which changes should be made, for example, if you want to don't remove the textures, just disable the textures in the settings<br/>
To disable and enable an option, use the booleans `true` (Enabled) and `false` (Disabled)<br/>
So, to disable Texture (`Texture = true`), set to `false` (`Texture = false`)<br/>
Below is a list of options and specifically describes what it does

### Graphics
Change the rendering settings, `Eager Bulk Execution` is disabled, `Interpolation Throttling` is enabled, and `Quality Level`, `Mesh Part Detail Level` are set to the the lowest level<br/>
[`Quality Level`](https://roblox.fandom.com/wiki/Graphics_settings) - Fine-tune the quality level of graphics<br/>
[`Eager Bulk Execution`](https://developer.roblox.com/en-us/api-reference/property/RenderSettings/EagerBulkExecution) - Forces the rendering of Roblox to update everything in each frame<br/>
[`Interpolation Throttling`](https://devforum.roblox.com/t/new-optimization-feature-interpolation-throttling/796195) - Reduces the update frequency of all remotely owned mechanisms outside a client’s simulation radius<br/>
[`Mesh Part Detail Level`](https://devforum.roblox.com/t/levels-of-detail-for-mesh-parts/280769) - Render MeshParts at different resolutions depending on the distance from the camera

### Lighting
Lighting controls the game environment, so color saturation, brightness, and shadows are properties of Lighting<br/>
The option configures the properties: `Global Shadows`, `Fog End`, `Technology`, `Cast Shadow`, `Atmosphere` for the best performance and disable the `Color Correction`, `Depth Of Field`, `Sun Rays`, `Bloom` and `Blur` effects<br/>
[`Global Shadows`](https://developer.roblox.com/en-us/api-reference/property/Lighting/GlobalShadows) - Voxel-based dynamic lighting in the gamen<br/>
[`Fog End`](https://developer.roblox.com/en-us/api-reference/property/Lighting/FogEnd) - Depth from the camera, in studs, at which fog will be completely opaque<br/>
[`Technology`](https://developer.roblox.com/en-us/api-reference/property/Lighting/Technology) - Lighting system used to render the 3D world<br/>
[`Cast Shadow`](https://developer.roblox.com/en-us/api-reference/property/BasePart/CastShadow) - Determines whether or not a part casts a shadow<br/>
[`Atmosphere`](https://developer.roblox.com/en-us/api-reference/class/Atmosphere) - Pushes Roblox closer toward realistic environments where sunlight scatters in different ways depending on density and other air particle properties<br/>
[`Color Correction`](https://developer.roblox.com/en-us/api-reference/class/ColorCorrectionEffect) - Used to adjust several color-related properties at once (Saturation, TintColor, Brightness, Contrast)<br/>
[`Depth Of Field`](https://developer.roblox.com/en-us/api-reference/class/DepthOfFieldEffect) - Simulates a camera lens by blurring parts of a scene not in focus<br/>
[`Sun Rays`](https://developer.roblox.com/en-us/api-reference/class/SunRaysEffect) - Renders a halo of light around sun<br/>
[`Bloom`](https://developer.roblox.com/en-us/api-reference/class/BloomEffect) - Simulates the camera viewing a very bright light<br/>
[`Blur`](https://developer.roblox.com/en-us/api-reference/class/BlurEffect) - Applies a gaussian blur to the entire rendered game world

### Texture
Sets the material of the objects to SmoothPlastic (the least expensive material) and change textures and decals transparency to invisible. Also disables the detail level of the meshs, and remove the SurfaceApparence (a realistic texture attribute). **It's not changed for player avatars, such as face and packages**<br/>
[`Material`](https://developer.roblox.com/en-us/api-reference/property/BasePart/Material) - Set a part’s texture and default physical properties<br/>
[`Texture`](https://developer.roblox.com/en-us/api-reference/class/Texture) - Applies a repeating texture to the face of a part<br/>
[`Decal`](https://developer.roblox.com/en-us/api-reference/class/Decal) - Applies an image to a face of a part<br/>
[`Detail Level`](https://devforum.roblox.com/t/new-beta-feature-levelofdetail-property-for-models-enabled-globally/662464) - Activate the asynchronous generation of a representative mesh that can be seen in live games when outside streaming radius<br/>
[`SurfaceAppearance`](https://developer.roblox.com/en-us/api-reference/class/SurfaceAppearance) - Override the appearance of a mesh part with advanced graphics options

### Terrain
It just configures the realistic water properties for best performance, and disables decoration<br/>
[`Decoration`](https://developer.roblox.com/en-us/api-reference/property/Terrain/Decoration) - Geometric grass<br/>
[`Water Wave Size`](https://developer.roblox.com/en-us/api-reference/property/Terrain/WaterWaveSize) - The maximum height of the Terrain water waves in studs<br/>
[`Water Wave Speed`](https://developer.roblox.com/en-us/api-reference/property/Terrain/WaterWaveSpeed) - How many times the Terrain water waves will move up and down per minute<br/>
[`Water Reflectance`](https://developer.roblox.com/en-us/api-reference/property/Terrain/WaterReflectance) - Water reflections<br/>
[`Water Transparency`](https://developer.roblox.com/en-us/api-reference/property/Terrain/WaterTransparency) - Water transparency

### Effects (**This option is not recommended to be enabled**)
This option removes any type of effect (less explosions), such as custom particles, fire, smoke, etc... It's not recommended because it leaves the game lifeless, or the game may depend of the effects<br/>
Below is the list of effects that will be removed<br/>
[`Fire`](https://developer.roblox.com/en-us/api-reference/class/Fire) - Realistic fire particles<br/>
[`Smoke`](https://developer.roblox.com/en-us/api-reference/class/Smoke) - Realistic smoke particles<br/>
[`Sparkles`](https://developer.roblox.com/en-us/api-reference/class/Sparkles) - Realistic sparkles particles<br/>
[`Particle Emitter`](https://developer.roblox.com/en-us/api-reference/class/ParticleEmitter) - Custom particles<br/>
[`Trail`](https://developer.roblox.com/en-us/api-reference/class/Trail) - Trail like an effect between two points<br/>

# Note
Changes are made on the client, so everything that are changed by the code will be changed only for you<br/>
This repository will be updated if the code is changed, there is an error, missing information, etc
