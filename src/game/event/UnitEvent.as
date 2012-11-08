package game.event
{
	import flash.events.Event;
	
	import model.Unit;
	
	public class UnitEvent extends Event
	{
		public static const UNIT_CLOSE_TO:String = "UNIT_CLOSE_TO";
		public static const UNIT_LEAVE_OF:String = "UNIT_LEAVE_OF";
		
		public var _unit:Unit;
		public var _target:Unit;
		
		public function UnitEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	}
}