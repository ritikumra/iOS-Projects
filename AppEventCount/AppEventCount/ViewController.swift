//
//  ViewController.swift
//  AppEventCount
//
//  Created by student on 01/04/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var didFinishLaunchingWithOptionsLabel: UILabel!
    @IBOutlet weak var configuratonForConnectingLabel: UILabel!
    @IBOutlet weak var willConnectToLabel: UILabel!
    @IBOutlet weak var sceneDidBecomeActiveLabel: UILabel!
    @IBOutlet weak var sceneWillResignActiveLabel: UILabel!
    @IBOutlet weak var scenewillEnterForegroundLabel: UILabel!
    @IBOutlet weak var sceneDidEnterBackgroundLabel: UILabel!
    var willConnectCount = 0
    var didBecomeActiveCount = 0
    var willResignCount = 0
    var enterForegroundCount = 0
    var didEnterBackgroundCount = 0
    var appDelegate = (UIApplication.shared.delegate as! AppDelegate)
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    func updateView(){
        didFinishLaunchingWithOptionsLabel.text = "The App has launched \(appDelegate.launchCount) time(s)"
        configuratonForConnectingLabel.text = "Configuration connecting count = \(appDelegate.configurationForConnectingCount)"
        willConnectToLabel.text = "Connect to label count = \(willConnectCount)"
        sceneDidBecomeActiveLabel.text = "Scene active count = \(didBecomeActiveCount)"
        sceneWillResignActiveLabel.text = "Scene inactive count = \(willResignCount)"
        scenewillEnterForegroundLabel.text = "Scene is in foreground count = \(enterForegroundCount)"
        sceneDidEnterBackgroundLabel.text = "Scene is in background count = \(didEnterBackgroundCount)"
    }
    


}

