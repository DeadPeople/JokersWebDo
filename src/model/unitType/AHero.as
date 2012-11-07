package model.unitType
{
	public class AHero extends Addition
	{
		public static const _aPower:String = "POW";
		public static const _aAgile:String = "AGI";
		public static const _aTelent:String = "TEL";
		
		public function AHero() {
			_map[_aPower] = 0;
			_map[_aAgile] = 0;
			_map[_aTelent] = 0;
		}
	}
}