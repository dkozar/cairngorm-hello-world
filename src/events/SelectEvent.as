package events
{
	import flash.events.Event;
	
	public class SelectEvent extends Event
	{
		public var id:String;
		
		public function SelectEvent(id:String)
		{
			super("select");
			this.id = id;
		}
	}
}