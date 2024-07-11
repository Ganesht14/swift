////
////  EventView.swift
////  GoPass
////
////  Created by provility on 09/07/24.
////
//

import SwiftUI
import Foundation

struct UpcomingEventView: View {
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Upcoming Events")
                .font(.title)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
            
            VStack {
                VStack {
                    Spacer()
                    
                    VStack(alignment: .leading) {
                        Text("Texas State Fair")
                            .fontWeight(.bold)
                        Text("Admission")
                            .fontWeight(.bold)
                    }
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(.white)
                    .padding(.leading, 15.0)
                    .padding(.bottom, -30)
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
                        .foregroundColor(Color(red: 0/255, green: 113/255, blue: 186/255))
//                        .foregroundColor(.blue)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .frame(height: 110)
                        .padding(.leading)
                }
            }
            .frame(maxWidth: .infinity)
            .frame(height: 200)
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 5)
            .padding(.horizontal)
        }
        .frame(maxWidth: .infinity)
        .padding()
    }
}

struct UpcomingEventView_Previews: PreviewProvider {
    static var previews: some View {
        UpcomingEventView()
            .previewLayout(.sizeThatFits)
    }
}

