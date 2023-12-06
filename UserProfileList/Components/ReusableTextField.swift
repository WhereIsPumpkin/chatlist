//
//  ReusableTextField.swift
//  UserProfileList
//
//  Created by Saba Gogrichiani on 06.12.23.
//

import SwiftUI

struct ReusableTextField: View {
    var title: String
    var placeholder: String
    var isSecure: Bool
    @State private var text: String = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 11) {
            Text(title)
                .font(.system(size: 16, weight: .bold))
            if isSecure {
                SecureField(placeholder, text: $text)
                    .frame(height: 44)
                    .padding([.horizontal], 16)
                    .cornerRadius(16)
                    .overlay(RoundedRectangle(cornerRadius: 6)
                        .inset(by: 0.5)
                        .stroke(Color(red: 0.33, green: 0.3, blue: 0.3).opacity(0.14), lineWidth: 1)
                    )
            } else {
                TextField(placeholder, text: $text)
                    .frame(height: 44)
                    .padding([.horizontal], 16)
                    .cornerRadius(16)
                    .overlay(RoundedRectangle(cornerRadius: 6)
                        .inset(by: 0.5)
                        .stroke(Color(red: 0.33, green: 0.3, blue: 0.3).opacity(0.14), lineWidth: 1)
                    )
            }
        }
    }
}


#Preview(traits: .sizeThatFitsLayout) {
    ReusableTextField(title: "Passowrd", placeholder: "Password", isSecure: true)
}
