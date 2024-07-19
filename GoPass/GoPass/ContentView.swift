import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack(spacing: 0) {
                    HeaderView()
                        .frame(maxWidth: .infinity)
                    //           .padding(.horizontal,16)
                        .background(Color.white)
                }
                    HomeTabView()
                        .frame(maxWidth: .infinity)
                        .padding(.horizontal, 16)
                        .padding(.top, 20)
                        .background(Color.white)
                
                .navigationBarTitle("", displayMode: .inline)
                .navigationBarHidden(true)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
