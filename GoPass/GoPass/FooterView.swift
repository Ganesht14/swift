//
//  FooterView.swift
//  GoPass
//
//  Created by RoshanSabika on 7/10/24.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        Divider()

        HStack {
            VStack {
                Image(systemName: "house") // Replace with your home icon
                    .resizable()
                    .frame(width: 25, height: 25)
                    .foregroundColor(.blue)
                
                Text("HOME")
                
                    .font(.footnote)
                    .foregroundColor(.blue)
            }
            Spacer()
            VStack {
                Image("map_png") // Replace with your plan icon
                    .resizable()
                    .frame(width: 25, height: 25)
                Text("PLAN")
                    .font(.footnote)
            }
            Spacer()
            VStack {
                Image(systemName: "cart") // Replace with your buy icon
                    .resizable()
                    .frame(width: 25, height: 25)
                Text("BUY")
                    .font(.footnote)
            }
            Spacer()
            VStack {
                Image(systemName: "wallet.pass.fill") // Replace with your wallet icon
                    .resizable()
                    .frame(width: 25, height: 25)
                Text("WALLET")
                    .font(.footnote)
            }
            Spacer()
            VStack {
                Image(systemName: "ellipsis") // This is the system more icon
                
                    .frame(width: 25, height: 25)
                Text("MORE")
                    .font(.footnote)
            }
        }
        .padding()    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
    }
}
