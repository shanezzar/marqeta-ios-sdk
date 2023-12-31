//
// PaymentSourceUpdateReq.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Request used to update the status of a payment source. */

public struct PaymentSourceUpdateReq: Codable {

    public var status: PaymentSourceStatusEnum

    public init(status: PaymentSourceStatusEnum) {
        self.status = status
    }


}
