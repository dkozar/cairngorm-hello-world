package control
{
	import com.adobe.cairngorm.control.FrontController;
	
	import command.GetAllItemsCommand;
	import command.GetItemCommand;
	
	public class MainController extends FrontController 
	{
		public function MainController():void
		{
			initializeCommands();
		}
		
		//----------------------------------------------------------------------------

	    public function initializeCommands():void
	    {
	    	addCommand(MainController.EVENT_GET_ALL_ITEMS, GetAllItemsCommand);
	    	addCommand(MainController.EVENT_GET_ITEM, GetItemCommand);
	    }

	    //-------------------------------------------------------------------------
	    public static var EVENT_GET_ALL_ITEMS:String = "EVENT_GET_ALL_ITEMS";	    
	    public static var EVENT_GET_ITEM:String = "EVENT_GET_ITEM";
	    
	}
}