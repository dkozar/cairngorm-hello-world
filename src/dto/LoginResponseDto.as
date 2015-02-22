package dto
{
	import com.dankokozar.dto.BaseDto;
	
	[Bindable]
	public class LoginResponseDto extends BaseDto {
		
		public var loggedInUser:UserDto;
		//public var mainWebServiceUrl:String = "";
		
		public function LoginResponseDto(obj:Object = null){
			super(obj);
			if (obj != null){
				this.loggedInUser = new UserDto(obj.loggedInUser);
				//this.mainWebServiceUrl = obj.mainWebServiceUrl;
			}					
		}
	}
}