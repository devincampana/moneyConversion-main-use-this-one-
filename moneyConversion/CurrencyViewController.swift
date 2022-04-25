//
//  CurrencyViewController.swift
//  moneyConversion
//
//  Created by Devin Campana on 4/25/22.
//

import UIKit
import WebKit
class CurrencyViewController: UIViewController, WKNavigationDelegate {

    
    @IBOutlet var webView: WKWebView!
      
 let sampleURL = "https://finance.yahoo.com/currencies/?guccounter=1&guce_referrer=aHR0cHM6Ly93d3cuZ29vZ2xlLmNvbS8&guce_referrer_sig=AQAAAJSSlSi1Ergthy528asR_KDPZvfFFRKCEkjeXk_bD9MWJALHVlUulsO0xXYmrGHx0AD-WBYZC6SKrZj1FUYDHaee8kK3J9kRk7qcNabnwo3y6GR2kBnPQBkMQEqm_4nkeYWLSU2WDhn5xuSjzzAwRgx6C0C_PziRFEDAO8mt6rVj"
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.sendRequest(urlString: sampleURL)
        
        // Do any additional setup after loading the view.
    }
    
    func sendRequest(urlString: String) {
        let myURL = URL(string: urlString)
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
