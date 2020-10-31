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
    @State private var name: String = ""
    
    var body: some View {
        List {
            TextField("Search for friends", text: $name)
            
            ForEach (self.users){ user in
                if self.name.isEmpty || (user.name.lowercased().contains(self.name.lowercased()) || user.username.lowercased().contains(self.name.lowercased())){
                    UserRow(user: user)
                }
            }
        }
    }
}

struct UserList_Previews: PreviewProvider {
    static var previews: some View {
        UserList(users: userData)
    }
}
