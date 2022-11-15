//
//  ViewController.swift
//  Noite
//
//  Created by Marcelo Falcao Costa Filho on 14/11/22.
//

import UIKit

class ViewController: UIViewController {

    var viewControllerScreen: ViewControllerScreen = .init()
    
    override func loadView() {
        self.viewControllerScreen = ViewControllerScreen()
        self.view = self.viewControllerScreen
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        knowHour()
        // Do any additional setup after loading the view.
    }

    func knowHour() {
        let currentDataTime = Date()
        let formatter = DateFormatter()
        
        formatter.timeStyle = .short
        
        let hour = Calendar.current.component(.hour, from: currentDataTime)
//        let timeString = formatter.string(from: currentDataTime)
//        let minutes = Calendar.current.component(.minute, from: currentDataTime)
//        print(timeString)
        
        if hour >= 6 && hour <= 11 {
            viewControllerScreen.welcomeMessage.text = "Bom dia para você"
            viewControllerScreen.backgroundImage.image = UIImage(named: "bomDia")
        } else if hour <= 17 {
            viewControllerScreen.welcomeMessage.text = "Boa tarde para você"
            viewControllerScreen.backgroundImage.image = UIImage(named: "boaTarde")
        } else if hour <= 23 {
            viewControllerScreen.welcomeMessage.text = "Boa noite para você"
            viewControllerScreen.backgroundImage.image = UIImage(named: "boaNoite")
        } else {
            viewControllerScreen.welcomeMessage.text = "Ainda está acordado?"
            viewControllerScreen.backgroundImage.image = UIImage(named: "horaDeDormir")
        }
    }
}

