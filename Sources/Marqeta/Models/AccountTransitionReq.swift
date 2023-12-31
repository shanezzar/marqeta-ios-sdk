//
// AccountTransitionReq.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Information on the credit account transition. */

public struct AccountTransitionReq: Codable {

    public var status: AccountStatusEnum
    /** Unique identifier of the credit account transition. */
    public var token: String?

    public init(status: AccountStatusEnum, token: String? = nil) {
        self.status = status
        self.token = token
    }


}
