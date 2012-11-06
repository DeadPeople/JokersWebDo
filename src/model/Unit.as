package model
{
	import flash.geom.Point;

	public class Unit
	{
		public var _player:Player;
		
		public var _name:String;			// 名称
		public var _position:Point;			// 坐标
		public var _hp:Number;				// 生命值
		public var _mp:Number;				// 魔法值
		public var _speed:Number;			// 移动速度
		public var _physicsDefense:Number;	// 物理护甲
		public var _magicDefense:Number;	// 魔法护甲
		
		public function Unit()
		{
		}
		
		public function initDate():void { // 初始化单位数据
			
		}
	}
}