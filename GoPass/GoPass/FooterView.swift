//
//  FooterView.swift
//  GoPass
//
//  Created by RoshanSabika on 7/10/24.
//

import SwiftUI

struct FooterView: View {
    @State private var isActive = false
    
    var body: some View {
        VStack{
            HStack {
                NavigationLink(destination: HomePageView()) { // Navigate to BuyView on tap
                    
                    VStack {
                        Image(systemName: "house") // Replace with your home icon
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(Color(red: 0/255, green: 113/255, blue: 186/255))
                        Text("HOME")
                            .font(.footnote)
                            .foregroundColor(Color(red: 0/255, green: 113/255, blue: 186/255))
                    }
                }
                Spacer()
                VStack {
                    Image("map_png")
                        .resizable()
                        .frame(width: 25, height: 25)
                    Text("PLAN")
                        .font(.footnote)
                }
                Spacer()
                NavigationLink(
                    destination: BuyView(),
                    isActive: $isActive,
                    label: {
                        VStack {
                            Image(systemName: "cart")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(isActive ? .blue : .black) // Change color based on isActive
                            Text("BUY")
                                .font(.footnote)
                                .foregroundColor(isActive ? .blue : .black)
                        }
                    }
                )
                Spacer()
                NavigationLink(destination: WalletView()) { // Navigate to BuyView on tap
                    
                    VStack {
                        Image(systemName: "wallet.pass.fill")
                            .resizable()
                            .frame(width: 25, height: 25)
                        Text("WALLET")
                            .font(.footnote)
                    }
                }
                Spacer()
                VStack {
                    Image(systemName: "ellipsis")
                        .frame(width: 25, height: 25)
                    Text("MORE")
                        .font(.footnote)
                }
            }
            .padding()
        }
    }
}


struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            FooterView()
        }
        
    }
}
