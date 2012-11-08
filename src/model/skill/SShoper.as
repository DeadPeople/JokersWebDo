package model.skill
{
	import flexunit.utils.ArrayList;
	
	import model.Goods;
	import model.Unit;

	public class SShoper extends Skill
	{
		public var _goodses:ArrayList;
		
		public function SShoper(unit:Unit)
		{
			super(unit);
			
			_goodses = new ArrayList();
		}
		
		public function addGood(goods:Goods):void {
			_goodses.addItem(goods);
		}
	}
}