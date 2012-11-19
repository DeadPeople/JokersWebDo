package model.skill
{
	import game.World;
	import game.event.UnitEvent;
	
	import model.Goods;
	import model.Unit;
	
	import mx.collections.ArrayList;
	import mx.controls.Alert;

	public class SShoper extends Skill
	{
		public static const DISTANCE:Number = 500;
		
		public var _goodses:ArrayList;
		
		public function SShoper(unit:Unit)
		{
			super(unit);
			
			_goodses = new ArrayList();
		}
		
		public function addGood(goods:Goods):void {
			_goodses.addItem(goods);
		}
		
		// event answer
		public override function skillAdded(unit:Unit):void {
			var ue:UnitEvent = new UnitEvent(UnitEvent.UNIT_CLOSE_AND_LEAVE);
			ue.initCloseAndLeave(unit, DISTANCE, addGoodInList, removeGoodInList, this); 
			World._WORLD.addWorldEvent(ue);
		}
		
		public function addGoodInList(unit:Unit, target:Unit, skill:Skill = null):void {
			// TODO: 显示购物窗口 & 把可以购买的物品列表放入购物窗口
		}
		
		public function removeGoodInList(unit:Unit, target:Unit, skill:Skill = null):void {
			// TODO: 在物品列表中移出物品
		}
	}
}