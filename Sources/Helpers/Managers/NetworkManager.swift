//
//  NetworkManager.swift
//
//
//  Created by Joe on 2024/4/7.
//

import Foundation
import Alamofire
import SwiftyJSON

class NetworkManager {
    
    static let shared = NetworkManager()
    
    // 网络请求底层封装
    private func networkRequest(
        url: URLConvertible,
        method: HTTPMethod = .get,
        parameters: Parameters? = nil,
        encoding: ParameterEncoding = URLEncoding.default,
        headers: HTTPHeaders? = nil,
        completion: @escaping (_ httpStatusCode: Int, _ response: Data?) -> ()
    ) {
        AF.request(
            url,
            method: method,
            parameters: parameters,
            encoding: encoding,
            headers: headers,
            interceptor: nil,
            requestModifier: nil
        ).responseData { response in
            // debugPrint(response)
            
            switch response.result {
            case .success:
                print("Request Successful")
                completion(200, response.value)
            case let .failure(error):
                debugPrint(error)
                completion(400, response.value)
            }
        }
        // .responseString { response in
        //     response.result
        //     response.value
        // }
    }
    
    
    
    // 接口封装
    // test url https://httpbin.org/get
    func networkApiRequest(
        uri: String,
        method: HTTPMethod = .get,
        parameters: Parameters? = nil,
        completion: @escaping (_ httpStatusCode: Int, _ response: JSON) -> ()
    ){
        // mock data
        if Config.appMock {
            let mockFile = "Data/json" + uri + "." + method.rawValue
            debugPrint("Read from mock file: " + mockFile)
            let data = Dir().readJsonFile(filename: mockFile)
            let json = try? JSON(data: data)
            completion(200, json ?? JSON())
            return
        }
        
        // request api
        let url = Config.apiHost + uri
        self.networkRequest(url: url, method: method, parameters: parameters) { httpStatusCode, response in
            let json = try? JSON(data: response ?? Data())
            completion(httpStatusCode, json ?? JSON())
        }
    }
}
