package model.skill
{
	import model.Unit;

	public class Skill
	{
		public function Skill(unit:Unit)
		{
		}
		
		// 技能添加给单位时触发
		public function skillAdded(unit:Unit):void {
			
		}
		
		// 对目标产生技能效果，比如投射物打中目标，则对目标发动效果
		public function targetSkill(unit:Unit, target:Unit, skill:Skill = null):void {
			
		}
	}
}