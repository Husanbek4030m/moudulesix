//
//  ListViewController.swift
//  moudulesix
//
//  Created by Karavella on 07/06/22.
//

import UIKit

class ListViewController: BaseViewController, UITableViewDelegate, UITableViewDataSource {
   
    var items:Array<Profile> = Array()

    @IBOutlet var tView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initView()
        // Do any additional setup after loading the view.
    }

    
    func initView() {
        tView.dataSource = self
        tView.delegate = self
        
        addNavBar()
        title = "Instagram"
        
        items.append(Profile(fullName: "Husan", subTitle: "5 soniya avval", avatar: "person_m", description: "Lorem ipsum ewfe ewfew fewf ew fwefwefwefewfw", contentImg: "w1"))
        items.append(Profile(fullName: "Bahora", subTitle: "5 soniya avval", avatar: "person_w", description: "Lorem ipsum", contentImg: "w2"))
        items.append(Profile(fullName: "Husan", subTitle: "5 soniya avval", avatar: "person_m", description: "Lorem ipsum", contentImg: "w1"))
        items.append(Profile(fullName: "Bahora", subTitle: "5 soniya avval", avatar: "person_w", description: "Lorem ipsum", contentImg: "w2"))
        items.append(Profile(fullName: "Husan", subTitle: "5 soniya avval", avatar: "person_m", description: "Lorem ipsum", contentImg: "w1"))
        items.append(Profile(fullName: "Bahora", subTitle: "5 soniya avval", avatar: "person_w", description: "Lorem ipsum", contentImg: "w2"))
        items.append(Profile(fullName: "Husan", subTitle: "5 soniya avval", avatar: "person_m", description: "Lorem ipsum", contentImg: "w1"))
    }
    
    func addNavBar() {
        let back = UIImage(named: "ic_camera")
        let near = UIImage(named: "ic_near")
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: back, style: .plain, target: self, action: #selector(backTapped))
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: near, style: .plain, target: self, action: nil)
    }
    
    @objc func backTapped() {
        sceneDelegete().callLoginController()
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = items[indexPath.row]
        
        let cell = Bundle.main.loadNibNamed("ProfileTableViewCell", owner: self, options: nil)?.first as! ProfileTableViewCell
        
        cell.fullname.text = item.fullName
        cell.avatar.image = UIImage(named: item.avatar)
        cell.subTitle.text = item.subTitle
        cell.descriptions.text = item.description
        cell.contentImg.image = UIImage(named: item.contentImg)
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 600
    }
    
    

}
