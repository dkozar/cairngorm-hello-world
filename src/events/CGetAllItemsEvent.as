package events
{
	import com.adobe.cairngorm.control.CairngormEvent;
	
	import control.MainController;

	public class CGetAllItemsEvent extends CairngormEvent
	{
		public function CGetAllItemsEvent()
		{
			super(MainController.EVENT_GET_ALL_ITEMS);
		}
	}
}