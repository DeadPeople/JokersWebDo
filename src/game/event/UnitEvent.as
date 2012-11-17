package game.event
{
	import flash.events.Event;
	
	import model.Unit;
	import model.skill.Skill;
	
	public class UnitEvent extends Event
	{
		public static const UNIT_CLOSE_TO:String = "UNIT_CLOSE_TO";
		public static const UNIT_LEAVE_OFF:String = "UNIT_LEAVE_OFF";
		
		public var _skill:Skill;			// 注册事件的技能
		public var _func:Function;			// 关联的相应方法
		public var _unit:Unit;
		public var _target:Unit;
		public var _distance:Number;		// 用于存储数据，例如单位间距离
		
		public function UnitEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
		public function initCloseTo(unit:Unit, distance:Number, func:Function, skill:Skill):void {
			_unit = unit;
			_distance = distance;
			_func = func;
			_skill = skill;
		}
		
		public function initLeaveOff(unit:Unit, distance:Number, func:Function, skill:Skill):void {
			_unit = unit;
			_distance = distance;
			_func = func;
			_skill = skill;
		}
	}
}