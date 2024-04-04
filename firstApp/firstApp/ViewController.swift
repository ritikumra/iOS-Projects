//
//  ViewController.swift
//  firstApp
//
//  Created by Student on 19/02/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var welcomeText: UILabel!
    @IBOutlet weak var myBtn: UIButton!
    
    @IBOutlet weak var myNameInput: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var switchMode: UILabel!
    
    
    @IBOutlet weak var mySlider: UISlider!
    
    @IBOutlet weak var currentValue: UILabel!
    
    @IBOutlet weak var minValue: UILabel!
    @IBOutlet weak var maxValue: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        password.isSecureTextEntry = true;
        
//        let heading = UILabel(frame: CGRect(x: 100, y: 50, width: 400, height: 200))
//        heading.text = "My first app";
//        view.addSubview(heading);
        minValue.text = "0";
        maxValue.text = String(Int(mySlider.maximumValue * 100));
        //maxValue.text = Int(mySlider.maximumValue);
        currentValue.text = String(Int(mySlider.value));
    }
    
    let colors = [UIColor.red,UIColor.green,UIColor.yellow,UIColor.blue];
    
    @IBAction func nameInput(_ sender: UITextField) {
        if let txt = sender.text {
            print(txt);
        }
    }

    
    @IBAction func handleSubmit(_ sender: UIButton) {
        let alert = UIAlertController(title: "Alert", message: """
        Name : \(myNameInput.text!)
        Email : \(email.text!)
        Password : \(password.text!)
""", preferredStyle: UIAlertController.Style.actionSheet)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }

    @IBAction func handleToggle(_ sender: UISwitch) {
        print(sender.isOn);
        if(sender.isOn){
            switchMode.text = "ON";
        }
        else{
            switchMode.text = "OFF";
        }
    }
    @IBAction func handleSlide(_ sender: UISlider) {
        print(sender.minimumValue);
        print(sender.maximumValue);
        UIScreen.main.brightness = CGFloat(sender.value)
        print(sender.value);
        currentValue.text = String(Int(sender.value*100))
    }
    
    
    
}

