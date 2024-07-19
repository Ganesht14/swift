//
//  HomePageView.swift
//  GoPass
//
//  Created by provility on 15/07/24.
//

import SwiftUI

struct HomePageView: View {
    var showHeader: Bool // Added parameter to control header visibility

    var body: some View {
//        NavigationView {
//            ZStack {
        VStack(spacing: 0) {
                   if showHeader {
                       HeaderView()
                           .frame(maxWidth: .infinity)
                           .background(Color.white) // Optional: Set background color if needed
                   }
                    ScrollView {
                        VStack(alignment: .leading) {
                            Planview()
                                .frame(maxWidth: .infinity)
                                .padding(.horizontal, 26)
                            EventsView()
                                .frame(maxWidth: .infinity)
                                .padding(.horizontal, 26)
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
                    }
                    
        
            //    }
                
                .navigationBarTitle("", displayMode: .inline)
                .navigationBarHidden(true)
            }
        }

 //   }
}


struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView(showHeader: true)
    }
}
