using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WPF_SE150420_VoTuanKhanh.Models;

namespace WPF_SE150420_VoTuanKhanh.DataAccess
{
    public class AccountUserDAO
    {
        public static AccountUserDAO? instance { get; set; }
        public static readonly object instanceLock = new object();
        public AccountUserDAO() { }
        public static AccountUserDAO Instance
        {
            get
            {
                lock (instanceLock)
                {
                    if (instance == null)
                    {
                        instance = new AccountUserDAO();
                    }
                    return instance;
                }
            }
        }

        public AccountUser CheckUserLogin(string username, string password)
        {
            AccountUser user = null;
            try
            {
                using BookPublisherContext context = new BookPublisherContext();
                user = context.AccountUsers.SingleOrDefault(u => u.UserId == username && u.UserPassword == password);
                
            }catch(Exception e)
            {
                throw new Exception(e.Message);
            }
            return user;
        }

        public AccountUser GetUserByUsername(string userName)
        {
            AccountUser user = null;
            try
            {
                using BookPublisherContext context = new BookPublisherContext();
                user = context.AccountUsers.SingleOrDefault(u => u.UserId.Equals(userName));
            }catch(Exception e)
            {
                throw new Exception(e.Message);
            }
            return user;
        } 

        public void AddUser(AccountUser user)
        {
            try
            {
                using BookPublisherContext context = new BookPublisherContext();
                context.AccountUsers.Add(user);
                context.SaveChanges();
            }
            catch(Exception e)
            {
                throw new Exception(e.Message);
            }
        }

        public IEnumerable<AccountUser> GetListUsers(string searchName)
        {
            var usersList = new List<AccountUser>();
            try
            {
                using BookPublisherContext context = new BookPublisherContext();
                return context.AccountUsers.Where(u => u.UserFullName.ToLower().Contains(searchName.ToLower())).ToList();
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
        }

        //public IEnumerable<AccountUser> GetListUsersByName(string nameSearch)
        //{
        //    var usersList = new List<AccountUser>();
        //    try
        //    {
        //        using BookPublisherContext context = new BookPublisherContext();
        //        usersList = context.AccountUsers.Where(u => u.UserFullName.Contains(nameSearch)).ToList();
        //    }
        //    catch (Exception e)
        //    {
        //        throw new Exception(e.Message);
        //    }
        //    return usersList;
        //}

        public void DeleteUser(AccountUser selectedUser)
        {
            try
            {
                using BookPublisherContext context = new BookPublisherContext();
                context.AccountUsers.Remove(selectedUser);
                context.SaveChanges();
            }
            catch(Exception e)
            {
                throw new Exception(e.Message);
            }
        }
    }
}
