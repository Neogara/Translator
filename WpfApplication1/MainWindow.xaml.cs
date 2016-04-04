using System.Windows;
using System.Windows.Input;
using System.Windows.Media.Animation;
using System;
using System.Windows.Controls;
using SpeechLib;


namespace WpfApplication1
{
    public partial class MainWindow : Window

    {
        string YandexApiKey = "trnsl.1.1.20160205T131653Z.319382340b2818f8.62e27002c0ae81ba76cdb819441608aa20749438";

        TranslateClass Translate = new TranslateClass(); // Обьект переводчика  
        SpVoice Voise = new SpVoice() ; // Обьект говорилки 
      

        string[] LanguageSelectorConvert =
        {
            "en",
            "de",
            "ru",
            "zh"
        };
        
        public MainWindow()
        {
            InitializeComponent();
        }

        private void InputText_KeyDown(object sender, KeyEventArgs e)
        {
            if ((e.Key == Key.Enter) || (e.Key == Key.Tab))
            {
                TransliteInterfaseWork();
            }
        }

        private void TransliteInterfaseWork()
        {
            if ((comboBox.SelectedIndex != -1))
            {
                DoubleAnimation Animation = new DoubleAnimation();
                Animation.To = 0;
                Animation.Duration = TimeSpan.FromSeconds(0.15);
                Animation.AutoReverse = true;

                Translate.TranslateText(InputText.Text, LanguageSelectorConvert[comboBox.SelectedIndex],YandexApiKey);
                OuputText.Text = Translate.text[0]; 
                OuputText.BeginAnimation(TextBox.WidthProperty, Animation);

                Clipboard.Clear();
                Clipboard.SetText(OuputText.Text);
            }
        }

        private void TranlateButton_Click(object sender, RoutedEventArgs e)
        {
            if ((comboBox.SelectedIndex != -1))
            {
                TransliteInterfaseWork();
            }
        }
    

        private void Window_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            this.DragMove();
        }

        private void button_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

        private void InputText_GotMouseCapture(object sender, MouseEventArgs e)
        {
            InputText.SelectAll();
        }

        private void OuputText_TextChanged(object sender, System.Windows.Controls.TextChangedEventArgs e)
        {
            Clipboard.Clear();
            Clipboard.SetText(OuputText.Text);

        }

       

        private void ShowDopToggleButton_Click(object sender, RoutedEventArgs e)
        {

            if (ShowDopToggleButton.IsChecked ?? false)

            {
                this.Height += 200;
            }
            else
            {
                this.Height -= 200;
            }
        }

        private void Window_Activated(object sender, System.EventArgs e)
        {
            InputText.Focus();
            InputText.SelectAll();
        }


        private void OuputText_GotMouseCapture(object sender, MouseEventArgs e)
        {
            OuputText.SelectAll();
        }

        private  void SpeakTextButton_Click(object sender, RoutedEventArgs e)
        {
             Voise.Speak(OuputText.Text, SpeechVoiceSpeakFlags.SVSFlagsAsync);
        }
    }
}
