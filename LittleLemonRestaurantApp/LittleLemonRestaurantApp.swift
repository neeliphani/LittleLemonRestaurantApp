import SwiftUI

@main
struct LittleLemonRestaurantApp: App {
    let persistenceController = PersistenceController.shared
    @State private var showSplash = true

        var body: some Scene {
            WindowGroup {
                Group {
                    if showSplash {
                        SplashView()
                    } else {
                        OnboardingView()
                            .environment(\.managedObjectContext,
                                          persistenceController.container.viewContext)
                    }
                }
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                        withAnimation(.easeOut) {
                            showSplash = false
                        }
                    }
                }
            }
        }
}
