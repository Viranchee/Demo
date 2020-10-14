//
//  ContentView.swift
//  Demo
//
//  Created by Ketan Lotia on 14/10/20.
//

import SwiftUI

struct Message: Identifiable {
  var image: String
  var text: String
  var id: UUID
}

var mockMessages: [Message] = [
  .init(image: "message", text: "Tag some Charges", id: .init()),
  .init(image: "message", text: "Track a new Change", id: .init()),
  .init(image: "message", text: "Track a new Change", id: .init())
]

struct ContentView: View {
  var body: some View {
    VStack {
      Header()
      Messages()
      
      ScrollView {
        Text("Hello")
        Text("Yo Bro")
      }
      .frame(width: 400)
      
      Text("Bottom of Screen")
    }
  }
}

struct Header: View {
  var body: some View {
    VStack {
      HStack(alignment: .center) {
        Image("logo")
          .frame(height: 40.0)
          .scaledToFill()
        Spacer()
        
        Image("profilepic")
          .frame(height: 40.0)
          .scaledToFit()
      }
      .frame(height: 40.0)
      
      Text("Rise and Shine")
        .font(.title)
      HStack(spacing: 20) {
        Color.yellow
          .cornerRadius(.infinity)
          .frame(width: 20, height: 20)
        Text("14*C")
      }
    }
  }
}


struct Messages: View {
  var body: some View {
    ScrollView(.horizontal) {
      HStack {
        ForEach(mockMessages) { message in
          HStack {
            Image(systemName: message.image)
            Text(message.text)
              .lineLimit(2)
              .frame(width: 120)
            
          }
          .cornerRadius(.infinity)
          .border(Color.gray, width: 1)
          
        }
      }
    }
  }
}


struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
