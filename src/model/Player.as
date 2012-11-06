package model
{
	import mx.collections.ArrayList;

	public class Player
	{
		public var _name:String;		// 姓名
		public var _heros:ArrayList;	// 英雄列表 
		public var _money:uint;			// 金钱
		public var _teamId:int;			// 组队ID
		
		public function Player(name:String, teamId:int = 0)
		{
			this._name = name;
			this._teamId = teamId;
			_heros = new ArrayList();
		}
		
		public function initDate():void {			// 初始化玩家数据
			_money = 0;					// 金钱：0
		}
		
		public function addHero(hero:Hero):void {	// 添加英雄
			_heros.addItem(hero);
		}
	}
}