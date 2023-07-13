//
//  NetworkClient.swift
//  CowryCalculatorTest
//
//  Created by Bakare Waris on 13/07/2023.
//

import Foundation
import Alamofire
import SwiftyJSON

class NetworkClient {
    
    func makeRequest(requestType:HTTPMethod, url:String, params: Dictionary<String,Any>?, completionHandler: @escaping (Result<JSON,Error>)-> ()){
        
        
        AF.request(url, method: requestType, parameters: params).responseJSON {response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                completionHandler(.success(json))
            case .failure(let error):
                completionHandler(.failure(HttpError.Unknown(error: error.localizedDescription)))
            }
        }
    }
}
