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
        
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(onTypeCalled),
            name: .typing,
            object: nil)
        
//        observer = NotificationCenter.default.addObserver(forName: UIApplication.willEnterForegroundNotification, object: nil, queue: .main, using: { notification in
//        })

        viewControllerScreen.knowHour()
    }
    
    @objc private func onTypeCalled(_ notification: Notification) {
        viewControllerScreen.backgroundImage.image = notification.userInfo?["image"] as? UIImage
        viewControllerScreen.welcomeMessage.text = notification.userInfo?["text"] as? String
    }
    
}

extension NSNotification.Name {
    static let typing: NSNotification.Name = .init(rawValue: "type")
}
