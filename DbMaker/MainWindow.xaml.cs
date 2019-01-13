using System;
using System.Windows;

namespace DbMaker
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow
    {
        private Settings _settings = new Settings{DbNumber = 10};
     
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
            outputTextBox.Text = inputTextBox.Text;
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
    }
}