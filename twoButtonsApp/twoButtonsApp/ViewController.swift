import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var myLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myLabel.text = String.init();
    }

    @IBAction func handleSet(_ sender: UIButton) {
        
        if(myTextField.text == ""){
            return;
        }
        myLabel.text = myTextField.text;
    }

    @IBAction func handleChange(_ sender: UITextField) {
        print(sender.text!);
        if(myTextField.text == ""){
            return;
        }
        myLabel.text = myTextField.text;
    }
    @IBAction func handleTap(_ sender: UITapGestureRecognizer) {
        print("I'm here");
        let location = sender.location(in: view);
        print(location);
    }
    
    @IBAction func handleClear(_ sender: UIButton) {
        myLabel.text = "";
        myTextField.text = "";
    }
}

