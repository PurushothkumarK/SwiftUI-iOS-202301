//
//  ContentView.swift
//  SwiftUISample
//
//  Created by Purushoth on 01/08/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showDetails = false
    
    var body: some View {
        VStack(spacing:30) {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.red)
                .scaledToFill()
            Divider().foregroundColor(.blue)
            Text("Hello, world!").foregroundColor(.red)
            Button("Button title") {
                print("button tapped")
            }
            Button("Show details") {
                showDetails.toggle()
            }
            Button("Delete", role: .destructive) {
                print("Perform delete")
            }
            if showDetails {
                Text("You should follow me on Twitter: @twostraws")
                    .font(.largeTitle)
            }
            Button {
                print("Button pressed")
            } label: {
                Text("Press Me")
                    .padding(20)
            }
        }
        
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
