////
////  TicketsTabView.swift
////  GoPass
////
////  Created by provility on 09/07/24.
////
//
//import Foundation
//import SwiftUI
//
//struct TicketsTabView: View {
//    @State private var selectedTab: String = "Unused"
//
//       var body: some View {
//           VStack {
//               HStack {
//                   TabButton(title: "Unused", isSelected: selectedTab == "Unused") {
//                       selectedTab = "Unused"
//                   }
//                   TabButton(title: "Suggested", isSelected: selectedTab == "Suggested") {
//                       selectedTab = "Suggested"
//                   }
//               }
//               .padding(.top)
//
//               ScrollView(.horizontal, showsIndicators: false) {
//                   HStack(spacing: 20) {
//                       UnusedTicketCardView(title: "Register to sync", subtitle: "or buy tickets")
//                       SuggestedTicketCardView(title: "Register to sync", subtitle: "or buy tickets",
//                                               price:"$6.00", backgroundImage: "Dart_carousel", logoImage: "Dart_carousel")
//                   }
//                   .padding()
//               }
//
//               Spacer()
//           }
//           .background(Color.white)
//       }
//}
//
//struct TicketsTabView_Previews: PreviewProvider {
//    static var previews: some View {
//        TicketsTabView()
//            .previewLayout(.sizeThatFits)
//    }
//}

import SwiftUI

struct TicketsTabView: View {
    @State private var selectedTab: String = "Unused"
    let suggestedTicketsData = [
        ("DAY PASS 1","Local, Adult",  "$6.00", "Dart_carousel", "dart1"),
        ("DAY PASS 2", "Local Adult", "$8.00", "Dart_carousel", "dart1"),
        ("DAY PASS 3", "Local Adult", "$10.00", "Dart_carousel", "dart1")
        // Add more tuples as needed
    ]
    
    @Namespace private var scrollViewNamespace
    
    var body: some View {
        VStack {
            HStack {
                TabButton(title: "Unused", isSelected: selectedTab == "Unused") {
                    withAnimation {
                        selectedTab = "Unused"
                            
                    }
                }
                    
                TabButton(title: "Suggested", isSelected: selectedTab == "Suggested") {
                    withAnimation {
                        selectedTab = "Suggested"
                    }
                }
                Spacer()
            }
            .padding(.top, 50)
            
            ScrollViewReader { proxy in
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        UnusedTicketCardView(
                        title: "Register to sync",
                        subtitle: "or buy tickets")
                            .id("UnusedTicket")
                            .padding(.leading,10)

                        ForEach(suggestedTicketsData, id: \.self.0) { ticketData in
                            SuggestedTicketCardView(
                                title: ticketData.0,
                                subtitle: ticketData.1,
                                price: ticketData.2,
                                backgroundImage: ticketData.3,
                                logoImage: ticketData.4
                            )
                            .id(ticketData.0)
                            .padding(.leading,10)
                        }
                    }
                    .padding()
                }
                .onChange(of: selectedTab) { newTab in
                    withAnimation {
                        if newTab == "Suggested" {
                            proxy.scrollTo(suggestedTicketsData.first?.0, anchor: .leading)
                        } else if newTab == "Unused" {
                            proxy.scrollTo("UnusedTicket", anchor: .leading)
                        }
                    }
                }
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
