package control
{
	import com.adobe.cairngorm.control.FrontController;
	
	import command.HelloWorldCommand;
	import command.LoginCommand;
	import command.LogoutCommand;
	
	public class AuthController extends FrontController 
	{
		public function AuthController():void
		{
			initializeCommands();
		}
		
		//----------------------------------------------------------------------------

	    public function initializeCommands():void
	    {
	    	addCommand(AuthController.EVENT_HELLO_WORLD, HelloWorldCommand);
	    	addCommand(AuthController.EVENT_LOGIN, LoginCommand);
	    	addCommand(AuthController.EVENT_LOGOUT, LogoutCommand);
	    }

	    //-------------------------------------------------------------------------
	    public static var EVENT_HELLO_WORLD:String = "EVENT_HELLO_WORLD";	    
	    public static var EVENT_LOGIN:String = "EVENT_LOGIN";
	    public static var EVENT_LOGOUT:String = "EVENT_LOGOUT";
	    
	}
}