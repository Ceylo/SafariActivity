//
//  ViewController.swift
//  Example
//
//  Created by Ceylo on 01/06/2021.
//

import UIKit
import SafariActivity

class ViewController: UIViewController {
    @IBAction func share() {
        let url = URL(string: "https://github.com/")!
        let activityViewController =
            UIActivityViewController(activityItems: [url],
                                     applicationActivities: [SafariActivity()])
        present(activityViewController, animated: true)
    }
}

