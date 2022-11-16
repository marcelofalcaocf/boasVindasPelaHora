//
//  ViewController.swift
//  Noite
//
//  Created by Marcelo Falcao Costa Filho on 14/11/22.
//

import UIKit

class ViewController: UIViewController {

    lazy var viewControllerScreen: ViewControllerScreen = .init()
    
    override func loadView() {
        self.viewControllerScreen = ViewControllerScreen()
        self.view = self.viewControllerScreen
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        viewControllerScreen.knowHour()
        
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(calledHourMoorning),
            name: NSNotification.Name("bomDia"),
            object: nil)

        NotificationCenter.default.addObserver(
            self,
            selector: #selector(calledHourAfternoon),
            name: NSNotification.Name("boaTarde"),
            object: nil)

        NotificationCenter.default.addObserver(
            self,
            selector: #selector(calledHourNight),
            name: NSNotification.Name("boaNoite"),
            object: nil)

        NotificationCenter.default.addObserver(
            self,
            selector: #selector(calledHourSleep),
            name: NSNotification.Name("horaDeDormir"),
            object: nil)
    }
    
//    @objc private func onTypeCalled(_ notification: Notification) {
//        viewControllerScreen.backgroundImage.image = notification.userInfo?["image"] as? UIImage
//        viewControllerScreen.welcomeMessage.text = notification.userInfo?["text"] as? String
//    }
    
    @objc private func calledHourMoorning() {
        print("Dia")
    }

    @objc private func calledHourAfternoon() {
        print("Tarde")
    }

    @objc private func calledHourNight() {
        print("Noite")
    }

    @objc private func calledHourSleep() {
        print("Dormir")
    }
}

