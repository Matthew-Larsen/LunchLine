//
//  AddFriends.swift
//  LunchLine
//
//  Created by matt.larsen on 11/21/20.
//  Copyright © 2020 matt.larsen. All rights reserved.
//

import SwiftUI

struct AddFriends: View {
    
    var user : User
    
    var body: some View {
        VStack(spacing:30){
            Text("Requests (num_requests)")
            Divider()
            Text("Add Friends by username")
            Divider()
            Button(action: {print("clicked import")}){
                Text("Import contacts")
            }
            Divider()
            Text("Scan QR Code")
            user.qr_image.renderingMode(.original).resizable().frame(width:200, height:200)
            
        }
    }
}

struct AddFriends_Previews: PreviewProvider {
    static var previews: some View {
        AddFriends(user: userData[0])
    }
}
