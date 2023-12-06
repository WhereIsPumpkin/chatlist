//
//  ActionButton.swift
//  UserProfileList
//
//  Created by Saba Gogrichiani on 06.12.23.
//

import SwiftUI

struct ActionButton: View {
    
    var title: String
    
    var body: some View {
        Text(title)
            .frame(width: 220,height: 45)
            .background(Color(red: 0.14, green: 0.15, blue: 0.38))
            .foregroundStyle(.white)
            .font(.system(size: 20, weight: .medium, design: .default))
            .clipShape(RoundedRectangle(cornerRadius: 6))
    }
}
