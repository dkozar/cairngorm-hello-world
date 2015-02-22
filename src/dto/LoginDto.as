package dto
{
	[Bindable]
	public class LoginDto
	{
		public var userName:String="";
		public var password:String="";
		
		public function LoginDto(userName:String = null, password:String = null)
		{
			if (userName != null)
				this.userName = userName;
			if (password != null)
				this.password = password;
		}
		
	}
}