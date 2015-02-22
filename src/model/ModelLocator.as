package model
{
	
	import com.adobe.cairngorm.model.ModelLocator;
	
	import dto.ItemDto;
	import dto.UserDto;
	
	import mx.collections.ArrayCollection;
	
	[Bindable]
	public class ModelLocator implements com.adobe.cairngorm.model.ModelLocator {
		
		private static var modelLocator : model.ModelLocator;
        		
        public static function getInstance() : model.ModelLocator
        {
            if ( modelLocator == null )
                modelLocator = new model.ModelLocator();
                
            return modelLocator;
       	}
       
       	public function ModelLocator() 
       	{
           if ( modelLocator != null )
                throw new Error("Only one ModelLocator instance should be instantiated");
                
            initialize();
       	}
       
       	private function initialize() : void
       	{
                
       	}
       	
		
		/**
		 * Web Services ******************************************************************
		 * */
		       	
		public var dpUsers:ArrayCollection = new ArrayCollection();
		public var dpItems:ArrayCollection = new ArrayCollection();
		
		public var selectedPanelIndex:int = 0; 
				
		public var loggedInUser:UserDto = null;
		public var currentItem:ItemDto = null;
		
	}
}