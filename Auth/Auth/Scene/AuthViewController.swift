//
//  AuthViewController.swift
//  Auth
//
//  Created by Thongpak Pongsilathong on 2/2/2564 BE.
//

import UIKit

public class AuthViewController: UIViewController {

    public static func create() -> AuthViewController {
        let storyboard = UIStoryboard(name: "Auth", bundle: Bundle(for: self))
        return storyboard.instantiateInitialViewController() as! AuthViewController
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
