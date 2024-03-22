import SwiftUI

@main
struct Main {
    static func main() {
        let Args = CommandLine.arguments
        if Args.count > 1 {
            fastPathSign(Args[1], nil)
        } else {
            MyApp.main()
        }
    }
}

struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
