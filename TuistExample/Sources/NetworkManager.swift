import Foundation
import Alamofire

class NetworkManager {
    static let shared = NetworkManager()

    private init() {}

    func fetchExampleHomepage(completion: @escaping (Result<String, AFError>) -> Void) {
        let url = "https://www.lipsum.com/"
        AF.request(url).responseString { response in
            completion(response.result)
        }
    }
}
