import SwiftUI

struct HomeTabView: View {
    var body: some View {
        CustomTabView()

//     TabView {
//        NavigationView {
//            HomePageView()
//        }
//        .tabItem {
//          VStack {
//             Image(systemName: "house.fill")
//               .resizable()
//                        .frame(width: 24, height: 24) // Adjust size here
//                    Text("Home")
//                        .font(.largeTitle)
//                        .fontWeight(.bold)
//                        .foregroundColor(Color.green)
//
//                }
//
//            }
//
//            NavigationView {
//                BuyView()
//            }
//            .tabItem{
//                VStack {
//                    Image("location")
//
//                    Text("Plan")
//
//                }
//
//            }
//
//            NavigationView {
//                WalletView()
//            }
//            .tabItem {
//                Image("cart")
//                Text("Buy")
//
//
//            }
//            NavigationView {
//                BuyView()
//            }
//            .tabItem{
//                Image("wallet")
//                Text("Wallet")
//
//
//            }
//            NavigationView {
//                BuyView()
//            }
//            .tabItem{
//                Image(systemName: "ellipsis")
//                Text("More").fontWeight(.bold)
//
//
//
//            }
//        }
     .padding(.top, -10)

    }
    
    
}

struct HomeTabView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabView()
    }
}
