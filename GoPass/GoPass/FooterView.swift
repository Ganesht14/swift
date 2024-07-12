//
//  FooterView.swift
//  GoPass
//
//  Created by RoshanSabika on 7/10/24.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack{
            HStack {
                VStack {
                    Image(systemName: "house") // Replace with your home icon
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(Color(red: 0/255, green: 113/255, blue: 186/255))
                    Text("HOME")
                        .font(.footnote)
                        .foregroundColor(Color(red: 0/255, green: 113/255, blue: 186/255))
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
                NavigationLink(destination: NearestView()) { // Navigate to BuyView on tap
                                   VStack {
                                       Image(systemName: "cart")
                                           .resizable()
                                           .frame(width: 25, height: 25)
                                       Text("BUY")
                                           .font(.footnote)
                                   }
                               }
                Spacer()
                VStack {
                    Image(systemName: "wallet.pass.fill")
                        .resizable()
                        .frame(width: 25, height: 25)
                    Text("WALLET")
                        .font(.footnote)
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
//struct BuyView: View {
//    var body: some View {
//        Text("Buy View Content") // Replace with your actual view content
//            .font(.largeTitle)
//            .navigationTitle("Buy")
//            .navigationBarTitleDisplayMode(.inline)
//    }


struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView { // Wrap in NavigationView for NavigationLink to work
                   FooterView()
               }    }
}
