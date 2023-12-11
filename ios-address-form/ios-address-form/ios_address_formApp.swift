import SwiftUI

@main
struct ios_address_formApp: App {
    static let model: Model = Model();
    let viewModel: ViewModel = ViewModel(model: model);
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: viewModel)
        }
    }
}
