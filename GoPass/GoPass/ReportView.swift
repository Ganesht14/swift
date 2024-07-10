//
//  ReportView.swift
//  GoPass
//
//  Created by RoshanSabika on 7/10/24.
//

import SwiftUI

struct ReportView: View {
    var body: some View {
        VStack {
          
            HStack(spacing: 15.0) {
                
                Button(action: {
                    // Action for the first button (globe image)
                }) {
                    Label("Report a problem to DART",
                          systemImage: "checkmark.shield")
                        .foregroundColor(.blue)
                        .font(.title3)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray.opacity(0.3), lineWidth: 2)
                        )
                }
                
                Button(action: {
                    // Action for the second button (email post card image)
                }) {
                    Image(systemName: "envelope")
                        .foregroundColor(.blue)
                        .font(.title2)
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray.opacity(0.3), lineWidth: 2)
                        )
                }
            }
            .padding(.bottom, 10.0)
            .padding(.horizontal, 6.5)
        }    }
}

struct ReportView_Previews: PreviewProvider {
    static var previews: some View {
        ReportView()
    }
}
