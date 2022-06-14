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
        title = "Table View"
        
        items.append(Profile(fullName: "Husan", subTitle: "5 soniya avval", avatar: "user1", description: "Lorem ipsum ewfe ewfew fewf ew fwefwefwefewfw", contentImg: "wallpaper"))
        items.append(Profile(fullName: "Bahora", subTitle: "5 soniya avval", avatar: "user2", description: "Lorem ipsum", contentImg: "wallpaper"))
        items.append(Profile(fullName: "Husan", subTitle: "5 soniya avval", avatar: "user1", description: "Lorem ipsum", contentImg: "wallpaper"))
        items.append(Profile(fullName: "Bahora", subTitle: "5 soniya avval", avatar: "user2", description: "Lorem ipsum", contentImg: "wallpaper"))
        items.append(Profile(fullName: "Husan", subTitle: "5 soniya avval", avatar: "user1", description: "Lorem ipsum", contentImg: "wallpaper"))
        items.append(Profile(fullName: "Bahora", subTitle: "5 soniya avval", avatar: "user2", description: "Lorem ipsum", contentImg: "wallpaper"))
        items.append(Profile(fullName: "Husan", subTitle: "5 soniya avval", avatar: "user1", description: "Lorem ipsum", contentImg: "wallpaper"))
    }
    
    func addNavBar() {
        let back = UIImage(named: "ic_back")
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: back, style: .plain, target: self, action: #selector(backTapped))
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
    

}
