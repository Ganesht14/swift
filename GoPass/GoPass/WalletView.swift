import SwiftUI

struct WalletView: View {
    @State private var textValue: String = ""
    @State private var textValue1: String = ""
    @State private var selectedTab = 1
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) { // Ensuring spacing between elements
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Image("GoPass")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 40)
                    Text("WALLET")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(Color(hue: 0.628, saturation: 0.773, brightness: 0.39))
                        .padding(.leading,5)
                        .padding(.top, -15)
                }
                Spacer()
                
                VStack(alignment: .trailing) {
                    Text("Add Funds")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .foregroundColor(Color("primaryColor"))
                }
            }
            
            WalletTabView(selectedTab: $selectedTab)
            
            if selectedTab == 1 {
                Text("No Purchased tickets. When you buy your tickets, the tickets will appear here")
                    .font(.title2)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 25)
                    .padding(.top, 15)
                
            }
            else if selectedTab == 2 {
                Text("No expire tickets. When you buy your tickets, the tickets will appear here")
                    .font(.title2)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .padding(25)
                    .padding(.top, 15)
                
            }else if selectedTab == 3 {
                Text("No orders found. When you buy your tickets, the orders will appear here")
                    .font(.title2)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .padding(25)
                    .padding(.top, 15)
                
            }
            
            
        }
        .padding()
        .frame(maxHeight: .infinity, alignment: .top)
    }
}

struct WalletView_Previews: PreviewProvider {
    static var previews: some View {
        WalletView()
    }
}
