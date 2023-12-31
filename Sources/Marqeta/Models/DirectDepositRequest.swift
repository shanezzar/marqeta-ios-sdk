//
// DirectDepositRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct DirectDepositRequest: Codable {

    public enum ModelType: String, Codable { 
        case credit = "CREDIT"
        case debit = "DEBIT"
    }
    public var accountNumber: String
    public var amount: Decimal
    public var companyDiscretionaryData: String?
    public var companyEntryDescription: String?
    public var companyIdentification: String?
    public var companyName: String?
    public var earlyPayEligible: Bool?
    public var individualIdentificationNumber: String?
    public var individualName: String?
    public var settlementDate: Date
    public var standardEntryClassCode: String?
    public var token: String?
    public var type: ModelType

    public init(accountNumber: String, amount: Decimal, companyDiscretionaryData: String? = nil, companyEntryDescription: String? = nil, companyIdentification: String? = nil, companyName: String? = nil, earlyPayEligible: Bool? = nil, individualIdentificationNumber: String? = nil, individualName: String? = nil, settlementDate: Date, standardEntryClassCode: String? = nil, token: String? = nil, type: ModelType) {
        self.accountNumber = accountNumber
        self.amount = amount
        self.companyDiscretionaryData = companyDiscretionaryData
        self.companyEntryDescription = companyEntryDescription
        self.companyIdentification = companyIdentification
        self.companyName = companyName
        self.earlyPayEligible = earlyPayEligible
        self.individualIdentificationNumber = individualIdentificationNumber
        self.individualName = individualName
        self.settlementDate = settlementDate
        self.standardEntryClassCode = standardEntryClassCode
        self.token = token
        self.type = type
    }

    public enum CodingKeys: String, CodingKey { 
        case accountNumber = "account_number"
        case amount
        case companyDiscretionaryData = "company_discretionary_data"
        case companyEntryDescription = "company_entry_description"
        case companyIdentification = "company_identification"
        case companyName = "company_name"
        case earlyPayEligible
        case individualIdentificationNumber = "individual_identification_number"
        case individualName = "individual_name"
        case settlementDate = "settlement_date"
        case standardEntryClassCode = "standard_entry_class_code"
        case token
        case type
    }

}
