using System;
using System.Linq;
using System.Windows;

namespace DbMaker
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow
    {
        private readonly Settings _settings = new Settings();

        public MainWindow()
        {
            InitializeComponent();
            DataContext = _settings;
        }

        private void OnClick_Exit(object sender, RoutedEventArgs e)
        {
            lblStatusBar.Text = "Status: Exit Application";
            Application.Current.Shutdown();
        }

        private void OnClick_Test(object sender, RoutedEventArgs e)
        {
            lblStatusBar.Text = "Status: Test";
        }

        private void OnClick_Create(object sender, RoutedEventArgs e)
        {
            outputTextBox.Text = Create();

            outputTabItem.IsSelected = true;
            lblStatusBar.Text = "Status: Creating ...";
        }

        private void OnClick_Settings(object sender, RoutedEventArgs e)
        {
            lblStatusBar.Text = "Status: Settings ...";
            SettingsDialog settingsDialog = new SettingsDialog(_settings)
            {
                Owner = this
            };

            if (settingsDialog.ShowDialog() == true)
            {
            }
        }


        private string Create()
        {
            return CreateHeader() + CreateBoddy() + CreateFooter();
        }

        private object CreateBoddy()
        {
            String boddy = "";
            string nl = "\n";
            string[] lines = inputTextBox.Text.Split('\n');
            int lineCount = lines.Length;


            for (var i = 0; i < lineCount; i++)
            {
                var parts = lines[i].Replace("\r", "").Split(';');
                var s1 = parts[0];
                var s2 = parts.Length > 1 ? parts[1] : parts[0];
                if (s1 == "") continue;
                boddy += "\t" + s1 + " : \"" + _settings.UdtName + "\";\t// " + s2 + " <" + (i + 1) + ">" + nl;
            }

            return boddy;
        }

        private string CreateHeader()
        {
            string header = "";
            string nl = "\n";

            header += "DATA_BLOCK DB " + _settings.DbNumber + nl;
            header += "TITLE = " + _settings.Title + nl;
            header += "AUTHOR : " + _settings.Author + nl;
            header += "FAMILY : " + _settings.Family + nl;
            header += "NAME : " + _settings.Name + nl;
            header += "VERSION : " + _settings.Version + nl;
            header += nl;
            header += nl;
            header += "STRUCT" + nl;
            return header;
        }

        private string CreateFooter()
        {
            string footer = "";
            string nl = "\n";

            footer += "END_STRUCT ;" + nl;
            footer += nl;
            footer += "BEGIN" + nl;
            footer += "END_DATA_BLOCK" + nl;


            return footer;
        }
    }
}