package game
{
	import flash.geom.Point;

	public class Region	// 区域，用于单位创建所用，或者事件判定
	{
		public var _name:String; 	// 区域名称
		public var _point1:Point;	// 左上角
		public var _point2:Point;	// 右下角
		
		public function Region(name:String, x1:Number = 0, y1:Number = 0, x2:Number = 0, y2:Number = 0)
		{
			_name = name;
			_point1 = new Point(x1, y1);
			_point2 = new Point(x2, y2);
		}
	}
}