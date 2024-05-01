package
{
	import flash.display.Sprite;
	import flash.text.TextField;
	import net.blaxstar.colors.RGBA;
	import net.blaxstar.colors.Color;

	public class Main extends Sprite
	{
		public function Main()
		{ 
      // EXAMPLE
      // the blue value of a certain tech company's logo
      var c0:RGBA = Color.PRODUCT_BLUE;
      // darken by 30%
      var c1:RGBA = Color.PRODUCT_BLUE.shade(1);
      // draw two circles side by side
			graphics.beginFill(c0.value, 1);
      graphics.drawRoundRectComplex(stage.stageWidth/4, stage.stageHeight/3, 200,200, 100, 100, 100, 100);
      graphics.beginFill(c1.value, 1);
      graphics.drawRoundRectComplex(stage.stageWidth/1.5, stage.stageHeight/3, 200,200, 100, 100, 100, 100);
      graphics.endFill();
		}
	}
}