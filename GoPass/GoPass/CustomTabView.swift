import SwiftUI

struct CustomTabView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> CustomTabBarController {
        let tabBarController = CustomTabBarController()
        
//        let homeView = UIHostingController(rootView: NavigationView { HomePageView() })
        let homeView = UIHostingController(rootView: NavigationView { HomePageView(showHeader: true) })

        homeView.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house.fill"), tag: 0)
        
        let planView = UIHostingController(rootView: NavigationView { BuyView() })
        planView.tabBarItem = UITabBarItem(title: "Plan", image: UIImage(named: "location"), tag: 1)
        
//        let planView = UIHostingController(rootView: NavigationView { BuyView() })
//               let planTabBarItem = UITabBarItem(title: "Plan", image: UIImage(named: "location"), tag: 1)
//               planTabBarItem.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)
//               planView.tabBarItem = planTabBarItem
        
//        let buyView = UIHostingController(rootView: NavigationView { WalletView() })
//        buyView.tabBarItem = UITabBarItem(title: "Buy", image: UIImage(named: "cart"), tag: 2)
        let buyView = UIHostingController(rootView: NavigationView { BuyView() })
                      let  buyTabBarItem = UITabBarItem(title: "Buy", image: UIImage(named: "cart"), tag: 1)
        buyTabBarItem.imageInsets = UIEdgeInsets(top: -5, left: 0, bottom: 0, right: 0)
        buyView.tabBarItem = buyTabBarItem
        
        let walletView = UIHostingController(rootView: NavigationView { WalletView() })
        walletView.tabBarItem = UITabBarItem(title: "Wallet", image: UIImage(named: "wallet"), tag: 3)
        
        let moreView = UIHostingController(rootView: NavigationView { BuyView() })
        moreView.tabBarItem = UITabBarItem(title: "More", image: UIImage(systemName: "ellipsis"), tag: 4)
        
        tabBarController.viewControllers = [homeView, planView, buyView, walletView, moreView]
        
        return tabBarController
    }
    
    func updateUIViewController(_ uiViewController: CustomTabBarController, context: Context) {
        // No updates needed
    }
}


