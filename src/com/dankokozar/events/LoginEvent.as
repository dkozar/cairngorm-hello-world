package com.dankokozar.events
{
	import flash.events.Event;
	
	public class LoginEvent extends Event
	{
		public var userName:String;
		public var password:String;
		
		public function LoginEvent(userName:String, password:String)
		{
			super("login");
			this.userName = userName;
			this.password = password;
		}
	}
}