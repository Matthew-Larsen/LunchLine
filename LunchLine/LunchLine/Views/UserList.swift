//
//  UserList.swift
//  LunchLine
//
//  Created by matt.larsen on 10/17/20.
//  Copyright © 2020 matt.larsen. All rights reserved.
//

import SwiftUI

struct UserList: View {
    var users: [User]
    
    var body: some View {
        List(users){ user in
            UserRow(user: user)
        }
    }
}

struct UserList_Previews: PreviewProvider {
    static var previews: some View {
        UserList(users: userData)
    }
}
