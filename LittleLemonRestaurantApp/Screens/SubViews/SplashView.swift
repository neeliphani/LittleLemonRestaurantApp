import SwiftUI

struct SplashView: View {
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()

            Image("little-lemon-logo")
                .resizable()
                .scaledToFit()
                .frame(width: 500, height: 500)
        }
    }
}

#Preview {
    SplashView()
}
