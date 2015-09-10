using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(graphandchart.Startup))]
namespace graphandchart
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
