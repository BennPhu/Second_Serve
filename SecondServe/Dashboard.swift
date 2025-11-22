import SwiftUI

struct Dashboard: View {
    @State private var searchFood = ""
    
    var body: some View {
        TabView {

            // HOME TAB — Your Dashboard content
            ScrollView {
                VStack(spacing: 20) {

                    // Search Bar
                    TextField("Search", text: $searchFood)
                        .textFieldStyle(.roundedBorder)
                        .padding(.horizontal)
                        .frame(width: 360, height: 47)

                    // Banner
                    Image("PearBanner")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 330, height: 100)
                        .clipped()
                        .cornerRadius(12)
                }
                .padding(.top, 24)
            }
            .tabItem {
                Image(systemName: "house.fill")
                Text("Home")
            }


            // SELL TAB
            Text("Sell")
                .tabItem {
                    Image(systemName: "dollarsign")
                    Text("Sell")
                }

            // DONATION TAB
            Text("Donation")
                .tabItem {
                    Image(systemName: "gift")
                    Text("Donation")
                }

            // CART TAB
            Text("Cart")
                .tabItem {
                    Image(systemName: "cart.fill")
                    Text("Cart")
                }

            // PROFILE TAB
            Text("Profile")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
        }
    }
}

#Preview {
    Dashboard()
}
