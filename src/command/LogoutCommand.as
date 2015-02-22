package command
{
	import business.PublicDelegate;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	
	import dto.LoginResponseDto;
	
	import model.ModelLocator;
	
	import mx.controls.Alert;
	import mx.rpc.IResponder;

	public class LogoutCommand implements ICommand, IResponder
	{
		protected var _model:ModelLocator = ModelLocator.getInstance();
		
		public function execute(event:CairngormEvent):void
		{
			var delegate:PublicDelegate = new PublicDelegate(this);
       		delegate.logout();
		}
		
		//----------------------------------------------------------------------------

		public function result(o:Object): void
		{            
		    var response:LoginResponseDto = new LoginResponseDto(o.result);
			
			if (!response.isError){
				// set a user data in the model
				_model.loggedInUser = null;
				// go back to first screen
				_model.selectedPanelIndex = 0;
				
		   	} else {
		   		mx.controls.Alert.show(response.errorMessage, "Logout error");
		   	}		
		}
	   
		//----------------------------------------------------------------------------

		public function fault(event:Object): void
		{
			mx.controls.Alert.show("Web service error!");
		}
	}
}