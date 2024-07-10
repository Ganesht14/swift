//
//  NearestView.swift
//  GoPass
//
//  Created by RoshanSabika on 7/10/24.
//

import SwiftUI

struct NearestView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Nearest")
                .font(.title)
                .padding(.leading, 40)
            ZStack(alignment: .leading) {
                Rectangle()
                    .foregroundColor(.white)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.gray.opacity(0.3), lineWidth: 1)    )
                    .frame(width: 415, height: 300)
                    .padding(.leading, 40)
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("No stops")
                        .bold()
                        .font(.largeTitle)
                        .padding(.leading, 60)
                    
                    Text("nearby")
                        .bold()
                        .foregroundColor(.blue)
                        .padding(.leading, 60)
                        .font(.largeTitle)
                    
                }
                .padding(.bottom, 150)
            }
        }    }
}

struct NearestView_Previews: PreviewProvider {
    static var previews: some View {
        NearestView()
    }
}
