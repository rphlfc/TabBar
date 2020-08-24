//
//  TabBarItem.swift
//  TabBar
//
//  Created by Raphael Cerqueira on 24/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import Foundation
import SwiftUI

struct TabBarItem: Identifiable {
    let id = UUID().uuidString
    let imageName: String
    let title: String
    let foregroundColor: Color
    let backgroundColor: Color
}

let tabBarItems = [
    TabBarItem(imageName: "house.fill", title: "Home", foregroundColor: Color(#colorLiteral(red: 0.400413096, green: 0.8664865494, blue: 0.4382698238, alpha: 1)), backgroundColor: Color(#colorLiteral(red: 0.9269070029, green: 0.9830170274, blue: 0.9335667491, alpha: 1))),
    TabBarItem(imageName: "heart.fill", title: "Likes", foregroundColor: Color(#colorLiteral(red: 0.9673460126, green: 0.6682267189, blue: 0.7586029768, alpha: 1)), backgroundColor: Color(#colorLiteral(red: 0.9935279489, green: 0.8859844804, blue: 0.9141976237, alpha: 1))),
    TabBarItem(imageName: "bubble.left.fill", title: "Chats", foregroundColor: Color(#colorLiteral(red: 0.5242814422, green: 0.6278286576, blue: 0.9201904535, alpha: 1)), backgroundColor: Color(#colorLiteral(red: 0.909835875, green: 0.937166512, blue: 0.9934270978, alpha: 1))),
    TabBarItem(imageName: "gear", title: "Settings", foregroundColor: Color(#colorLiteral(red: 0.4148625135, green: 0.2954753339, blue: 0.7923477888, alpha: 1)), backgroundColor: Color(#colorLiteral(red: 0.8281061053, green: 0.7699922919, blue: 0.9928879142, alpha: 1)))
]
