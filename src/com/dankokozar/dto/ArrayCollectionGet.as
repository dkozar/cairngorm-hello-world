package com.dankokozar.dto
{
import mx.collections.ArrayCollection;
	
	[Bindable]
	public class ArrayCollectionGet extends BaseDto
	{
		public var collection:ArrayCollection;
		
		public function ArrayCollectionGet(o:Object = null)
		{
			super(o);
			if (o != null){
				this.collection = o.collection;
			}
		}
		
	}
}