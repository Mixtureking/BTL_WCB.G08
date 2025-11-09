namespace BTL_WCB.G08
{
    public class NguoiDung
    {
        public string Username { get; set; }
        public string Password { get; set; }
        public string Role { get; set; }

        public NguoiDung(string username, string password)
        {
            Username = username;
            Password = password;

            if (username.ToLower().Contains("admin"))
                Role = "Admin";
            else
                Role = "User";
        }

        public bool IsValid()
        {
            return !string.IsNullOrEmpty(Username) && !string.IsNullOrEmpty(Password);
        }
    }
}
