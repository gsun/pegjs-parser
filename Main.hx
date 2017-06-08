import Data;

class Main {
  static function main() {
    var s = sys.io.File.getContent("parser.json");
    var o:Data = haxe.Json.parse(s);
    trace(o.rules);
  }
}