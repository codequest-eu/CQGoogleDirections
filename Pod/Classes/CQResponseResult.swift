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
    case CQGoogleDirectionErrorStatus(String)
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

}