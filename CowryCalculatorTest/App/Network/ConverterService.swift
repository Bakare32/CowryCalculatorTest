//
//  ConverterService.swift
//  CowryCalculatorTest
//
//  Created by Bakare Waris on 13/07/2023.
//

import Foundation
import SwiftyJSON

struct LatestRateService {
    private let client = NetworkClient()
    
    func latestRates(completionHandler: @escaping (Result<JSON, Error>) -> ()) {
        let url = "http://data.fixer.io/api/latest"
        client.makeRequest(requestType: .get, url: url, params: ["access_key": ApiConfig.apiKey], completionHandler: completionHandler)
    }
}

