//
//  EventView.swift
//  GoPass
//
//  Created by provility on 09/07/24.
//

import SwiftUI
import Foundation

struct UpcomingEventView: View {
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            VStack {
                Text("Upcoming Events")
                    .font(.headline)
                Spacer()
            }
            VStack {
                VStack {
                    Text("Texas State Fair Admission")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding([.horizontal, .bottom])
                }
                .frame(maxWidth: .infinity)
                .frame(height: 160.0)
                .background(ZStack {
                    
                    Image("upcoming-events")
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
        .frame(width: UIScreen.main.bounds.width * 0.9)
    }
}

struct UpcomingEventView_Previews: PreviewProvider {
    static var previews: some View {
        UpcomingEventView()
            .previewLayout(.sizeThatFits) // Adjust the preview layout
    }
}
