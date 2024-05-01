# AS3Colors

as3colors is a simple color library for Actionscript 3.0. it consists of 2 files, Color and RGBA.

`RGBA` - a class containing color values along with color manipulation methods for both RGB and RGBA.

`Colors` - a class containing predefined RGBA color objects.

## Usage

using Colors is very simple. instantiate a color like so:

```
// reference a constant color 
var gold:RGBA = Color.GOLD;

//OR

// make a new one with custom values
//                            red blue green alpha
var light_pink:RGBA = new RGBA(255, 128, 255, 1.0);
```

and apply it to your drawing API of choice.

```
// the `value` property returns the uint representation of the color

graphics.beginFill(gold.value, 1);

// you can also convert it to hex, for use with things like SVG color (AS3SVGRenderer):
e.style.setProperty('fill', gold.to_hex_string());
```

there are methods for darkening,

```
// shade gold by 50%. the original gold is unmodified.

var dark_gold:RGBA = gold.shade(0.5);
```

lightening,

```
// lighten gold by 70%. the original gold is unmodified.

var dark_gold:RGBA = gold.tint(0.7);
```

and some other useful things too.

```
// set an accessible background color based on the brightness of the text
var accessible_background_color:RGBA = text_rgba.color_is_bright ? Colors.DARK_GREY : Colors.WHITE;

// clone a color, alpha included
var seeing_double:RGBA = gold.clone();

// create from hex value. the original gold color is not modified.
var sky_blue_hex:RGBA = gold.from_hex(0x0099FF);
```

take a look at the code and examples above and feel free to improve or make suggestions!