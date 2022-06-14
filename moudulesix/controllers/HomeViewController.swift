//
//  HomeViewController.swift
//  moudulesix
//
//  Created by Karavella on 07/06/22.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        addNavBar()
        view.backgroundColor = UIColor.darkGray
        // Do any additional setup after loading the view.
    }


    //MARK: - Methods
    
    func addNavBar() {
        title = "Login"
    }
    @IBAction func showList(_ sender: Any) {
        let vc = ListViewController(nibName: "ListViewController", bundle: nil)
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func showSingUp(_ sender: Any) {
        let vc = SignUpViewController(nibName: "SignUpViewController", bundle: nil)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
