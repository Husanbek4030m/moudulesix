//
//  HomeViewController.swift
//  moudulesix
//
//  Created by Karavella on 07/06/22.
//

import UIKit

class HomeViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        addNavBar()
        view.backgroundColor = UIColor.white
        // Do any additional setup after loading the view.
    }


    //MARK: - Methods
    
    func addNavBar() {
        title = "Login"
    }
    @IBAction func showList(_ sender: Any) {
        sceneDelegete().callHomeController()
    }
    
    @IBAction func showSingUp(_ sender: Any) {
        let vc = SignUpViewController(nibName: "SignUpViewController", bundle: nil)
        self.present(vc, animated: true, completion: nil)
    }
    
}
