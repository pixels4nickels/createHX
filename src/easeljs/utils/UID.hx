package easeljs.utils;

/**
* Global utility for generating sequential unique ID numbers.
* The UID class uses a static interface (ex. UID.get()) and should not be instantiated.
* @class UID
* @static
**/

@:native ("createjs.UID")
extern class UID {

	/**
	* Returns the next unique id.
	* @method get
	* @return {Number} The next unique id
	* @static
	**/
	public static function get ():Float;

}