using System;

namespace BTL_WCB.G08
{
    [Serializable]
    public class UserAccount
    {
        public string Username { get; set; }
        public string Password { get; set; }
        public string FullName { get; set; }
        public string Email { get; set; }
        public DateTime CreatedAt { get; set; }
    }
}
