//
//  ChatData.swift
//  UserProfileList
//
//  Created by Saba Gogrichiani on 06.12.23.
//

import Foundation

struct Chat: Identifiable {
    var id = UUID()
    var profileImage: String
    var name: String
    var lastMessage: String
    var time: String
}

let chats = [
    Chat(profileImage: "profile", name: "Francisco Miles", lastMessage: "I went there yesterday", time: "Monday"),
    Chat(profileImage: "profile", name: "John Doe", lastMessage: "See you tomorrow!", time: "Tuesday"),
    Chat(profileImage: "profile", name: "Jane Smith", lastMessage: "Don't forget the meeting.", time: "18/12/2023"),
    Chat(profileImage: "profile", name: "Emma Johnson", lastMessage: "Great job on the project!", time: "19/12/2023"),
    Chat(profileImage: "profile", name: "Michael Brown", lastMessage: "Let's catch up soon.", time: "20/12/2023"),
    Chat(profileImage: "profile", name: "Emily Davis", lastMessage: "Happy Birthday!", time: "21/12/2023"),
    Chat(profileImage: "profile", name: "Daniel Wilson", lastMessage: "The weather is nice today.", time: "22/12/2023"),
    Chat(profileImage: "profile", name: "Sophia Martinez", lastMessage: "I'll bring the snacks.", time: "Tuesday"),
    Chat(profileImage: "profile", name: "David Taylor", lastMessage: "Good luck on your test.", time: "24/12/2023"),
    Chat(profileImage: "profile", name: "Olivia Anderson", lastMessage: "See you at the party.", time: "25/12/2023"),
    Chat(profileImage: "profile", name: "James Thomas", lastMessage: "Safe travels!", time: "Friday")
]



