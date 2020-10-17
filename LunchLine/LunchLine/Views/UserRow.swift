//
//  UserRow.swift
//  LunchLine
//
//  Created by matt.larsen on 10/17/20.
//  Copyright © 2020 matt.larsen. All rights reserved.
//

//
//  SwiftUIView.swift
//  LunchLine
//
//  Created by matt.larsen on 10/17/20.
//  Copyright © 2020 matt.larsen. All rights reserved.
//

import SwiftUI

struct UserRow: View {
    
    var user: User
    
    var body: some View {
        HStack{
            
            user.profile_image.resizable().frame(width:50, height:50)
            Text(user.name)
            Spacer()
            
            
        }
    }
}

struct UserRow_Previews: PreviewProvider {
    static var previews: some View {
        UserRow(user: userData[0])
    }
}
