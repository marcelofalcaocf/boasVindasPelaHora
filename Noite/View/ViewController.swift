//
//  ViewController.swift
//  Noite
//
//  Created by Marcelo Falcao Costa Filho on 14/11/22.
//

import UIKit

class ViewController: UIViewController {

    lazy var viewControllerScreen: ViewControllerScreen = .init()
    
    private var observer: NSObjectProtocol?
    
    override func loadView() {
        self.viewControllerScreen = ViewControllerScreen()
        self.view = self.viewControllerScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let notificationCenter = NotificationCenter.default
        
        notificationCenter.addObserver(self, selector: #selector(onTypeCalled), name: UIApplication.willEnterForegroundNotification, object: nil)

        viewControllerScreen.knowHour()
    }
    
    @objc private func onTypeCalled(_ notification: Notification) {
        viewControllerScreen.knowHour()
    }
}

