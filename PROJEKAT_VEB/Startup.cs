using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(PROJEKAT_VEB.Startup))]
namespace PROJEKAT_VEB
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
