using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Web2Test.Startup))]
namespace Web2Test
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
