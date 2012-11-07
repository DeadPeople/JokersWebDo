package game.mode{
	import game.Region;
	import game.World;
	
	import model.Player;
	import model.unitType.AHero;

	public class NormalMode extends GameMode{
		public static const R_Sentinel_heroStart:String = "P_SEHS";
		public static const R_Scourge_heroStart:String = "P_SCHS";
		public static const R_Sentinel_armyUp:String = "P_SEAU";
		public static const R_Sentinel_armyMid:String = "P_SEAM";
		public static const R_Sentinel_armyDown:String = "P_SEAD";
		public static const R_Scourge_armyUp:String = "P_SCAU";
		public static const R_Scourge_armyMid:String = "P_SCAM";
		public static const R_Scourge_armyDown:String = "P_SCAD";
		
		public override function init(world:World):void {
			super.init(world);
			
			var region:Region;
			region = new Region(R_Sentinel_heroStart);
			region = new Region(R_Scourge_heroStart);
			region = new Region(R_Sentinel_armyUp);
			region = new Region(R_Sentinel_armyMid);
			region = new Region(R_Sentinel_armyDown);
			region = new Region(R_Scourge_armyUp);
			region = new Region(R_Scourge_armyMid);
			region = new Region(R_Scourge_armyDown);
			// TODO: 创建区域
		}
		
		// 初始化玩家数据
		public override function initPlayer(player:Player):void {
			player._money = 875;
		}
		
		//--------------------------------------------------
		// 玩家选择英雄
		public function selectHero(uid:uint, player:Player):void {
			_world.createHeroForPlayer(uid, player);
		}
	}
}