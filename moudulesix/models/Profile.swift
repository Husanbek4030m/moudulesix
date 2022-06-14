//
//  Profile.swift
//  moudulesix
//
//  Created by Karavella on 07/06/22.
//

import Foundation

class Profile {
    var fullName: String
    var subTitle: String
    var avatar: String
    var description: String
    var contentImg: String
    
    init(fullName: String, subTitle: String, avatar: String, description: String, contentImg: String){
        self.fullName = fullName
        self.subTitle = subTitle
        self.avatar = avatar
        self.description = description
        self.contentImg = contentImg
    }
}
