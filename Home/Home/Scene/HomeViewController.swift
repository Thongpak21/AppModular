//
//  HomeViewController.swift
//  Home
//
//  Created by Thongpak Pongsilathong on 2/2/2564 BE.
//

import UIKit

public class HomeViewController: UIViewController {

    public static func create() -> HomeViewController {
        let storyboard = UIStoryboard(name: "Home", bundle: Bundle(for: self))
        return storyboard.instantiateInitialViewController() as! HomeViewController
    }
    
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        title = "Home"
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
