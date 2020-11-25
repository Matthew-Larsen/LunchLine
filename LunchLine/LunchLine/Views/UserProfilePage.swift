//
//  UserProfilePage.swift
//  LunchLine
//
//  Created by matt.larsen on 10/31/20.
//  Copyright © 2020 matt.larsen. All rights reserved.
//

import SwiftUI

struct UserProfilePage: View {
    var user : User
    var body: some View {
        VStack(){
            user.profile_image.resizable().frame(width:100, height:100).clipShape(Circle())
            Spacer().frame(height:20)
            Text(user.name)
            Spacer().frame(height:10)
            
            NavigationLink(destination: UserList(users:
                userData.all(where: {self.user.friends.contains($0.username)})
            )
            .navigationBarTitle("Friends", displayMode: .inline)
            //.navigationBarHidden(true)
            ){
                Text("Friends (\(user.friends.count))")
                
            }
            Spacer().frame(height: 40)
            
            Button(action: {print("Sent request to \(self.user.username)")}){
                Text("              Add              ").font(.body)
            }
            .foregroundColor(Color.white)
            .padding(.all)
            .background(Color.green)
            .cornerRadius(16)
            .buttonStyle(PlainButtonStyle())
            
            Spacer().frame(height: 30)
            
            VStack(alignment: .leading){

                Text("My Major is...")
                Text(user.major)
            }
            
            
            
        }
    }
}

struct UserProfilePage_Previews: PreviewProvider {
    static var previews: some View {
        UserProfilePage(user: userData[2])
    }
}
