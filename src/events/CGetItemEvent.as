package events
{
	import com.adobe.cairngorm.control.CairngormEvent;
	
	import control.MainController;

	public class CGetItemEvent extends CairngormEvent
	{
		public var id:String;

		public function CGetItemEvent(id:String)
		{
			super(MainController.EVENT_GET_ITEM);
			this.id = id;
		}
	}
}