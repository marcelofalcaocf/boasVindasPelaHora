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
        
        NotificationCenter.default.addObserver(self, selector: #selector(viewControllerScreen.knowHour), name: Notification.Name("NotificationIdentifier"), object: nil)
    }
}

