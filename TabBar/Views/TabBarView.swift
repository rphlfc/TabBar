//
//  TabBarView.swift
//  TabBar
//
//  Created by Raphael Cerqueira on 24/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct TabBarView: View {
    @Binding var selectedItem: Int
    
    var body: some View {
        HStack {
            Spacer()
            ForEach(0..<tabBarItems.count) { i in
                TabBarItemView(item: tabBarItems[i], selectedItem: self.$selectedItem, index: i) { (selectedIndex) in
                    withAnimation {
                        self.selectedItem = selectedIndex
                    }
                }
                Spacer()
            }
        }
        .frame(maxWidth: .infinity)
        .frame(height: 100)
        .background(Color.white)
        .cornerRadius(20)
    }
}

struct TabBarItemView: View {
    var item: TabBarItem
    @Binding var selectedItem: Int
    var index: Int
    var didSelect: (Int) -> Void
    
    var body: some View {
        Button(action: {
            self.didSelect(self.index)
        }) {
            HStack {
                Image(systemName: item.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 24)
                
                if self.selectedItem == self.index {
                    Text(item.title)
                        .fontWeight(.bold)
                }
            }
        }
        .animation(.easeOut(duration: 0.1))
        .frame(width: selectedItem == index ? 120 : 50, height: 50)
        .background(selectedItem == index ? item.backgroundColor : Color.white)
        .foregroundColor(selectedItem == index ? item.foregroundColor : Color(#colorLiteral(red: 0.9136454463, green: 0.9137767553, blue: 0.9136165977, alpha: 1)))
        .cornerRadius(25)
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView(selectedItem: .constant(0))
    }
}
