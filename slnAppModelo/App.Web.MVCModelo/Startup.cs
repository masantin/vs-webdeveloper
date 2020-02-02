using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(App.Web.MVCModelo.Startup))]

namespace App.Web.MVCModelo
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            app.UseCookieAuthentication(new Microsoft.Owin.Security.Cookies.CookieAuthenticationOptions
            {
                AuthenticationType = "ApplicationCookie",
                LoginPath = new PathString("/Account/Login")
            });            
        }
    }
}
