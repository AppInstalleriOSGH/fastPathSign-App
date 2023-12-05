import SwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            Button {
                do {
                    try FileManager.default.copyItem(atPath: , toPath: )
                    //fastPathSign
                } catch {
                    print(error)
                }
            } label: {
                Text("fastPathSign")
            }
        }
    }
}
