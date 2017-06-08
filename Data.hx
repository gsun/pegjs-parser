typedef Loc = {
	var offset:Int;
	var line:Int;
	var column:Int;
}

typedef Location = {
	var start:Loc;
	var end:Loc;
}

typedef Init = {
	var type:String;
	var code:String;
}

typedef Expr = {
	var type:String;
	@:optional var name:String;
	@:optional var expr:Expr;
	@:optional var elements:Array<Expr>;
	@:optional var code:String;
	@:optional var label:String;
	@:optional var value:String;
	@:optional var ignoreCase:Bool;
	@:optional var inverted:Bool;
	@:optional var parts:Array<String>;
	var loc:Location;	
}

typedef Rule = {
	var type:String;
    var name:String;
	var expression:Expr;
	var loc:Location;	
}

typedef Data = {
    var type:String;
    var initializer:Init;
	var rules:Array<Rule>;
}