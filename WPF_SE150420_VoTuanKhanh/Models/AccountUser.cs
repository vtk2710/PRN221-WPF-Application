using System;
using System.Collections.Generic;

#nullable disable

namespace WPF_SE150420_VoTuanKhanh.Models
{
    public partial class AccountUser
    {
        public string UserId { get; set; }
        public string UserPassword { get; set; }
        public string UserFullName { get; set; }
        public int? UserRole { get; set; }

        public AccountUser(string userId, string userPassword, string userFullName, int? userRole)
        {
            UserId = userId;
            UserPassword = userPassword;
            UserFullName = userFullName;
            UserRole = userRole;
        }
    }
}
