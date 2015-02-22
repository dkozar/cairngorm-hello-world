package command
{
	import business.PublicDelegate;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	
	import dto.LoginResponseDto;
	
	import events.CLoginEvent;
	
	import model.ModelLocator;
	
	import mx.controls.Alert;
	import mx.rpc.IResponder;
	
	public class LoginCommand implements ICommand, IResponder
	{
		protected var _model:ModelLocator = ModelLocator.getInstance();
		
		public function execute(event:CairngormEvent):void
		{
			var delegate:PublicDelegate = new PublicDelegate(this);
       		var loginEvent:CLoginEvent = CLoginEvent(event);
       		delegate.login(loginEvent.loginDto);
		}
		
		//----------------------------------------------------------------------------

		public function result(o:Object): void
		{            
		    var response:LoginResponseDto = new LoginResponseDto(o.result);
			
			if (!response.isError){
				// set a user data in the model
				_model.loggedInUser = response.loggedInUser;
				// go back to first screen
				_model.selectedPanelIndex = 0;
				
		   	} else {
		   		mx.controls.Alert.show(response.errorMessage, "Login error");
		   	}		
		}
	   
		//----------------------------------------------------------------------------

		public function fault(event:Object): void
		{
			mx.controls.Alert.show("Web service error!");
		}
	}
}