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
		
		// 单件模式
		public static var _WORLD:World;
		
		// 系统数据
		public var _lastUnit:Unit;
		
		// 系统事件单位组
		public var _unitCloseEventAry:ArrayList;
		public var _unitLeaveEventAry:ArrayList;
		
		public function World(mode:GameMode)
		{
			// 给世界赋值，游戏永远只存在一个世界
			_WORLD = this;
			
			// 创建中立，中立敌对玩家
			_playerNeutral = new Player("Neutral", 0);
			_playerEnemy = new Player("Enemy", -1);
			
			// 初始化数组
			_players = new ArrayList();
			_units = new ArrayList();
			_regions = new ArrayList();
			_unitCloseEventAry = new ArrayList();
			_unitLeaveEventAry = new ArrayList();
			
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
			_units.addItem(unit);
			
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
		public function addWorldEvent(event:Event):void {
			if(event is UnitEvent) {		// 如果是单位事件
				// TODO: 添加单位事件处理
				var ue:UnitEvent = UnitEvent(event);
				switch(ue.type){
					case UnitEvent.UNIT_CLOSE_TO:
						_unitCloseEventAry.addItem(event);
						break;
					case UnitEvent.UNIT_LEAVE_OFF:
						_unitLeaveEventAry.addItem(event);
						break;
				}
			}
		}
		
		//---------------------------------------
		// 刷新世界
		public function refresh():void {
			var ue:UnitEvent;
			var unit:Unit;
			var target:Unit;
			// 单位移动
			
			// 单位事件 - 靠近
			for each(ue in _unitCloseEventAry) {
				unit = ue._unit;
				for each(target in _units) {
					if(Point.distance(unit._position, target._position) <= ue._distance) {
						ue._func(unit, target, ue._skill);
					}
				}
			}
		}
	}
}