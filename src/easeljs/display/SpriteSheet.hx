package easeljs.display;

@:native ("createjs.SpriteSheet")
extern class SpriteSheet {
	
	/**
	* Read-only property indicating whether all images are finished loading.
	* @property complete
	* @type Boolean
	**/
	public var complete:Bool;
	
	/**
	* The onComplete callback is called when all images are loaded. Note that this only fires if the images
	* were not fully loaded when the sprite sheet was initialized. You should check the complete property
	* to prior to adding an onComplete handler. Ex.
	* <pre><code>var sheet = new SpriteSheet(data);
	* if (!sheet.complete) {
	* &nbsp; // not preloaded, listen for onComplete:
	* &nbsp; sheet.onComplete = handler;
	* }</code></pre>
	*
	* @event onComplete
	**/
	public var onComplete:Dynamic;

	/**
	* Encapsulates the properties and methods associated with a sprite sheet. A sprite sheet is a series of images (usually animation frames) combined
	* into a larger image (or images). For example, an animation consisting of 8 100x100 images could be combined into a 400x200
	* sprite sheet (4 frames across by 2 high).<br/><br/>
	* The data passed to the SpriteSheet constructor defines three critical pieces of information:<OL>
	* <LI> The image or images to use.</LI>
	* <LI> The positions of individual image frames. This data can be represented in one of two ways:
	* As a regular grid of sequential, equal-sized frames, or as individually defined, variable sized frames arranged in an irregular (non-sequential) fashion.</LI>
	* <LI> Likewise, animations can be represented in two ways: As a series of sequential frames, defined by a start and end frame [0,3], or as a list of frames [0,1,2,3].
	* </OL>
	* The easiest way to understand the data format is to see an example:
	* <pre><code>data = {
	&nbsp;
	// DEFINING IMAGES:
	&#9;// list of images or image URIs to use. SpriteSheet can handle preloading.
	&#9;// the order dictates their index value for frame definition.
	&#9;images: [image1, "path/to/image2.png"],
	&nbsp;
	// DEFINING FRAMES:
	&nbsp;
	&#9;// the simple way to define frames, only requires frame size because frames are consecutive:
	&#9;// define frame width/height, and optionally the frame count and registration point x/y.
	&#9;// if count is omitted, it will be calculated automatically based on image dimensions.
	&#9;frames: {width:64, height:64, count:20, regX: 32, regY:64},
	&nbsp;
	&#9;// OR, the complex way that defines individual rects for frames.
	&#9;// The 5th value is the image index per the list defined in "images" (defaults to 0).
	&#9;frames: [
	&#9; // x, y, width, height, imageIndex, regX, regY
	&#9; [0,0,64,64,0,32,64],
	&#9; [64,0,96,64,0]
	&#9;],
	&nbsp;
	// DEFINING ANIMATIONS:
	&nbsp;
	&#9;// simple animation definitions. Define a consecutive range of frames.
	&#9;// also optionally define a "next" animation name for sequencing.
	&#9;// setting next to false makes it pause when it reaches the end.
	&#9;animations: {
	&#9; // start, end, next, frequency
	&#9; run: [0,8],
	&#9; jump: [9,12,"run",2],
	&#9; stand: [13]
	&#9;}
	&nbsp;
	&#9;// the complex approach which specifies every frame in the animation by index.
	&#9;animations: {
	&#9; run: {
	&#9; frames: [1,2,3,3,2,1]
	&#9; },
	&#9; jump: {
	&#9; frames: [1,4,5,6,1],
	&#9; next: "run",
	&#9; frequency: 2
	&#9; },
	&#9; stand: { frames: [7] }
	&#9;}
	&nbsp;
	&#9;// the above two approaches can be combined, you can also use a single frame definition:
	&#9;animations: {
	&#9; run: [0,8,true,2],
	&#9; jump: {
	&#9; frames: [8,9,10,9,8],
	&#9; next: "run",
	&#9; frequency: 2
	&#9; },
	&#9; stand:7
	&#9;}
	}</code></pre>
	* &nbsp;
	* For example, to define a simple sprite sheet, with a single image "sprites.jpg" arranged in a regular 50x50 grid
	* with two animations, "run" looping from frame 0-4 inclusive, and "jump" playing from frame 5-8 and sequencing back to run:
	* <pre><code>data = {
	&#9;images: ["sprites.jpg"],
	&#9;frames: {width:50, height:50},
	&#9;animations: {run:[0,4], jump:[5,8,"run"]}
	}</code></pre>
	* @class SpriteSheet
	* @constructor
	* @param data
	**/
	public function new (data:Dynamic):Void;
	
	
	/**
	* Returns a clone of the SpriteSheet instance.
	* @method clone
	* @return {SpriteSheet} a clone of the SpriteSheet instance.
	**/
	public function clone ():SpriteSheet;
	
	/**
	* Returns an object defining the specified animation. The returned object has a
	* frames property containing an array of the frame id's in the animation, a frequency
	* property indicating the advance frequency for this animation, a name property,
	* and a next property, which specifies the default next animation. If the animation
	* loops, the name and next property will be the same.
	* @method getAnimation
	* @param {String} name The name of the animation to get.
	* @return {Object} a generic object with frames, frequency, name, and next properties.
	**/
	public function getAnimation ( name:Dynamic ):Dynamic;
	
	/**
	* Returns an array of all available animation names as strings.
	* @method getAnimations
	* @return {Array} an array of animation names available on this sprite sheet.
	**/
	public function getAnimations ():Dynamic;
	
	/**
	* Returns an object specifying the image and source rect of the specified frame. The returned object
	* has an image property holding a reference to the image object in which the frame is found,
	* and a rect property containing a Rectangle instance which defines the boundaries for the
	* frame within that image.
	* @method getFrame
	* @param {Number} frameIndex The index of the frame.
	* @return {Object} a generic object with image and rect properties. Returns null if the frame does not exist, or the image is not fully loaded.
	**/
	public function getFrame (frameIndex:Float):Dynamic;
	
	/**
	* Returns the total number of frames in the specified animation, or in the whole sprite
	* sheet if the animation param is omitted.
	* @param {String} animation The name of the animation to get a frame count for.
	* @return {Number} The number of frames in the animation, or in the entire sprite sheet if the animation param is omitted.
	*/
	public function getNumFrames (?animation:String):Int;
	
	/**
	* Returns a string representation of this object.
	* @method toString
	* @return {String} a string representation of the instance.
	**/
	public function toString ():String;

}