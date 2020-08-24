//
//  ContentView.swift
//  TabBar
//
//  Created by Raphael Cerqueira on 24/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var selectedItem = 0
    
    var body: some View {
        ZStack {
            tabBarItems[self.selectedItem].backgroundColor.edgesIgnoringSafeArea(.all)
            
            TabBarView(selectedItem: self.$selectedItem)
                .padding(.horizontal)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
