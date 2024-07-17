//
//  WalletView.swift
//  GoPass
//
//  Created by provility on 15/07/24.
//

import SwiftUI

struct WalletView: View {
    var body: some View {
        VStack{
            Text("WALLET VIEW")
            
            FooterView()
                .frame(maxWidth: .infinity)
                .padding(.horizontal, 16)
                .background(Color.white)
        }
    }
}

struct WalletView_Previews: PreviewProvider {
    static var previews: some View {
        WalletView()
    }
}
