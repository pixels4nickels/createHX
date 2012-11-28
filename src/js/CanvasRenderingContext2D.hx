// from http://code.google.com/p/udraw/
/**
 * ...
 * @author Franco Ponticelli
 */

package js;

import js.Dom;

extern class CanvasRenderingContext2D
{
	public var width : Float;
	public var height : Float;
	
	// back-reference
	public var canvas(default, null) : DomCanvas;
	
	// state
	public function save() : Void;
	public function restore() : Void;
	
	public function getContext(context:String) : Dynamic;
	
	// transformations
	public function scale(x : Float, y : Float) : Void;
	public function rotate(angle : Float) : Void;
	public function translate(x : Float, y : Float) : Void;
	public function transform(m11 : Float, m12 : Float, m21 : Float, m22 : Float, dx : Float, dy : Float) : Void;
	public function setTransform(m11 : Float, m12 : Float, m21 : Float, m22 : Float, dx : Float, dy : Float) : Void;
	
	// compositing
	public var globalAlpha : Float;
	public var globalCompositeOperation : String;
	
	// colors and styles
	public var strokeStyle : Dynamic;
	public var fillStyle : Dynamic;
	
	// line caps/joins
	public var lineWidth : Float; // (default 1)
	public var lineCap : String; // "butt", "round", "square" (default "butt")
	public var lineJoin : String; // "round", "bevel", "miter" (default "miter")
	public var miterLimit : Float; // (default 10)
	
	// line API
	public function beginPath() : Void;
	public function closePath() : Void;
	public function moveTo(x : Float, y : Float) : Void;
	public function lineTo(x : Float, y : Float) : Void;
	public function quadraticCurveTo(cpx : Float, cpy : Float, x : Float, y : Float) : Void;
	public function bezierCurveTo(cp1x : Float, cp1y : Float, cp2x : Float, cp2y : Float, x : Float, y : Float) : Void;
	public function arcTo(x1 : Float, y1 : Float, x2 : Float, y2 : Float, radius : Float) : Void;
	public function rect(x : Float, y : Float, w : Float, h : Float) : Void;
	public function arc(x : Float, y : Float, radius : Float, startAngle : Float, endAngle : Float, anticlockwise : Bool) : Void;
	public function fill() : Void;
	public function stroke() : Void;
	public function clip() : Void;
	public function isPointInPath(x : Float, y : Float) : Bool;
	
	// rects
	public function clearRect(x : Float, y : Float, w : Float, h : Float) : Void;
	public function fillRect(x : Float, y : Float, w : Float, h : Float) : Void;
	public function strokeRect(x : Float, y : Float, w : Float, h : Float) : Void;
}