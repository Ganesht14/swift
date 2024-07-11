//
//  EventsView.swift
//  GoPass
//
//  Created by provility on 09/07/24.
//

import SwiftUI

struct EventsView: View {
    var body: some View {
        VStack(alignment:.leading){
            Text("Events")
                .font(.title3)
                .foregroundColor(.black)
                .padding(.leading,15)
            ScrollView(.horizontal) {
                HStack(spacing: 10) {
                    ForEach(1..<4) { index in
                        Button(action: {
                            print("Box \(index) tapped")
                        }) {
                            VStack(spacing: 0){
                                Image("eventImage\(index)")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 200, height: 100)
                                    .cornerRadius(20)
                                
                                Text("Nov 09")
                                    .foregroundColor(Color.gray)
                                    .padding([.top, .leading], 10)
                                Text(getDescription(for: index))
                                    .foregroundColor(Color.blue)
                                    .fontWeight(.medium)
                                    .padding([.top, .leading, .trailing], 10)
                                    .padding(.bottom, 70)
                            }
                            .background(Color.white)
                            .cornerRadius(20)
                            .shadow(radius: 5)
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color.gray, lineWidth: 1) // Adjust border color and width as needed
                            )
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
                .padding(.leading, 10)
            }
        }
        
    }
    func getDescription(for index: Int) -> String {
        switch index {
        case 1:
            return "DART 40th Anniversary"
        case 2:
            return "Description for event 2"
        case 3:
            return "Description for event 3"
        default:
            return ""
        }
    }
    
    
}


struct EventsView_Previews: PreviewProvider {
    static var previews: some View {
        EventsView()
    }
}
