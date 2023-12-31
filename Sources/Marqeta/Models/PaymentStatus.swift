//
// PaymentStatus.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Current status of the payment or refund. */
public enum PaymentStatus: String, Codable {
    case initiated = "INITIATED"
    case pending = "PENDING"
    case processing = "PROCESSING"
    case submitted = "SUBMITTED"
    case cancelled = "CANCELLED"
    case completed = "COMPLETED"
    case returned = "RETURNED"
    case refunded = "REFUNDED"
    case sysError = "SYS_ERROR"
    case achError = "ACH_ERROR"
}