package com.ryanwirth.pelletquest.world.entity
{
	import com.ryanwirth.pelletquest.world.ai.AIType;
	import com.ryanwirth.pelletquest.world.Direction;
	import starling.textures.Texture;
	import starling.textures.TextureAtlas;
	
	/**
	 * ...
	 * @author Ryan Wirth
	 */
	public class EOldMan extends Entity
	{
		[Embed(source = "assets/EMale.xml", mimeType = "application/octet-stream")]
		private static const AtlasXml:Class;
		
		// Embed the Atlas Texture:
		[Embed(source = "assets/EOldMan.png")]
		private static const AtlasTexture:Class;
		
		private static const texture:Texture = Texture.fromEmbeddedAsset(AtlasTexture, false, false);
		private static const xml:XML = XML(new AtlasXml());
		private static const atlas:TextureAtlas = new TextureAtlas(texture, xml);
		
		public function EOldMan(xTile:int, yTile:int)
		{
			super(atlas, EntityType.OLD_MAN, xTile, yTile, Direction.DOWN, AnimationType.STAND, 16, WalkSpeed.NORMAL, 9, AIType.NONE, null, 0, false, false);
		}
	
	}

}