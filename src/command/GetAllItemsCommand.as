package command
{
	import business.MainDelegate;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.dankokozar.dto.ArrayCollectionGet;
	
	import dto.LoginResponseDto;
	
	import model.ModelLocator;
	
	import mx.controls.Alert;
	import mx.rpc.IResponder;

	public class GetAllItemsCommand implements ICommand, IResponder
	{
		protected var _model:ModelLocator = ModelLocator.getInstance();
		
		public function execute(event:CairngormEvent):void
		{
			var delegate:MainDelegate = new MainDelegate(this);
       		delegate.getAllItems();
		}
		
		//----------------------------------------------------------------------------

		public function result(o:Object): void
		{            
		    var response:ArrayCollectionGet = new ArrayCollectionGet(o.result);
			
			if (!response.isError){
				// ger a user data
				_model.dpItems = response.collection;
				
		   	} else {
		   		mx.controls.Alert.show(response.errorMessage, "Error");
		   	}		
		}
	   
		//----------------------------------------------------------------------------

		public function fault(event:Object): void
		{
			mx.controls.Alert.show("Web service error!");
		}
	}
}