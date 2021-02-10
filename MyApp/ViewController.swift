//
//  ViewController.swift
//  MyApp
//
//  Created by Thongpak Pongsilathong on 2/2/2564 BE.
//

import UIKit
import Auth
import Home

class ViewController: UIViewController {

    @IBOutlet private var tableView: UITableView!
    enum Section: Int {
        case auth
        case home
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "MyApp"
    }

}


extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "Cell")
        switch Section(rawValue: indexPath.section) {
        case .auth:
            cell.textLabel?.text = "Auth"

        case .home:
            cell.textLabel?.text = "Home"
        case .none:
            break
        }
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch Section(rawValue: indexPath.section) {
        case .auth:
            self.navigationController?.pushViewController(AuthViewController.create(), animated: true)
        case .home:
            self.navigationController?.pushViewController(HomeViewController.create(), animated: true)
        case .none:
            break
        }
    }
}

