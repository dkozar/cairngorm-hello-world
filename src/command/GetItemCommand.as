package command
{
	import business.MainDelegate;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.dankokozar.dto.BaseDto;
	
	import dto.ItemDto;
	
	import events.CGetItemEvent;
	
	import model.ModelLocator;
	
	import mx.controls.Alert;
	import mx.rpc.IResponder;

	public class GetItemCommand implements ICommand, IResponder
	{
		protected var _model:ModelLocator = ModelLocator.getInstance();
		
		public function execute(event:CairngormEvent):void
		{
			var delegate:MainDelegate = new MainDelegate(this);
       		var e:CGetItemEvent = CGetItemEvent(event);
       		delegate.getItem(e.id);
		}
		
		//----------------------------------------------------------------------------

		public function result(o:Object): void
		{            
		    var response:BaseDto = new BaseDto(o.result);
			
			if (!response.isError){
				// ger a user data
				_model.currentItem = new ItemDto(response.content);
				mx.controls.Alert.show("Retreived from server: [" + _model.currentItem.id + ", " + _model.currentItem.name + "]", "Item retreived");			
		   	} else {
		   		mx.controls.Alert.show(response.errorMessage, "GetItem error");
		   	}		
		}
	   
		//----------------------------------------------------------------------------

		public function fault(event:Object): void
		{
			mx.controls.Alert.show("Web service error!");
		}
	}
}