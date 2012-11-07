package game.mode
{
	import game.World;
	
	import model.Player;

	public class GameMode
	{
		public var _world:World;
		
		public function init(world:World):void {
			_world = world;
		}
		
		// 初始化玩家数据
		public function initPlayer(player:Player):void {
			
		}
	}
}