//
//  WalletView.swift
//  GoPass
//
//  Created by provility on 15/07/24.
//

import SwiftUI

struct WalletView: View {
    var body: some View {
        HStack(alignment: .top) {
            VStack {
                Image("GoPass")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 40)
                Text("WALLET")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundStyle(Color(hue: 0.628, saturation: 0.773, brightness: 0.39))
                    .padding(.leading,-33.0)
                    .padding(.top, -15)

            }
            Spacer()
            
            VStack {
                Text("Add Funds")
                    .font(.system(size: 25))
                    .fontWeight(.bold)
                    .foregroundStyle(Color("primaryColor"))
                Spacer()
            }
        }
        .padding()
    }
}


struct WalletView_Previews: PreviewProvider {
    static var previews: some View {
        WalletView()
    }
}
