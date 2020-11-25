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
    
    @State private var profPage = false
    
    var user: User
    
    var body: some View {
            HStack{
                user.profile_image.renderingMode(.original).resizable().frame(width:50, height:50)
                    
                VStack(alignment: .leading, spacing: 3){
                    Text(user.name)
                    Text(user.username).foregroundColor(Color.gray)
                }
            
                Spacer()
//                            .contentShape(Rectangle()).onTapGesture{
//                        //Change view to be profile view
//                        print("tapped user: \(self.user.name)")
//                        self.profPage = true
//                    }

                Button(action: {print("Sent request to \(self.user.username)")}){
                    Text("Add").font(.body)
                }
                .foregroundColor(Color.white)
                .padding(.all)
                .background(Color.green)
                .cornerRadius(16)
                .buttonStyle(PlainButtonStyle())
            }
    }

}

struct UserRow_Previews: PreviewProvider {
    static var previews: some View {
        UserRow(user: userData[0])
    }
}
