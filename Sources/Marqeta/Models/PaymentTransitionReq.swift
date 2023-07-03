//
// PaymentTransitionReq.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Request used to transition the status of a payment. */

public struct PaymentTransitionReq: Codable {

    public var refundDetails: RefundDetails?
    public var status: PaymentStatus
    /** Unique identifier of the payment status transition. */
    public var token: String?

    public init(refundDetails: RefundDetails? = nil, status: PaymentStatus, token: String? = nil) {
        self.refundDetails = refundDetails
        self.status = status
        self.token = token
    }

    public enum CodingKeys: String, CodingKey { 
        case refundDetails = "refund_details"
        case status
        case token
    }

}
