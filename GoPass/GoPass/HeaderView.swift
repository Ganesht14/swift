//
//  HeaderView.swift
//  GoPass
//
//  Created by provility on 09/07/24.
//

import Foundation
import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            Image("GoPass")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 40)
            Spacer()
            ZStack {
                Image(systemName: "bell")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .foregroundColor(Color(red: 0/255, green: 113/255, blue: 186/255))
                Circle()
                    .foregroundColor(.red)
                    .frame(width: 20, height: 20)
                    .offset(x: 10, y: -10)
            }
        }
        .padding()
    }
}


struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
            .previewLayout(.sizeThatFits)
    }
}
