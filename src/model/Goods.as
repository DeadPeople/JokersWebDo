package model
{
	import model.skill.Skill;
	
	import mx.collections.ArrayList;

	public class Goods
	{
		public var _gid:uint;
		public var _skills:ArrayList;
		
		public function Goods(gid:uint)
		{
			_skills = new ArrayList();
			_gid = gid;
		}
		
		public function addSkill(skill:Skill):void {
			_skills.addItem(skill);
		}
	}
}