package game
{
	import flash.events.Event;
	import flash.geom.Point;
	
	import game.event.UnitEvent;
	import game.mode.GameMode;
	
	import model.Player;
	import model.Unit;
	import model.unitType.AHero;
	
	import mx.collections.ArrayCollection;
	import mx.collections.ArrayList;
	import mx.controls.Alert;

	public class World
	{
		public var _mode:GameMode;			// 游戏模式
		
		public var _players:ArrayList;
		public var _units:ArrayList;
		public var _regions:ArrayList;
		
		public var _playerNeutral:Player;
		public var _playerEnemy:Player;
		
		// 系统数据
		public var _lastUnit:Unit;
		
		public function World(mode:GameMode)
		{
			// 创建中立，中立敌对玩家
			_playerNeutral = new Player("Neutral", 0);
			_playerEnemy = new Player("Enemy", -1);
			
			_players = new ArrayList();
			_units = new ArrayList();
			_regions = new ArrayList();
			
			_mode = mode;
			_mode.init(this);
		}
		
		public function addPlayer(player:Player):void {
			_mode.initPlayer(player);
			_players.addItem(player);
		}
		
		public function addRegion(region:Region):void {
			_regions.addItem(region);
		}
		
		// 创建一个单位
		public function createUnitForPlayer(uid:uint, player:Player, 
											position:Point = null, angle:Number = 0):Unit {
			var unit:Unit = new Unit();
			unit._player = player;
			if(position != null) unit._position = position;
			unit._angle = angle;
			
			_lastUnit = unit;
			return unit;
		}
		
		// 创建一个英雄
		public function createHeroForPlayer(uid:uint, player:Player,
											position:Point = null, angle:Number = 0):Unit {
			var unit:Unit = createUnitForPlayer(uid, player, position, angle);
			unit._addition = new AHero();
			player.addHero(unit);
			return unit;
		}
		
		// 事件注册
		public function addUnitEventListener(unit:Unit, event:Event, func:Function):void {
			if(event is UnitEvent) {		// 如果是单位事件
				// TODO: 添加单位事件处理
			}
		}
	}
}