package events
{
	import com.adobe.cairngorm.control.CairngormEvent;
	
	import control.AuthController;

	public class CLogoutEvent extends CairngormEvent
	{
		public function CLogoutEvent()
		{
			super(AuthController.EVENT_LOGOUT);
		}
	}
}