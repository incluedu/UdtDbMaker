using System.Reflection;

namespace DbMaker
{
    public class Settings
    {
        public int DbNumber { get; set; } = 3000;
        public string Title { get; set; } = "";
        public string Author { get; set; } = "LTW";
        public string Family { get; set; } = "FT";
        public string Name { get; set; } = "UDT DB";
        public string Version { get; set; } = "0.0";
        public string UdtName { get; set; } = "";

        public string WindowTitle { get; set; } = "UDT DB Maker - " +
                                                  "Version " + Assembly.GetExecutingAssembly().GetName().Version +
                                                  " - © 2019 by Patric Hollenstein";
    }
}