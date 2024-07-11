//
//  TicketsCardView.swift
//  GoPass
//
//  Created by provility on 09/07/24.
//

import Foundation
import SwiftUI

struct UnusedTicketCardView: View {
    let title: String
    let subtitle: String
    
    var body: some View {
        VStack {
            VStack {
                Text(title)
                    .font(.title2)
                    .foregroundColor(.black)
                Text(subtitle)
                    .font(.title2)
                    .foregroundColor(.blue)
            }
            .frame(height: 160.0)
            Divider()
            Button(action: {
                // Add your action here
            }) {
                Text("SIGN UP")
                    .font(.headline)
                    .foregroundColor(.blue)
                    .frame(maxWidth: .infinity)
                    .frame(height: 40)
            }
        }
        .frame(width: UIScreen.main.bounds.width * 0.7, height: 200)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}

//struct UnusedTicketCardView_Previews: PreviewProvider {
//    static var previews: some View {
//        UnusedTicketCardView()
//            .previewLayout(.sizeThatFits) // Adjust the preview layout
//    }
//}
