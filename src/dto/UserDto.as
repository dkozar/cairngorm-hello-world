package dto
{
	[Bindable]
	public class UserDto
	{
		public var userName:String = "";
		public var email:String = "";
		public var password:String = "";
		public var isApproved:Boolean = true;
		public var isLockedOut:Boolean = false;
		public var isAdmin:Boolean = false;
		
		public function UserDto(obj:Object = null)
		{
			if (obj != null){	
				this.userName = obj.userName;
				this.password = obj.password;
				this.email = obj.email;
				this.isApproved = obj.isApproved;
				this.isLockedOut = obj.isLockedOut;
				this.isAdmin = obj.isAdmin;
			}
		}
	}
}