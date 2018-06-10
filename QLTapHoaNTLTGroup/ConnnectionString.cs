using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QLTapHoaNTLTGroup
{
    public class ConnnectionString
    {
        public static string connectionbyname(string connnection)
        {
            System.Configuration.Configuration rootWebConfig = System.Web.Configuration.WebConfigurationManager.OpenWebConfiguration("/QLTapHoaNTLTGroup");
            System.Configuration.ConnectionStringSettings connString;
            if (rootWebConfig.ConnectionStrings.ConnectionStrings.Count > 0)
            {
                connString = rootWebConfig.ConnectionStrings.ConnectionStrings[connnection];
                if (connString != null)
                    return connString.ConnectionString;
            }
            return "";
        }
    }
}