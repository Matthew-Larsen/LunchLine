//
//  ViewExtensionNavigator.swift
//  LunchLine
//
//  Created by matt.larsen on 11/4/20.
//  Copyright © 2020 matt.larsen. All rights reserved.
//

import Foundation
import SwiftUI


extension View{
    
    
    func navigate<NewView: View>(to view: NewView, when binding: Binding<Bool>) -> some View{
        
        NavigationView{
            ZStack {
                self
                .navigationBarTitle("")
                .navigationBarHidden(true)
                
                NavigationLink(
                    destination: view
                        .navigationBarTitle("")
                        .navigationBarHidden(true),
                    isActive: binding) {
                        EmptyView()
                }
            }
        }
        
    }
    
    
}
