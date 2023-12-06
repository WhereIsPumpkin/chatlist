//
//  ProfileSetting.swift
//  UserProfileList
//
//  Created by Saba Gogrichiani on 06.12.23.
//

import SwiftUI

struct ProfileSetting: View {
    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                VStack(spacing: 29) {
                    Text("Edit Profile")
                        .font(.system(size: 20, weight: .bold))
                    
                    Image("profileSetting")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: geometry.size.width * 0.5, height: geometry.size.width * 0.5)
                        .clipShape(Circle())
                        .overlay(
                            Circle()
                                .stroke(Color(red: 0.14, green: 0.15, blue: 0.38), lineWidth: 1)
                                .padding(-5)
                        )
                        .overlay(alignment: .bottomTrailing, content: {
                            Image(systemName: "camera.fill")
                                .foregroundStyle(Color(red: 36/255, green: 39/255, blue: 96/255))
                                .font(.system(size: 24))
                                .padding(.bottom)
                        })
                    
                    VStack(spacing: 16) {
                        ReusableTextField(title: "Name", placeholder: "John", isSecure: false)
                        ReusableTextField(title: "Email", placeholder: "Johndoe@gmail.com", isSecure: false)
                        ReusableTextField(title: "Password", placeholder: "********", isSecure: true)
                        ReusableTextField(title: "Date of Birth", placeholder: "31/02/200", isSecure: true)
                        ReusableTextField(title: "Country/Region", placeholder: "Georgia", isSecure: true)
                    }
                    
                    Button(action: {
                        print("Profile Saved!!")
                    }, label: {
                        ActionButton(title: "Save changes")
                    })
                }
                .padding(.horizontal, 25)
            }
        }
    }
}

struct ProfileSetting_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSetting()
    }
}
