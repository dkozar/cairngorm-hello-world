package com.dankokozar.dto
{
	[Bindable]
	public class BaseDto
	{
        public var isError:Boolean = false;
        public var errorMessage:String = "";
        public var content:Object;
		
		public function BaseDto(obj:Object = null)
		{
			if (obj != null){
				this.isError = obj.isError;
				this.errorMessage = obj.errorMessage;
				this.content = obj.content;
			}	
		}
		
	}
}