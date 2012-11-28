package js;

@:native ("Date")
extern class Date {

	public function getDate ():Float;
	public function getDay ():Float;
	public function getFullYear ():Float;
	public function getHours ():Float;
	public function getMilliseconds ():Float;
	public function getMinutes ():Float;
	public function getMonth ():Float;
	public function getSeconds ():Float;
	public function getTime ():Float;
	public function getTimezoneOffset ():Float;
	public function getUTCDate ():Float;
	public function getUTCDay ():Float;
	public function getUTCFullYear ():Float;
	public function getUTCHours ():Float;
	public function getUTCMilliseconds ():Float;
	public function getUTCMinutes ():Float;
	public function getUTCMonth ():Float;
	public function getUTCSeconds ():Float;
	public function new (?year:Dynamic, ?month:Float, ?day:Float, ?hour:Float, ?minute:Float, ?second:Float, ?millisecond:Float):Void;
	public function setDate (dayValue:Float):Float;
	public function setFullYear (yearValue:Float, monthValue:Float, dayValue:Float):Float;
	public function setHours (hoursValue:Float, minutesValue:Float, secondsValue:Float, msValue:Float):Float;
	public function setMilliseconds (millisecondsValue:Float):Float;
	public function setMinutes (minutesValue:Float, secondsValue:Float, msValue:Float):Float;
	public function setMonth (monthValue:Float, dayValue:Float):Float;
	public function setSeconds (secondsValue:Float, msValue:Float):Float;
	public function setTime (timeValue:Float):Float;
	public function setUTCDate (dayValue:Float):Float;
	public function setUTCFullYear (yearValue:Float, monthValue:Float, dayValue:Float):Float;
	public function setUTCHours (hoursValue:Float, minutesValue:Float, secondsValue:Float, msValue:Float):Float;
	public function setUTCMilliseconds (millisecondsValue:Float):Float;
	public function setUTCMinutes (minutesValue:Float, secondsValue:Float, msValue:Float):Float;
	public function setUTCMonth (monthValue:Float, dayValue:Float):Float;
	public function setUTCSeconds (secondsValue:Float, msValue:Float):Float;
	public function toDateString ():String;
	public function toLocaleDateString ():String;
	public function toLocaleString ():String;
	public function toLocaleTimeString ():String;
	public function toString ():String;
	public function toTimeString ():String;
	public function toUTCString ():String;
	public function valueOf ():Float;
	public static function now ():Float;
	public static function parse (dateString:String):Float;
	public static function UTC (year:Float, month:Float, date:Float, hrs:Float, min:Float, sec:Float, ms:Float):Float;

}