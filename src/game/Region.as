package game
{
	import flash.geom.Point;

	public class Region	// 区域，用于单位创建所用，或者事件判定
	{
		public var _name:String; 	// 区域名称
		public var _point1:Point;	// 左上角
		public var _point2:Point;	// 右下角
		
		public function Region()
		{
		}
	}
}