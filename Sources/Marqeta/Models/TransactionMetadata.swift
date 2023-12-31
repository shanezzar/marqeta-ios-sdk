//
// TransactionMetadata.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Contains merchant-provided metadata related to the transaction, including details about lodging- and transit-related purchases.  May be returned if the request uses Transaction Model v2 of the Marqeta Core API. Not returned for Transaction Model v1 requests. */

public struct TransactionMetadata: Codable {

    public enum MotoIndicator: String, Codable { 
        case unknown = "UNKNOWN"
        case manual = "MANUAL"
        case recurring = "RECURRING"
        case installment = "INSTALLMENT"
        case others = "OTHERS"
    }
    public enum PaymentChannel: String, Codable { 
        case other = "OTHER"
        case atm = "ATM"
        case ecommerce = "ECOMMERCE"
        case mail = "MAIL"
        case phone = "PHONE"
        case moto = "MOTO"
    }
    public enum TransactionCategory: String, Codable { 
        case retailSale = "RETAIL_SALE"
        case billPay = "BILL_PAY"
        case hotel = "HOTEL"
        case healthCare = "HEALTH_CARE"
        case restaurant = "RESTAURANT"
        case autoRental = "AUTO_RENTAL"
        case airline = "AIRLINE"
        case payment = "PAYMENT"
        case hospitalizationCollege = "HOSPITALIZATION_COLLEGE"
        case phoneMailEcommerce = "PHONE_MAIL_ECOMMERCE"
        case atm = "ATM"
        case transit = "TRANSIT"
    }
    public var airline: Airline?
    /** Number of days the pre-authorization is in effect. */
    public var authorizationLifeCycle: Int?
    /** Whether the transaction is cross-border, i.e., when the merchant and the cardholder are located in two different countries. */
    public var crossBorderTransaction: Bool?
    public var isDeferredAuthorization: Bool?
    /** Whether the transaction is a lodging or vehicle rental. */
    public var isLodgingAutoRental: Bool?
    /** Date and time when the lodging check-in or vehicle rental began. */
    public var lodgingAutoRentalStartDate: Date?
    /** Indicates the type of mail or telephone order transaction. */
    public var motoIndicator: MotoIndicator?
    public var oneLegOut: Bool?
    /** Channel from which the transaction was originated. */
    public var paymentChannel: PaymentChannel?
    /** Industry for which the transaction was originated. */
    public var transactionCategory: TransactionCategory?
    public var transit: Transit?

    public init(airline: Airline? = nil, authorizationLifeCycle: Int? = nil, crossBorderTransaction: Bool? = nil, isDeferredAuthorization: Bool? = nil, isLodgingAutoRental: Bool? = nil, lodgingAutoRentalStartDate: Date? = nil, motoIndicator: MotoIndicator? = nil, oneLegOut: Bool? = nil, paymentChannel: PaymentChannel? = nil, transactionCategory: TransactionCategory? = nil, transit: Transit? = nil) {
        self.airline = airline
        self.authorizationLifeCycle = authorizationLifeCycle
        self.crossBorderTransaction = crossBorderTransaction
        self.isDeferredAuthorization = isDeferredAuthorization
        self.isLodgingAutoRental = isLodgingAutoRental
        self.lodgingAutoRentalStartDate = lodgingAutoRentalStartDate
        self.motoIndicator = motoIndicator
        self.oneLegOut = oneLegOut
        self.paymentChannel = paymentChannel
        self.transactionCategory = transactionCategory
        self.transit = transit
    }

    public enum CodingKeys: String, CodingKey { 
        case airline
        case authorizationLifeCycle = "authorization_life_cycle"
        case crossBorderTransaction = "cross_border_transaction"
        case isDeferredAuthorization = "is_deferred_authorization"
        case isLodgingAutoRental = "is_lodging_auto_rental"
        case lodgingAutoRentalStartDate = "lodging_auto_rental_start_date"
        case motoIndicator = "moto_indicator"
        case oneLegOut = "one_leg_out"
        case paymentChannel = "payment_channel"
        case transactionCategory = "transaction_category"
        case transit
    }

}
