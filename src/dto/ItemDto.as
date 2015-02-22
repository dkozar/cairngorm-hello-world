package dto
{
	[Bindable]
	public class ItemDto
	{
		public var id:String = "";
		public var name:String = "";
		public var description:String = "";
		public var price:Number = -1;
				
		public function ItemDto(o:Object = null)
		{
			if (o != null){	
				this.id = o.id;
				this.name = o.name;
				this.description = o.description;
				this.price = o.price;
			}
		}
	}
}