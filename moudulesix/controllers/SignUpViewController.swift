//
//  SignUpViewController.swift
//  moudulesix
//
//  Created by Karavella on 07/06/22.
//

import UIKit

class SignUpViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        initView()
        // Do any additional setup after loading the view.
    }

    
    //MARK: - Mehtods
    
    func initView() {
        addNavBar()
        title = "Sign Up"
        view.backgroundColor = UIColor.white
    }
    @IBAction func toSignIn(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    @IBAction func toSignUp(_ sender: Any) {        
            self.dismiss(animated: true)
    }
    func addNavBar() {
        let back = UIImage(named: "ic_back")
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: back, style: .plain, target: self, action: #selector(backTapped))
    }
    
    @objc func backTapped() {
        print("back")
        navigationController?.popViewController(animated: true)
    }
}
