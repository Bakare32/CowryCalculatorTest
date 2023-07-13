//
//  HttpError.swift
//  CowryCalculatorTest
//
//  Created by Bakare Waris on 13/07/2023.
//

import Foundation

enum HttpError: Error {
    case NotJson
    case BadRequest
    case ServerError
    case Unknown(error: String)
}

extension HttpError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .NotJson:
            return "Response not in JSON format"
        case .BadRequest:
            return "BadRequest"
        case .ServerError:
            return "ServerError"
        case .Unknown(let error):
            return error
        }
    }
}

