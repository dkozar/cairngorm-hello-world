package com.dankokozar.dto
{

	[Bindable]
	public class ArrayCollectionPut extends BaseDto
	{
		public var collection:Array;
		
		public function ArrayCollectionPut(arr:Array = null)
		{
			if (arr != null){
				this.collection = arr;
			}
		}
		
	}
}