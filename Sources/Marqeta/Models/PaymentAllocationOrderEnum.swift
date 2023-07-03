//
// PaymentAllocationOrderEnum.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Ordered list of balance types to which payments are allocated, from first to last. */
public enum PaymentAllocationOrderEnum: String, Codable {
    case interest = "INTEREST"
    case fees = "FEES"
    case principal = "PRINCIPAL"
}