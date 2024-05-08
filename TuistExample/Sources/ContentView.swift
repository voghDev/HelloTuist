import SwiftUI

public struct ContentView: View {
    public init() {}

    public var body: some View {
        Text("Hello, World!")
            .padding()
            .onAppear {
                NetworkManager.shared.fetchExampleHomepage { result in
                    switch result {
                        case .success(let html):
                            print("page HTML: \(html)")
                        case .failure(let error):
                            print("Error fetching page: \(error)")
                    }
                }
                let util = CmarkUtil()
                util.cmarkExample()
            }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
