namespace DbMaker
{
    public class Settings
    {
        public int DbNumber { get; set; } = 3000;
        public string Title { get; set; } 
        public string Author { get; set; } = "LTW";
        public string Family { get; set; } = "FT";
        public string Name { get; set; }
        public string Version { get; set; } = "0.0";
        public string UdtName { get; set; }
    }
}