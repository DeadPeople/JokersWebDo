package test
{
	import enum.Enum;
	
	import flash.geom.Point;
	
	import flexunit.framework.Assert;
	
	import game.World;
	import game.event.UnitEvent;
	import game.mode.GameMode;
	import game.mode.NormalMode;
	
	import model.Player;
	import model.Unit;
	import model.unitType.AHero;
	
	import org.flexunit.asserts.assertTrue;
	
	public class WorldTest
	{		
		[Before]
		public function setUp():void
		{
		}
		
		[After]
		public function tearDown():void
		{
		}
		
		[BeforeClass]
		public static function setUpBeforeClass():void
		{
		}
		
		[AfterClass]
		public static function tearDownAfterClass():void
		{
		}
		
		[Test]
		public function testWorld():void
		{
			// init world
			var mode:NormalMode = new NormalMode();
			var world:World = new World(mode);
			
			// add players
			var player1:Player = new Player("近卫1",1);
			var player2:Player = new Player("天灾1",2);
			
			world.addPlayer(player1);
			world.addPlayer(player2);
			
			// player select hero
			mode.selectHero(0, player1);
			var hero1:Unit = world._lastUnit;
			mode.selectHero(0, player2);
			var hero2:Unit = world._lastUnit;
			
			// player buy something
			
			assertTrue(true);
		}
	}
}