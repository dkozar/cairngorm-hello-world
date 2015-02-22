package com.dankokozar.dto
{
import mx.collections.ArrayCollection;
	
	[Bindable]
	public class ItemGet extends BaseDto
	{
		public var collection:ArrayCollection;
		
		public function ItemGet(o:Object = null)
		{
			super(o);
			if (o != null){
				this.collection = o.collection;
			}
		}
		
	}
}