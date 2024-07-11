//////
//////  TicketsCardView.swift
//////  GoPass
//////
//////  Created by provility on 09/07/24.

import Foundation
import SwiftUI

struct UnusedTicketCardView: View {
    let title: String
    let subtitle: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(title)
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.black)
                .padding(.top, -0.5)
            
            Text(subtitle)
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(Color(red: 0/255, green: 113/255, blue: 186/255))
            
            Spacer()
            Divider()            
            Button(action: {
                // Add your action here
            }) {
                Text("SIGN UP")
                    .font(.headline)
                    .foregroundColor(Color(red: 0/255, green: 113/255, blue: 186/255))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 5)
                    .frame(height: 40)
                    .padding(.bottom, -10)

            }
        }
        .padding([.leading, .top, .bottom, .trailing])
        .frame(width: UIScreen.main.bounds.width * 0.7, height: 220)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}

struct UnusedTicketCardView_Previews: PreviewProvider {
    static var previews: some View {
        UnusedTicketCardView(title: "Register to sync", subtitle: "or buy tickets")
            .previewLayout(.sizeThatFits)
    }
}

