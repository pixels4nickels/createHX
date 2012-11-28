package easeljs.display;

import js.CanvasRenderingContext2D;

@:native ("createjs.Container")
extern class Container extends DisplayObject {

	/**
	* The array of children in the display list. You should usually use the child management methods,
	* rather than accessing this directly, but it is included for advanced users.
	* @property children
	* @type Array[DisplayObject]
	* @default null
	**/
	public var children:Array<DisplayObject>;

	/**
	* A Container is a nestable display lists that allows you to work with compound display elements. For
	* example you could group arm, leg, torso and head Bitmaps together into a Person Container, and
	* transform them as a group, while still being able to move the individual parts relative to each
	* other. Children of containers have their transform and alpha properties concatenated with their
	* parent Container. For example, a Shape with x=100 and alpha=0.5, placed in a Container with
	* x=50 and alpha=0.7 will be rendered to the canvas at x=150 and alpha=0.35. Containers have some
	* overhead, so you generally shouldn't create a Container to hold a single child.
	* @class Container
	* @extends DisplayObject
	* @constructor
	**/
	public function new (?canvas:Dynamic):Void;
	
	/**
	* Adds a child to the top of the display list. You can also add multiple children, such as "addChild(child1, child2, ...);".
	* Returns the child that was added, or the last child if multiple children were added.
	* @method addChild
	* @param {DisplayObject} child The display object to add.
	* @return {DisplayObject} The child that was added, or the last child if multiple children were added.
	**/
	public function addChild (child:DisplayObject):DisplayObject;
	
	/**
	* Adds a child to the display list at the specified index, bumping children at equal or greater indexes up one, and setting
	* its parent to this Container. You can also add multiple children, such as "addChildAt(child1, child2, ..., index);". The
	* index must be between 0 and numChildren. For example, to add myShape under otherShape in the display list, you could use:
	* container.addChildAt(myShape, container.getChildIndex(otherShape)). This would also bump otherShape's index up by one.
	* Returns the last child that was added, or the last child if multiple children were added. Fails silently if the index
	* is out of range.
	* @method addChildAt
	* @param {DisplayObject} child The display object to add.
	* @param {Number} index The index to add the child at.
	* @return {DisplayObject} The child that was added, or the last child if multiple children were added.
	**/
	public function addChildAt (child:DisplayObject, index:Float):DisplayObject;
	
	/**
	* Returns a clone of this Container. Some properties that are specific to this instance's current context are reverted to
	* their defaults (for example .parent).
	* @param {Boolean} recursive If true, all of the descendants of this container will be cloned recursively. If false, the
	* properties of the container will be cloned, but the new instance will not have any children.
	* @return {Container} A clone of the current Container instance.
	**/
	override public function clone (?recursive:Bool):DisplayObject;
	
	/**
	* Returns true if the specified display object either is this container or is a descendent.
	* (child, grandchild, etc) of this container.
	* @method contains
	* @param {DisplayObject} child The DisplayObject to be checked.
	* @return {Boolean} true if the specified display object either is this container or is a descendent.
	**/
	public function contains (child:DisplayObject):Bool;
	
	/**
	* Draws the display object into the specified context ignoring it's visible, alpha, shadow, and transform.
	* Returns true if the draw was handled (useful for overriding functionality).
	* NOTE: This method is mainly for internal use, though it may be useful for advanced uses.
	* @method draw
	* @param {CanvasRenderingContext2D} ctx The canvas 2D context object to draw into.
	* @param {Boolean} ignoreCache Indicates whether the draw operation should ignore any current cache.
	* For example, used for drawing the cache (to prevent it from simply drawing an existing cache back
	* into itself).
	**/
	override public function draw (ctx:CanvasRenderingContext2D, ?ignoreCache:Bool):Void;
	
	/**
	* Returns the child at the specified index.
	* @method getChildAt
	* @param {Number} index The index of the child to return.
	* @return {DisplayObject} The child at the specified index.
	**/
	public function getChildAt (index:Float):DisplayObject;
	
	/**
	* Returns the index of the specified child in the display list, or -1 if it is not in the display list.
	* @method getChildIndex
	* @param {DisplayObject} child The child to return the index of.
	* @return {Number} The index of the specified child. -1 if the child is not found.
	**/
	public function getChildIndex (child:DisplayObject):Float;
	
	/**
	* Returns the number of children in the display list.
	* @method getNumChildren
	* @return {Number} The number of children in the display list.
	**/
	public function getNumChildren ():Int;
	
	/**
	* Returns an array of all display objects under the specified coordinates that are in this container's display list.
	* This routine ignores any display objects with mouseEnabled set to false. The array will be sorted in order of visual
	* depth, with the top-most display object at index 0. This uses shape based hit detection, and can be an expensive operation
	* to run, so it is best to use it carefully. For example, if testing for objects under the mouse, test on tick (instead of on
	* mousemove), and only if the mouse's position has changed.
	* @method getObjectsUnderPoint
	* @param {Number} x The x position in the container to test.
	* @param {Number} y The y position in the container to test.
	* @return {Array[DisplayObject]} An Array of DisplayObjects under the specified coordinates.
	**/
	public function getObjectsUnderPoint (x:Float, y:Float):Array<DisplayObject>;
	
	/**
	* Similar to getObjectsUnderPoint(), but returns only the top-most display object. This runs significantly faster than
	* getObjectsUnderPoint(), but is still an expensive operation. See getObjectsUnderPoint() for more information.
	* @method getObjectUnderPoint
	* @param {Number} x The x position in the container to test.
	* @param {Number} y The y position in the container to test.
	* @return {DisplayObject} The top-most display object under the specified coordinates.
	**/
	public function getObjectUnderPoint (x:Float, y:Float):DisplayObject;
	
	/**
	* Tests whether the display object intersects the specified local point (ie. draws a pixel with alpha > 0 at the specified
	* position). This ignores the alpha, shadow and compositeOperation of the display object, and all transform properties
	* including regX/Y.
	* @method hitTest
	* @param {Number} x The x position to check in the display object's local coordinates.
	* @param {Number} y The y position to check in the display object's local coordinates.
	* @return {Boolean} A Boolean indicating whether there is a visible section of a DisplayObject that overlaps the specified
	* coordinates.
	**/
	override public function hitTest (x:Float, y:Float):Bool;
	
	/**
	* Returns true or false indicating whether the display object would be visible if drawn to a canvas.
	* This does not account for whether it would be visible within the boundaries of the stage.
	* NOTE: This method is mainly for internal use, though it may be useful for advanced uses.
	* @method isVisible
	* @return {Boolean} Boolean indicating whether the display object would be visible if drawn to a canvas
	**/
	override public function isVisible ():Bool;
	
	/**
	* Removes all children from the display list.
	* @method removeAllChildren
	**/
	public function removeAllChildren ():Void;
	
	/**
	* Removes the specified child from the display list. Note that it is faster to use removeChildAt() if the index is already
	* known. You can also remove multiple children, such as "removeChild(child1, child2, ...);". Returns true if the child
	* (or children) was removed, or false if it was not in the display list.
	* @method removeChild
	* @param {DisplayObject} child The child to remove.
	* @return {Boolean} true if the child (or children) was removed, or false if it was not in the display list.
	**/
	public function removeChild (child:DisplayObject):Bool;
	
	/**
	* Removes the child at the specified index from the display list, and sets its parent to null. You can also remove multiple
	* children, such as "removeChildAt(2, 7, ...);". Returns true if the child (or children) was removed, or false if any index
	* was out of range.
	* @param {Number} index The index of the child to remove.
	* @return {Boolean} true if the child (or children) was removed, or false if any index was out of range.
	**/
	public function removeChildAt (index:Float):Void;
	
	/**
	* Changes the depth of the specified child. Fails silently if the child is not a child of this container, or the index is out of range.
	* @param {DisplayObject} child
	* @param {Number} index
	* @method setChildIndex
	**/
	public function setChildIndex (child:Dynamic, index:Dynamic):Void;
	
	/**
	* Performs an array sort operation on the child list.
	* @method sortChildren
	* @param {Function} sortFunction the function to use to sort the child list. See javascript's Array.sort documentation
	* for details.
	**/
	public function sortChildren (sortFunction:Dynamic):Void;
	
	/**
	* Swaps the specified children's depth in the display list. Fails silently if either child is not a child of this Container.
	* @param {DisplayObject} child1
	* @param {DisplayObject} child2
	* @method swapChildren
	**/
	public function swapChildren (child1:Dynamic, child2:Dynamic):Void;
	
	/**
	* Swaps the children at the specified indexes. Fails silently if either index is out of range.
	* @param {Number} index1
	* @param {Number} index2
	* @method swapChildrenAt
	**/
	public function swapChildrenAt (index1:Dynamic, index2:Dynamic):Void;
	
	/**
	* Returns a string representation of this object.
	* @method toString
	* @return {String} a string representation of the instance.
	**/
	override public function toString ():String;

}