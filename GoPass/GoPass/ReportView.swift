//
//  ReportView.swift
//  GoPass
//
//  Created by RoshanSabika on 7/10/24.

import SwiftUI

struct ReportView: View {
    var body: some View {
        
        //        VStack {
        //        VStack {
        
        HStack(spacing: 15.0) {
            
            Button(action: {
            }) {
                Label("Report a problem to DART",
                      systemImage: "checkmark.shield")
                .foregroundColor(Color(red: 0/255, green: 113/255, blue: 186/255))
                .font(.title3)
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray.opacity(0.3), lineWidth: 2))
            }
            
            Button(action: {
            }) {
                Image(systemName: "envelope")
                    .foregroundColor(.blue)
                    .font(.title2)
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray.opacity(0.3), lineWidth: 2))
            }
        }
        .padding(.bottom, 10.0)
        .padding(.horizontal, 6.5)
    }
}
//}
//}

struct ReportView_Previews: PreviewProvider {
    static var previews: some View {
        ReportView()
    }
}
