using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;
using System.Net;
using System.Windows;

public class TranslateClass
{

    public int code { get; set; }
    public string lang { get; set; }
    public List<string> text { get; set; }
    public string ApiKey { get; set; }

    private string strJson;
    public TranslateClass()
    {
        this.text = new List<string>();
        this.lang = "None";
        this.code = 0;
    }

    public  void TranslateText(string word, string language, string ApiKey)
    {
        string strUrl = "https://translate.yandex.net/api/v1.5/tr.json/translate?";
        strUrl += "key=" + ApiKey;
        strUrl += "&text=" + word;
        strUrl += "&lang=" + language;
        WebClient wc = new WebClient();
        wc.Encoding = Encoding.UTF8;
        try
        {
            strJson =  wc.DownloadString(new System.Uri(strUrl));
            var result = JsonConvert.DeserializeObject<TranslateClass>(strJson);
            this.text = result.text;
            this.code = result.code;
            this.lang = result.lang;
        }
        catch (WebException)

        {
            MessageBox.Show("Something went wrong :(");
        }


    }
}


