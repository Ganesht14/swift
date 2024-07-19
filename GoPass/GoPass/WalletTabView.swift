//
//  WalletTabView.swift
//  GoPass
//
//  Created by provility on 17/07/24.
//

import SwiftUI

struct WalletTabView: View {
    @Binding var selectedTab: Int // Binding to synchronize tab selection with parent view
    
    var body: some View{
        HStack {
            Button(action: { selectedTab = 1 }) {
                Text("CURRENT")
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundColor(selectedTab == 1 ? Color.blue : Color.gray)
            }
            .padding()
            Spacer()
            
            
            Button(action: { selectedTab = 2 }) {
                Text("EXPIRED")
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundColor(selectedTab == 2 ? Color.blue : Color.gray)
            }
            .padding()
            Spacer()
            
            
            Button(action: { selectedTab = 3 }) {
                Text("HISTORY")
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundColor(selectedTab == 3 ? Color.blue : Color.gray)
            }
            .padding()
            
            
        }
    }
    
}
            


struct WalletTabView_Previews: PreviewProvider {
    static var previews: some View {
        WalletTabView(selectedTab: .constant(1))
    }
}

