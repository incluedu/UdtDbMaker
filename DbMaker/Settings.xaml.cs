using System.Windows;

namespace DbMaker
{
    public partial class SettingsDialog : Window
    {
        private Settings _settings;
        
        public SettingsDialog(Settings settings)
        {
            _settings = settings;
            DataContext = _settings;
            InitializeComponent();
        }

    }
}