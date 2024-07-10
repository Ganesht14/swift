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
            VStack(spacing: 0) {
                HeaderView()
                Planview()
                EventsView()

            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
