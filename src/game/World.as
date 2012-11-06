package game
{
	import model.Player;
	import model.Unit;
	
	import mx.collections.ArrayCollection;
	import mx.collections.ArrayList;

	public class World
	{
		public var _players:ArrayList;
		public var _units:ArrayList;
		public var _regions:ArrayList;
		
		public function World()
		{
			_players = new ArrayList();
			_units = new ArrayList();
			_regions = new ArrayList();
		}
		
		public function addPlayer(player:Player):void {
			_players.addItem(player);
		}
		
		public function addUnit(unit:Unit):void {
			_units.addItem(unit);
		}
		
		public function addRegion(region:Region):void {
			_regions.addItem(region);
		}
		
		public function moveUnitToTheRegion(unit:Unit, region:String):void {
			//TODO: 把单位移动到目标Region内
		}
	}
}