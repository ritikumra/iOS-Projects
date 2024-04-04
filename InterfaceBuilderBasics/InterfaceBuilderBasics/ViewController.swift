//
//  ViewController.swift
//  InterfaceBuilderBasics
//
//  Created by Student on 20/02/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func handlePress(_ sender: UIButton) {
        myLabel.text = "This app rocks!"
    }
    
}

