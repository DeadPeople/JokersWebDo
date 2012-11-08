package model
{
	import flash.geom.Point;
	
	import model.skill.Skill;
	import model.unitType.Addition;
	
	import mx.collections.ArrayList;

	public class Unit
	{
		public var _player:Player;
		
		public var _name:String;							// 名称
		public var _uid:uint;								// 单位类别
		public var _position:Point = new Point(0, 0);		// 坐标
		public var _angle:Number;							// 角度
		public var _hp:Number;								// 生命值
		public var _mp:Number;								// 魔法值
		public var _speed:Number;							// 移动速度
		public var _physicsDefense:Number;					// 物理护甲
		public var _magicDefense:Number;					// 魔法护甲
		
		public var _skills:ArrayList;						// 技能列表
		public var _addition:Addition;
		
		public function Unit()
		{
			_skills = new ArrayList();
			initDate();
		}
		
		protected function initDate():void { // 初始化单位数据
			
		}
		
		public function addSkill(skill:Skill):void {
			_skills.addItem(skill);
		}
		
		//-------- 获取属性  ----------
		// 单位和点之间的距离
		public function getDistance(position:Point):Number {
			return Point.distance(_position, position);
		}
	}
}