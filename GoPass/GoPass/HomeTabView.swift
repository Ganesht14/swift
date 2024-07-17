//
//  HomeTabView.swift
//  GoPass
//
//  Created by provility on 15/07/24.
//

import SwiftUI

struct HomeTabView: View {
    var body: some View {
        TabView {
            NavigationView {
                HomePageView()
            }
            .tabItem {
                Label("Home", systemImage: "house")
            }
            
            NavigationView {
                BuyView()
            }
            .tabItem{
                Label("Plan", systemImage: "location")
                
            }
            
            NavigationView {
                WalletView()
            }
            .tabItem {
                Image(systemName: "cart")
                Text("Buy")
            }
            NavigationView {
                BuyView()
            }
            .tabItem{
                Image(systemName: "wallet.pass.fill")
                Text("Wallet")
                
            }
            NavigationView {
                BuyView()
            }
            .tabItem{
                Image(systemName: "ellipsis")
                Text("More")
                
                
            }
        }
    }
    
}

struct HomeTabView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabView()
    }
}
