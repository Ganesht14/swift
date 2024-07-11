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
    let suggestedTicketsData = [
        ("Ticket 1", "$6.00", "Dart_carousel", "GoPass"),
        ("Ticket 2", "$8.00", "Dart_carousel", "Logo2"),
        ("Ticket 3", "$10.00", "Third_image", "Logo3")
        // Add more tuples as needed
    ]
    
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
                    ForEach(suggestedTicketsData, id: \.self.0) { ticketData in
                        SuggestedTicketCardView(title: ticketData.0,
                            subtitle: "Subtitle here",
                            price: ticketData.1,
                            backgroundImage: ticketData.2,
                            logoImage: ticketData.3)
                    }
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
