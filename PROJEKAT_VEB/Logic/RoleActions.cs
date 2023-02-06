using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using PROJEKAT_VEB.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Reflection;
using System.Web;

namespace WebAppUsers.Logic
{
    internal class RoleActions
    {
        internal void AddUserAndRole()
        {

            PROJEKAT_VEB.Models.ApplicationDbContext context = new ApplicationDbContext();
            IdentityResult IdRoleResult;
            IdentityResult IdUserResult;

            var roleStore = new RoleStore<IdentityRole>(context);

            var roleMgr = new RoleManager<IdentityRole>(roleStore);

            if (!roleMgr.RoleExists("canEdit"))
            {
                IdRoleResult = roleMgr.Create(new IdentityRole { Name = "canEdit" });
            }

            var userMgr = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(context));
            var appUser = new ApplicationUser
            {
                UserName = "admin@kibo.com",
                Email = "admin@kibo.com"
            };
            
            
            IdUserResult = userMgr.Create(appUser, "Admin1!");

            
            if (!userMgr.IsInRole(userMgr.FindByEmail("admin@kibo.com").Id, "canEdit"))
            {
                IdUserResult = userMgr.AddToRole(userMgr.FindByEmail("admin@kibo.com").Id, "canEdit");
            }


           
        }
    }
}