//
//  HTMLViewController.swift
//  S.O.S.
//
//  Created by Marianne on 4/18/16.
//  Copyright © 2016 block7. All rights reserved.
//

import UIKit

class ActivitiesViewController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        let url = NSBundle.mainBundle().URLForResource("activities", withExtension:"html")
        let request = NSURLRequest(URL: url!)
        webView.loadRequest(request)
    }
    
}
