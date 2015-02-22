package events
{
	import com.adobe.cairngorm.control.CairngormEvent;
	
	import control.AuthController;
	
	import dto.LoginDto;

	public class CLoginEvent extends CairngormEvent
	{
		public var loginDto:LoginDto;
		
		public function CLoginEvent(loginDto:LoginDto)
		{
			super(AuthController.EVENT_LOGIN);
			this.loginDto = loginDto;
		}
	}
}