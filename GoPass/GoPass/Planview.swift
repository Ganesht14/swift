//
//  Planview.swift
//  GoPass
//
//  Created by provility on 09/07/24.
//

import SwiftUI

struct Planview: View {
    var body: some View {
        VStack{
            HStack {
                Image("locationIcon")
                    .resizable()
                       .scaledToFit()
                       .frame(width: 50, height: 50)
                .padding(.leading, 15)
                    
                
                Text("Plan your trip")
                    .font(.title2)
                    .fontWeight(.medium)
                    .foregroundStyle(Color("plan"))
                    .font(.system(size: 18))
                    .multilineTextAlignment(.leading)
                    .padding(.leading,5)
                    .frame(maxWidth: .infinity,
                           maxHeight:50, alignment: .leading)
            }
            .background(
                Image("mapBackground")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .padding(.leading,60)
                    .frame(width: 50, height: 50)
            
                )
            .overlay(RoundedRectangle(cornerRadius: 10)
                .stroke(Color.gray, lineWidth: 0.5))      .padding(.leading, 5)
            .padding(.bottom,10)
            
            
            
            HStack {
                Image("baduBus")
                    .resizable()
                       .scaledToFit()
                       .frame(width: 50, height: 50)
                    .padding(.leading, 10)
                
                Text("Badu Bus and Train Tracker")
                    .font(.title2)
                    .fontWeight(.medium)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.leading)
                    .padding(.leading, 10.0)
                    .frame(maxWidth: .infinity,
                           maxHeight:50, alignment: .leading)
            }
            .background(Color(red: 0.621, green: 0.256, blue: 0.339))
            .cornerRadius(10)
            .padding(.leading, 5)
            
        }
        .padding(10)
    }

}





struct Planview_Previews: PreviewProvider {
    static var previews: some View {
        Planview()
    }
}
