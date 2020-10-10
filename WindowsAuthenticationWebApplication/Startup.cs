using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(WindowsAuthenticationWebApplication.Startup))]
namespace WindowsAuthenticationWebApplication
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
