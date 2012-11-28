package easeljs.geom;
import easeljs.display.Shadow;

@:native ("createjs.Matrix2D")
extern class Matrix2D {

	/**
	* Position (0, 0) in a 3x3 affine transformation matrix.
	* @property a
	* @type Number
	**/
	public var a:Float;
	
	/**
	* Property representing the alpha that will be applied to a display object. This is not part of matrix
	* operations, but is used for operations like getConcatenatedMatrix to provide concatenated alpha values.
	* @property alpha
	* @type Number
	**/
	public var alpha:Float;
	
	/**
	* Position (2, 0) in a 3x3 affine transformation matrix.
	* @property atx
	* @type Number
	**/
	public var tx:Float;
	
	/**
	* Position (0, 1) in a 3x3 affine transformation matrix.
	* @property b
	* @type Number
	**/
	public var b:Float;
	
	/**
	* Position (1, 0) in a 3x3 affine transformation matrix.
	* @property c
	* @type Number
	**/
	public var c:Float;
	
	/**
	* Property representing the compositeOperation that will be applied to a display object. This is not part of
	* matrix operations, but is used for operations like getConcatenatedMatrix to provide concatenated
	* compositeOperation values. You can find a list of valid composite operations at:
	* <a href="https://developer.mozilla.org/en/Canvas_tutorial/Compositing">https://developer.mozilla.org/en/Canvas_tutorial/Compositing</a>
	* @property compositeOperation
	* @type String
	**/
	public var compositeOperation:String;
	
	/**
	* Position (1, 1) in a 3x3 affine transformation matrix.
	* @property d
	* @type Number
	**/
	public var d:Float;
	
	/**
	* Property representing the shadow that will be applied to a display object. This is not part of matrix
	* operations, but is used for operations like getConcatenatedMatrix to provide concatenated shadow values.
	* @property shadow
	* @type Shadow
	**/
	public var shadow:Shadow;
	
	/**
	* Position (2, 1) in a 3x3 affine transformation matrix.
	* @property ty
	* @type Number
	**/
	public var ty:Float;
	
	/**
	* Multiplier for converting degrees to radians. Used internally by Matrix2D. Read-only.
	* @property DEG_TO_RAD
	* @static
	* @final
	* @type Number
	**/
	public static var DEG_TO_RAD:Float;

	/**
	* Represents an affine transformation matrix, and provides tools for constructing and concatenating matrixes.
	* @class Matrix2D
	* @constructor
	* @param {Number} a Specifies the a property for the new matrix.
	* @param {Number} b Specifies the b property for the new matrix.
	* @param {Number} c Specifies the c property for the new matrix.
	* @param {Number} d Specifies the d property for the new matrix.
	* @param {Number} tx Specifies the tx property for the new matrix.
	* @param {Number} ty Specifies the ty property for the new matrix.
	**/
	public function new (a:Float, b:Float, c:Float, d:Float, tx:Float, ty:Float):Void;
	
	/**
	* Appends the specified matrix properties with this matrix. All parameters are required.
	* @method append
	* @param {Number} a
	* @param {Number} b
	* @param {Number} c
	* @param {Number} d
	* @param {Number} tx
	* @param {Number} ty
	* @return {Matrix2D} This matrix. Useful for chaining method calls.
	**/
	public function append (a:Float, b:Float, c:Float, d:Float, tx:Float, ty:Float):Void;
	
	/**
	* Appends the specified matrix with this matrix.
	* @method appendMatrix
	* @param {Matrix2D} matrix
	* @return {Matrix2D} This matrix. Useful for chaining method calls.
	**/
	public function appendMatrix (matrix:Matrix2D):Void;
	
	/**
	* Appends the specified visual properties to the current matrix.
	* @method appendProperties
	* @param {Number} alpha desired alpha value
	* @param {Shadow} shadow desired shadow value
	* @param {String} compositeOperation desired composite operation value
	* @return {Matrix2D} This matrix. Useful for chaining method calls.
	*/
	public function appendProperties (alpha:Float, shadow:Shadow, compositeOperation:String):Void;
	
	/**
	* Generates matrix properties from the specified display object transform properties, and appends them with this matrix.
	* For example, you can use this to generate a matrix from a display object: var mtx = new Matrix2D();
	* mtx.appendTransform(o.x, o.y, o.scaleX, o.scaleY, o.rotation);
	* @method appendTransform
	* @param {Number} x
	* @param {Number} y
	* @param {Number} scaleX
	* @param {Number} scaleY
	* @param {Number} rotation
	* @param {Number} skewX
	* @param {Number} skewY
	* @param {Number} regX Optional.
	* @param {Number} regY Optional.
	* @return {Matrix2D} This matrix. Useful for chaining method calls.
	**/
	public function appendTransform (x:Float, y:Float, scaleX:Float, scaleY:Float, rotation:Float, skewX:Float, skewY:Float, regX:Float, regY:Float):Void;
	
	/**
	* Reinitializes all matrix properties to those specified.
	* @method appendProperties
	* @param {Number} a
	* @param {Number} b
	* @param {Number} c
	* @param {Number} d
	* @param {Number} tx
	* @param {Number} ty
	* @param {Number} alpha desired alpha value
	* @param {Shadow} shadow desired shadow value
	* @param {String} compositeOperation desired composite operation value
	* @return {Matrix2D} This matrix. Useful for chaining method calls.
	*/
	public function reinitialize (a:Float,b:Float,c:Float,d:Float,tx:Float,ty:Float,alpha:Float,shadow:Shadow,compositeOperation:String):Matrix2D;
	
	/**
	* Returns a clone of the Matrix2D instance.
	* @method clone
	* @return {Matrix2D} a clone of the Matrix2D instance.
	**/
	public function clone ():Matrix2D;
	
	/**
	* Decomposes the matrix into transform properties (x, y, scaleX, scaleY, and rotation). Note that this these values
	* may not match the transform properties you used to generate the matrix, though they will produce the same visual
	* results.
	* @method decompose
	* @param {Object} target The object to apply the transform properties to. If null, then a new object will be returned.
	* @return {Matrix2D} This matrix. Useful for chaining method calls.
	*/
	public function decompose (target:Dynamic):Void;
	
	/**
	* Sets the properties of the matrix to those of an identity matrix (one that applies a null transformation).
	* @method identity
	* @return {Matrix2D} This matrix. Useful for chaining method calls.
	**/
	public function identity ():Void;
	
	/**
	* Inverts the matrix, causing it to perform the opposite transformation.
	* @method invert
	* @return {Matrix2D} This matrix. Useful for chaining method calls.
	**/
	public function invert ():Void;
	
	/**
	* Returns true if the matrix is an identity matrix.
	* @method isIdentity
	* @return {Boolean}
	**/
	public function isIdentity ():Void;
	
	/**
	* Concatenates the specified matrix properties with this matrix. All parameters are required.
	* @method prepend
	* @param {Number} a
	* @param {Number} b
	* @param {Number} c
	* @param {Number} d
	* @param {Number} tx
	* @param {Number} ty
	* @return {Matrix2D} This matrix. Useful for chaining method calls.
	**/
	public function prepend (a:Float, b:Float, c:Float, d:Float, tx:Float, ty:Float):Void;
	
	/**
	* Prepends the specified matrix with this matrix.
	* @method prependMatrix
	* @param {Matrix2D} matrix
	**/
	public function prependMatrix (matrix:Matrix2D):Void;
	
	/**
	* Prepends the specified visual properties to the current matrix.
	* @method prependProperties
	* @param {Number} alpha desired alpha value
	* @param {Shadow} shadow desired shadow value
	* @param {String} compositeOperation desired composite operation value
	* @return {Matrix2D} This matrix. Useful for chaining method calls.
	*/
	public function prependProperties (alpha:Float, shadow:Shadow, compositeOperation:String):Void;
	
	/**
	* Generates matrix properties from the specified display object transform properties, and prepends them with this matrix.
	* For example, you can use this to generate a matrix from a display object: var mtx = new Matrix2D();
	* mtx.prependTransform(o.x, o.y, o.scaleX, o.scaleY, o.rotation);
	* @method prependTransform
	* @param {Number} x
	* @param {Number} y
	* @param {Number} scaleX
	* @param {Number} scaleY
	* @param {Number} rotation
	* @param {Number} skewX
	* @param {Number} skewY
	* @param {Number} regX Optional.
	* @param {Number} regY Optional.
	* @return {Matrix2D} This matrix. Useful for chaining method calls.
	**/
	public function prependTransform (x:Float, y:Float, scaleX:Float, scaleY:Float, rotation:Float, skewX:Float, skewY:Float, regX:Float, regY:Float):Void;
	
	/**
	* Applies a rotation transformation to the matrix.
	* @method rotate
	* @param {Number} angle The angle in degrees.
	* @return {Matrix2D} This matrix. Useful for chaining method calls.
	**/
	public function rotate (angle:Float):Void;
	
	/**
	* Applies a scale transformation to the matrix.
	* @method scale
	* @param {Number} x
	* @param {Number} y
	* @return {Matrix2D} This matrix. Useful for chaining method calls.
	**/
	public function scale (x:Float, y:Float):Void;
	
	/**
	* Applies a skew transformation to the matrix.
	* @method skew
	* @param {Number} skewX The amount to skew horizontally in degrees.
	* @param {Number} skewY The amount to skew vertically in degrees.
	* @return {Matrix2D} This matrix. Useful for chaining method calls.
	*/
	public function skew (skewX:Float, skewY:Float):Void;
	
	/**
	* Returns a string representation of this object.
	* @method toString
	* @return {String} a string representation of the instance.
	**/
	public function toString ():String;
	
	/**
	* Translates the matrix on the x and y axes.
	* @method translate
	* @param {Number} x
	* @param {Number} y
	* @return {Matrix2D} This matrix. Useful for chaining method calls.
	**/
	public function translate (x:Float, y:Float):Void;

}