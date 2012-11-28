package preloadjs;

@:native ("createjs.TagLoader")
extern class TagLoader extends AbstractLoader
{
	
	/**
	* The loader that handles loading items using a tag-based approach. There is a built-in
	* fallback for XHR loading for tags that do not fire onload events, such as &lt;script&gt; and &lt;style&gt;.
	* @class TagLoader
	* @constructor
	* @extends AbstractLoader
	* @param {String | Object} item The item to load
	* @param {String} srcAttr The attribute to use as the "source" param, since some tags use different items, such as <style>
	* @param {Boolean} useXHR Determine if the content should be loaded via XHR before being put on the tag.
	*/
	public function new(item:String, srcAttr:String, useXHR:Bool):Void;
	
}