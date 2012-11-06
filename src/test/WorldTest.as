package test
{
	import enum.Enum;
	
	import flexunit.framework.Assert;
	
	import game.World;
	
	import model.Hero;
	import model.Player;
	
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
//			Assert.fail("Test method Not yet implemented");
			// init world
			var world:World = new World();
			
			// add players
			var player1:Player = new Player("近卫1",1);
			player1.initDate();
			var player2:Player = new Player("天灾1",2);
			player2.initDate();
			
			world.addPlayer(player1);
			world.addPlayer(player2);
			
			// init hero
			var hero1:Hero = new Hero();
			hero1.initDate();
			var hero2:Hero = new Hero();
			hero2.initDate();
			
			player1.addHero(hero1);
			player2.addHero(hero2);
			
			// add hero in world
			world.addUnit(hero1);
			world.addUnit(hero2);
			world.moveUnitToTheRegion(hero1, Enum.R_Sentinel_heroStart);
			world.moveUnitToTheRegion(hero1, Enum.R_Scourge_heroStart);
			
			
			assertTrue(true);
		}
	}
}