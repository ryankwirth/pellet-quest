package com.ryanwirth.pelletquest.ui
{
	import starling.display.Image;
	import starling.textures.Texture;
	import starling.textures.TextureAtlas;
	
	/**
	 * ...
	 * @author Ryan Wirth
	 */
	public class UIButtonSmall extends UIButton
	{
		[Embed(source = "assets/UIButtonSmall.xml", mimeType = "application/octet-stream")]
		private static const AtlasXml:Class;
		
		// Embed the Atlas Texture:
		[Embed(source = "assets/UIButtonSmall.png")]
		private static const AtlasTexture:Class;
		
		private static const texture:Texture = Texture.fromEmbeddedAsset(AtlasTexture, false, false);
		private static const xml:XML = XML(new AtlasXml());
		private static const atlas:TextureAtlas = new TextureAtlas(texture, xml);
		
		private var _button:Image;
		private var _callback:Function;
		
		public function UIButtonSmall(callback:Function = null, label:String = "")
		{
			super(atlas, callback, null, null, label);
		}
	}

}