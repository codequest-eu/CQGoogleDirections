//
//  CQResponseResult.swift
//  Pods
//
//  Created by Lukasz on 14/11/15.
//
//

import Foundation

public enum CQResponseResultError: ErrorType {
    case CQGDJSONParsingError
    case CQGDConnectingError
}

public enum CQResponseResult {
    case Success
    case Failure(CQResponseResultError)
    
    public var isSuccess: Bool {
        switch self {
        case .Success:
            return true
        case .Failure:
            return false
        }
    }
    
    public var isFailure: Bool {
        return !isSuccess
    }
    
    public var error: CQResponseResultError? {
        switch self {
        case .Success:
            return nil
        case .Failure(let error):
            return error
        }
    }
}