package business
{      
    import com.adobe.cairngorm.business.ServiceLocator;
    
    import dto.LoginDto;
    
    import model.ModelLocator;
    
    import mx.rpc.AsyncToken;
    import mx.rpc.IResponder;
    import mx.rpc.events.FaultEvent;
    import mx.rpc.events.ResultEvent;
    import mx.rpc.soap.WebService;
    
    public class MainDelegate 
    {
        private var responder: IResponder;
        private var service: WebService;
        private var _model:ModelLocator = ModelLocator.getInstance(); 
        
        public function MainDelegate(responder: IResponder)
        {
        	service = ServiceLocator.getInstance().getWebService("mainWebService") as WebService;
            this.responder = responder;
        }

        protected function onResult(event:ResultEvent):void
        {
            responder.result(event);
        }
        protected function onFault(event:FaultEvent):void
        {
            responder.fault(event);
        }
            
        //----------------------------------------------------------------------------
        
       	public function helloWorld() : void
        {
			var token:AsyncToken = service.HelloWorld();
			token.resultHandler = this.onResult;
			token.faultHandler = this.onFault;
        }
        
        public function getAllItems():void
        {
			var token:AsyncToken = service.GetAllItems();
			token.resultHandler = this.onResult;
			token.faultHandler = this.onFault;
        }
        
        public function getItem(id:String):void
        {
			var token:AsyncToken = service.GetItem(id);
			token.resultHandler = this.onResult;
			token.faultHandler = this.onFault;
        }
	}
}  