# FPS-Booster
Configure graphics, environments and objects for better performance, if your computer cannot run Roblox perfectly.

# How to use
First, you need a Lua Compiler (Exploit in Roblox), be careful when looking for one.<br/>
Currently I use [KRNL](https://krnl.rocks/), although I need to see ads and complete steps to be able to use, but it's the best free.<br/>
But I recommend [Synapse X](https://x.synapse.to/), it costs only 20 dollars, besides being the best on the market.<br/>
If you don't have money and can't use KRNL, also have the [Electron](https://ryos.best/), it has almost the same build as KRNL.<br/>
**Be careful when using an exploit, this violates Roblox's terms of use, and there are risks of deleting the account (https://en.help.roblox.com/hc/en-us/articles/203312450-Cheating-and-Exploiting).**<br/>

After installing an exploit or already have it, we have the code below:
```lua
_G.fps_Settings = {
	Graphics = true,
	Lighting = true,
	Texture = true,
	Terrain = true,
	Effects = false
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/GRIPPERTV/FPS-Booster/main/Source.lua", true))()
```
The current settings in the code are the default settings, if you remove the settings from the code, it will be replaced by a default settings. Also the `loadstring` part is a way to make easier to copy the code, it loads the FPS Booster source code directory (is open source) and compiles it.<br/>

If you don't know what each option does, look at this section [How to configure](#how-to-configure).<br/>

# How to configure
You can specify which changes should be made, for example, if you want to don't remove the textures, just disable the textures in the settings.<br/>
To disable and enable an option, use the booleans `true` (Enabled) and `false` (Disabled).<br/>
So, to disable Texture (`Texture = true`), set to `false` (`Texture = false`).<br/>
Below is a list of options and specifically describes what it does.

### Graphics
Change the rendering settings, `Eager Bulk Execution` is disabled, `Interpolation Throttling` is enabled, and `Quality Level`, `Mesh Part Detail Level` are set to the the lowest level.<br/>
[`Quality Level`](https://roblox.fandom.com/wiki/Graphics_settings) - Used to fine-tune the quality level of Roblox’s graphics.<br/>
`Eager Bulk Execution` - Forces the rendering of Roblox to update everything in each frame.<br/>
[`Interpolation Throttling`](https://devforum.roblox.com/t/new-optimization-feature-interpolation-throttling/796195) - It reduces the update frequency of all remotely owned mechanisms outside a client’s simulation radius.<br/>
[`Mesh Part Detail Level`](https://devforum.roblox.com/t/levels-of-detail-for-mesh-parts/280769) - Render MeshParts at different resolutions depending on the distance from the camera.

### Lighting
Lighting controls the game environment, so color saturation, brightness, and shadows are properties of Lighting.<br/>
The option configures the properties: `Global Shadows`, `Fog End`, `Technology`, `Cast Shadow`, `Atmosphere` for the best performance and disable the `Color Correction`, `Depth Of Field`, `Sun Rays`, `Bloom` and `Blur`.<br/>
[`Global Shadows`](https://developer.roblox.com/en-us/api-reference/property/Lighting/GlobalShadows) - Toggles voxel-based dynamic lighting in the game. When enabled, shadows are rendered in sheltered areas depending on the position of the sun and moon.<br/>
[`Fog End`](https://developer.roblox.com/en-us/api-reference/property/Lighting/FogEnd) - The depth from the camera, in studs, at which fog will be completely opaque.<br/>
[`Technology`](https://developer.roblox.com/en-us/api-reference/property/Lighting/Technology) - Determines the lighting system used to render the 3D world (e.g. legacy, Future is Bright, shadow map).<br/>
[`Cast Shadow`](https://developer.roblox.com/en-us/api-reference/property/BasePart/CastShadow) - Determines whether or not a part casts a shadow.<br/>
[`Atmosphere`](https://developer.roblox.com/en-us/api-reference/class/Atmosphere) - Pushes Roblox closer toward realistic environments where sunlight scatters in different ways depending on density and other air particle properties.<br/>
[`Color Correction`](https://developer.roblox.com/en-us/api-reference/class/ColorCorrectionEffect) - Used to adjust several color-related properties at once (Saturation, TintColor, Brightness, Contrast).<br/>
[`Depth Of Field`](https://developer.roblox.com/en-us/api-reference/class/DepthOfFieldEffect) - Simulates a camera lens by blurring parts of a scene not in focus.<br/>
[`Sun Rays`](https://developer.roblox.com/en-us/api-reference/class/SunRaysEffect) - Renders a halo of light around sun. The halo is shaped/blocked by world objects between the camera and the sun.<br/>
[`Bloom`](https://developer.roblox.com/en-us/api-reference/class/BloomEffect) - Simulates the camera viewing a very bright light. It causes brighter colors to glow, similar to applying the neon material to everything, including the the sky.<br/>
[`Blur`](https://developer.roblox.com/en-us/api-reference/class/BlurEffect) - Applies a gaussian blur to the entire rendered game world.

### Texture
Sets the material of the objects to Smooth Plastic (the least expensive material) and removes all the textures and decal. It also disables the detail level of the meshs, and remove the SurfaceApparence (a realistic texture attribute). **It's not changed for player avatars, such as face and packages.**<br/>
[`Material`](https://developer.roblox.com/en-us/api-reference/property/BasePart/Material) - Set a part’s texture and default physical properties.<br/>
[`Texture`](https://developer.roblox.com/en-us/api-reference/class/Texture) - Applies a repeating texture to the face of a part.<br/>
[`Decal`](https://developer.roblox.com/en-us/api-reference/class/Decal) - Applies an image to a face of a part.<br/>
[`Detail Level`](https://devforum.roblox.com/t/new-beta-feature-levelofdetail-property-for-models-enabled-globally/662464) - Activate the asynchronous generation of a representative mesh that can be seen in live games when outside streaming radius.<br/>
[`SurfaceAppearance`](https://developer.roblox.com/en-us/api-reference/class/SurfaceAppearance) - Override the appearance of a mesh part with advanced graphics options.

### Terrain
It just set the realistic water settings for better performance, and disables decoration (a setting for additional decorative features)<br/>
Specifically, the changed water settings are `Water Wave Size`, `Water Wave Speed`, `Water Reflectance` and `Water Transparency`.<br/>
[`Decoration`](https://developer.roblox.com/en-us/api-reference/property/Terrain/Decoration) - Currently enables or disables geometric grass on the grass terrain material.<br/>
[`Water Wave Size`](https://developer.roblox.com/en-us/api-reference/property/Terrain/WaterWaveSize) - Sets the maximum height of the Terrain water waves in studs.<br/>
[`Water Wave Speed`](https://developer.roblox.com/en-us/api-reference/property/Terrain/WaterWaveSpeed) - Sets how many times the Terrain water waves will move up and down per minute.<br/>
[`Water Reflectance`](https://developer.roblox.com/en-us/api-reference/property/Terrain/WaterReflectance) - Controls how opaque the terrain’s water reflections are.<br/>
[`Water Transparency`](https://developer.roblox.com/en-us/api-reference/property/Terrain/WaterTransparency) - The transparency of the terrain water.

### Effects (**This option is not recommended to be enabled**)
This option removes any type of effect (less explosions), such as custom particles, fire, smoke, etc... It's not recommended because it leaves the game lifeless, or the game may depend of the effects.<br/>
Below is the list of effects that will be removed:<br/>
[`Fire`](https://developer.roblox.com/en-us/api-reference/class/Fire) - Realistic fire particles.<br/>
[`Smoke`](https://developer.roblox.com/en-us/api-reference/class/Smoke) - Realistic smoke particles.<br/>
[`Sparkles`](https://developer.roblox.com/en-us/api-reference/class/Sparkles) - Realistic sparkles particles.<br/>
[`Particle Emitter`](https://developer.roblox.com/en-us/api-reference/class/ParticleEmitter) - Creation of particle systems. Is a special effect object that emits customizable 2D billboard particles into the world.<br/>
[`Trail`](https://developer.roblox.com/en-us/api-reference/class/Trail) - Create a trail like an effect between two points. As the points move through space a texture is drawn on the plane the points define.<br/>

# Note
All changes are made in the client, so, everything that is changed by the code will be changed only for you.<br/>
This repository will be updated if the code is changed, there is an error, missing information, etc...
