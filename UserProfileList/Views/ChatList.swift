//
//  ContentView.swift
//  UserProfileList
//
//  Created by Saba Gogrichiani on 06.12.23.
//

import SwiftUI

struct ChatList: View {
    
    @State var chatData = chats
    
    var body: some View {
        ZStack {
            Color(Color(red: 0.2, green: 0.2, blue: 0.2))
                .ignoresSafeArea()
            
            VStack(spacing: 10) {
                Text("Chat")
                    .font(.system(size: 17, weight: .semibold))
                    .foregroundStyle(.white)
                    .padding(.bottom, 23)
                    .padding(.top, 10)
                
                if chatData.isEmpty {
                    Spacer()
                    
                    VStack(spacing: 20) {
                        Image(systemName: "message.fill")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.gray)
                        
                        Text("The list is empty")
                            .foregroundColor(.gray)
                    }
                    .font(.title)
                    
                    Spacer()
                } else {
                    ScrollView {
                        LazyVStack(spacing: 0) {
                            ForEach(chatData) { chat in
                                RowHStackView(rowData: chat)
                            }
                        }
                    }
                }
                
                Button(action: {
                    chatData.removeAll()
                }, label: {
                    ActionButton(title: "Clear Chat")
                })
                .padding(.top, 25)
            }
        }
    }
}

struct ChatList_Previews: PreviewProvider {
    static var previews: some View {
        ChatList()
    }
}
