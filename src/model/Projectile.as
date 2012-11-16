package model
{
	import model.skill.Skill;

	public class Projectile	// 投射物
	{
		public var _target:Unit;		// 投射物目标
		public var _skill:Skill;		// 绑定的技能，当投射物击中目标，则发动效果
		public var _speed:Number;		// 投射物移动速度，0说明立刻击中（表示技能必中）
		public var _pid:uint;			// 投射物类别
		
		public function Projectile()
		{
			
		}
	}
}