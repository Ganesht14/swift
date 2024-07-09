//
//  ContentView.swift
//  GoPass
//
//  Created by provility on 09/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack {
                HeaderView()
                Spacer() // Pushes the HeaderView to the top
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
