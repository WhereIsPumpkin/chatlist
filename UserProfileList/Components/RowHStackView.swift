//
//  RowHStackView.swift
//  UserProfileList
//
//  Created by Saba Gogrichiani on 06.12.23.
//

import SwiftUI

struct RowHStackView: View {
    let rowData: Chat
    
    var body: some View {
        HStack(alignment: .top, spacing: 10) {
            
            HStack {

                Image(rowData.profileImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40)
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 4) {
                    Text(rowData.name)
                        .font(.system(size: 17))
                        .foregroundColor(.white)
                    Text(rowData.lastMessage)
                        .font(.system(size: 12))
                        .foregroundColor(Color(red: 0.61, green: 0.61, blue: 0.61))
                }
            }
            
            Spacer()
            
            Text(rowData.time)
                .font(.system(size: 12))
                .foregroundColor(Color(red: 0.72, green: 0.72, blue: 0.72))
        }
        .padding(.vertical, 12)
        .padding(.horizontal, 16)
        .background(Color(red: 0.2, green: 0.2, blue: 0.2))
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    RowHStackView(rowData: chats[0])
}
