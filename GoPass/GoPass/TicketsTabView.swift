//
//  TicketsTabView.swift
//  GoPass
//
//  Created by provility on 09/07/24.
//

import Foundation
import SwiftUI

struct TicketsTabView: View {
    @State private var selectedTab: String = "Unused"
       
       var body: some View {
           VStack {
               HStack {
                   TabButton(title: "Unused", isSelected: selectedTab == "Unused") {
                       selectedTab = "Unused"
                   }
                   TabButton(title: "Suggested", isSelected: selectedTab == "Suggested") {
                       selectedTab = "Suggested"
                   }
               }
               .padding(.top)
               
               ScrollView(.horizontal, showsIndicators: false) {
                   HStack(spacing: 20) {
                       UnusedTicketCardView(title: "Register to sync", subtitle: "or buy tickets")
                       SuggestedTicketCardView(title: "Register to sync", subtitle: "or buy tickets",
                                               price:"$6.00", backgroundImage: "Dart_carousel", logoImage: "Dart_carousel")
                   }
                   .padding()
               }
               
               Spacer()
           }
           .background(Color.white)
       }
}

struct TicketsTabView_Previews: PreviewProvider {
    static var previews: some View {
        TicketsTabView()
            .previewLayout(.sizeThatFits)
    }
}
