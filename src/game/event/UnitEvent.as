package game.event
{
	import flash.events.Event;
	
	import model.Unit;
	import model.skill.Skill;
	
	import mx.collections.ArrayList;
	
	public class UnitEvent extends Event
	{
		public static const UNIT_CLOSE:String = "UNIT_CLOSE";
		public static const UNIT_LEAVE:String = "UNIT_LEAVE";
		public static const UNIT_CLOSE_AND_LEAVE:String = "UNIT_CLOSE_AND_LEAVE";
		
		public var _skill:Skill;			// 注册事件的技能
		public var _func1:Function;			// 关联的相应方法1	单位靠近
		public var _func2:Function;			// 关联的相应方法2	单位离开
		public var _unit:Unit;
		public var _target:Unit;
		public var _distance:Number;		// 用于存储数据，例如单位间距离
		public var _units:ArrayList;		// 用户存储数据，例如单位靠近，离开
		
		public function UnitEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
		public function initClose(unit:Unit, distance:Number, func:Function, skill:Skill):void {
			_unit = unit;
			_distance = distance;
			_func1 = func;
			_skill = skill;
			_units = new ArrayList();
		}
		
		public function initLeave(unit:Unit, distance:Number, func:Function, skill:Skill):void {
			_unit = unit;
			_distance = distance;
			_func2 = func;
			_skill = skill;
			_units = new ArrayList();
		}
		
		public function initCloseAndLeave(unit:Unit, distance:Number, funcIn:Function, funcOut:Function, skill:Skill):void {
			_unit = unit;
			_distance = distance;
			_func1 = funcIn;
			_func2 = funcOut;
			_skill = skill;
			_units = new ArrayList();
		}
	}
}