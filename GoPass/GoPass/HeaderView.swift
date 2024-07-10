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
                .frame(width: 60.0, height: 60.0)
            Spacer()
            ZStack {
                Image(systemName: "bell.fill")
                    .foregroundColor(Color.blue)
                    .font(.body)
                Circle()
                    .fill(Color.red)
                    .frame(width: 10, height: 10)
                    .offset(x: 6, y: -6)
            }
        }
    }
}


struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
            .previewLayout(.sizeThatFits)
    }
}
