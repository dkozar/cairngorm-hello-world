package command
{
	import business.PublicDelegate;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	
	import mx.controls.Alert;
	import mx.rpc.IResponder;
	
	public class HelloWorldCommand implements ICommand, IResponder
	{
		public function execute(event:CairngormEvent):void
		{
			var delegate:PublicDelegate = new PublicDelegate(this);
          	delegate.helloWorld();
		}
		
		//----------------------------------------------------------------------------

		public function result(event:Object): void
		{            
			mx.controls.Alert.show(event.result.toString());
		}
	   
		//----------------------------------------------------------------------------

		public function fault(event:Object): void
		{
			mx.controls.Alert.show("Web service error!");
		}

	}
}