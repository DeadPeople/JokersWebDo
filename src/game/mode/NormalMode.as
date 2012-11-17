package game.mode{
	import game.Region;
	import game.World;
	
	import model.Goods;
	import model.Player;
	import model.Unit;
	import model.skill.SShoper;
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
			
			// 创建游戏区域
			// TODO: 创建区域
			var region:Region;
			region = new Region(R_Sentinel_heroStart);
			region = new Region(R_Scourge_heroStart);
			region = new Region(R_Sentinel_armyUp);
			region = new Region(R_Sentinel_armyMid);
			region = new Region(R_Sentinel_armyDown);
			region = new Region(R_Scourge_armyUp);
			region = new Region(R_Scourge_armyMid);
			region = new Region(R_Scourge_armyDown);
			
			
			// 创建售货商人
			// TODO: 创建商人
			var shopSe:Unit = _world.createUnitForPlayer(0, _world._playerNeutral);
			var sshoper:SShoper = new SShoper(shopSe);
			sshoper.addGood(new Goods(0));
			shopSe.addSkill(sshoper);
			
			
		}
		
		// 初始化玩家数据
		public override function initPlayer(player:Player):void {
			player._money = 875;
		}
		
		//--------------------------------------------------
		// 玩家选择英雄
		public function selectHero(uid:uint, player:Player):void {
			_world.createHeroForPlayer(uid, player);
			
			// TODO: 移动英雄到对应位置
		}
	}
}