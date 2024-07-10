//
//  SuggestedTicketCardView.swift
//  GoPass
//
//  Created by provility on 09/07/24.
//

import Foundation
import SwiftUI

struct SuggestedTicketCardView: View {
    let title: String
    let subtitle: String
    let price: String
    let backgroundImage: String
    let logoImage: String
    
    var body: some View {
        VStack {
            VStack {
                Image(logoImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 60.0, height: 60.0)
                Text(title)
                    .font(.title)
                    .foregroundColor(.white)
                Text(subtitle)
                    .font(.title2)
                    .foregroundColor(.white)
                Text(price)
                    .font(.title2)
                    .foregroundColor(.white)
            }
            .frame(maxWidth: .infinity)
            .frame(height: 160.0)
            .background(ZStack {
                
                Image(backgroundImage)
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .overlay(Color(red: 0/255, green: 32/255, blue: 91/255)
                        .opacity(0.5)
                        .cornerRadius(10)
                                    )
            })
            Button(action: {
                // Add your action here
            }) {
                Text("BUY TICKET")
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

//struct SuggestedTicketCardView_Previews: PreviewProvider {
//    static var previews: some View {
//        SuggestedTicketCardView()
//            .previewLayout(.sizeThatFits) // Adjust the preview layout
//    }
//}
