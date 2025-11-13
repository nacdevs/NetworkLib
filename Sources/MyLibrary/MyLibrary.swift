// The Swift Programming Language
// https://docs.swift.org/swift-book
import Foundation
import Alamofire


public class TestLib{

    @available(iOS 13.0.0, *)
    public func getRequest<T: Decodable>(url: String, type: T.Type) async throws -> T {
           let dataTask = AF.request(url)
               .validate()
               .serializingDecodable(T.self)
           
           return try await dataTask.value
    }
}
