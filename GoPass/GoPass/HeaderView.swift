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
                .frame(width: 56.0, height: 56.0)
            Spacer()
            ZStack {
                Image(systemName: "bell.fill")
                    .foregroundColor(Color.blue)
                    .font(.body)
                Circle()
                    .fill(Color.red)
                    .frame(width: 10, height: 10)
                    .offset(x: 6, y: -6) // Adjust position of the red dot
            }
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 10) // Adjust padding to your needs
//        .background(
//            RoundedRectangle(cornerRadius: 0)
//                .fill(Color.white)
//                .shadow(color: Color.gray.opacity(0.5), radius: 5, x: 0, y: 2)
//        )
//        .overlay(
//            RoundedRectangle(cornerRadius: 0)
//                .stroke(Color.gray.opacity(0.2), lineWidth: 1)
//        )
        .frame(maxWidth: .infinity) // Ensure it takes the full width
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
            .previewLayout(.sizeThatFits) // Adjust the preview layout
    }
}
