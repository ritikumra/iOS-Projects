//
//  ViewController.swift
//  Traffic Light
//
//  Created by student on 27/02/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var destinationTitleTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

//    @IBAction func unwindToRed(unwindSegue : UIStoryboardSegue){
//        print("Back to red")
//    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(destinationTitleTextField.text != ""){
            segue.destination.navigationItem.title = destinationTitleTextField.text
        }
    }
}

