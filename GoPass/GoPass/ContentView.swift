//
//  ContentView.swift
//  GoPass
//
//  Created by provility on 09/07/24.


import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                HeaderView()
                    .frame(maxWidth: .infinity)
                    .padding(.horizontal, 16)
                    .background(Color.white) // Ensure the header has a background color
                
                ScrollView {
                    VStack(alignment: .leading, spacing: 20) {
                        
                        TicketsTabView()
                            .frame(maxWidth: .infinity)
                            .padding(.horizontal, 16)
                        
                        UpcomingEventView()
                            .frame(maxWidth: .infinity)
                            .padding(.horizontal, 16)
                    }
                    .padding(.vertical, 16)
                    
                    ReportView()
                    NearestView()
                }
                
                FooterView()
                    .frame(maxWidth: .infinity)
                    .padding(.horizontal, 16)
                    .background(Color.white) // Ensure the footer has a background color
            }
            .navigationBarTitle("", displayMode: .inline)
            .navigationBarHidden(true) // Hide the default navigation bar
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
