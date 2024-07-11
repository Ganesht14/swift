//
//  ContentView.swift
//  GoPass
//
//  Created by provility on 09/07/24.


import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                VStack(spacing: 0) {
                    HeaderView()
                        .frame(maxWidth: .infinity)
                        .padding(.horizontal, 16)
                        .background(Color.white)
                    
                    ScrollView {
                        VStack(alignment: .leading, spacing: 10) {
                            
                            TicketsTabView()
                                .frame(maxWidth: .infinity)
                                .padding(.horizontal, 26)
                            
                            ReportView()
                                .frame(maxWidth: .infinity)
                                .padding(.horizontal, 16)
                            NearestView()
                            
                            UpcomingEventView()
                                .frame(maxWidth: .infinity)
                                .padding(.horizontal, 16)
                        }
                        .padding(.vertical, 16)
                    }
                    
                    FooterView()
                        .frame(maxWidth: .infinity)
                        .padding(.horizontal, 16)
                        .background(Color.white) 
                }
                .navigationBarTitle("", displayMode: .inline)
                .navigationBarHidden(true)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
