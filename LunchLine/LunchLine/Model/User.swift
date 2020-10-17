//
//  User.swift
//  LunchLine
//
//  Created by matt.larsen on 10/17/20.
//  Copyright © 2020 matt.larsen. All rights reserved.
//

import Foundation
import SwiftUI



struct User: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var username: String
    var email: String
    var phone_number: String
    fileprivate var profile_image_name: String
    var friends: [String]
    var friends_shortcut : [String : [String]]
    var pending_non_expired_events : [String]
    var accepted_non_expired_events : [String]
    var socials: [String : String]
    var events_created : [String]
    var major : String
    var qr_code : String
    
}


extension User{
    var profile_image : Image {
        ImageStore.shared.image(name: profile_image_name)
    }
}


