package model.unitType
{
	public class AHero extends Addition
	{
		public static const _aStrong:String = "STR";
		public static const _aSwift:String = "SFT";
		public static const _aWise:String = "WIS";
		
		public function AHero() {
			_map[_aStrong] = 0;
			_map[_aSwift] = 0;
			_map[_aWise] = 0;
		}
	}
}