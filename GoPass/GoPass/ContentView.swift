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
            NavigationView {
                ScrollView {
                    VStack(alignment: .leading) {
                        Planview()
                        EventsView()
                        TicketsTabView()
                        UpcomingEventView()
                    }
                    .frame(maxWidth: .infinity)

                    .padding(.vertical, 16)
                    .navigationBarTitle("", displayMode: .inline)
                    .navigationBarItems(leading: VStack(alignment: .leading, spacing: 20) {
                        VStack {
                            HeaderView()
                            
                            
                        }.frame(width: UIScreen.main.bounds.width * 0.9)
                    })
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
