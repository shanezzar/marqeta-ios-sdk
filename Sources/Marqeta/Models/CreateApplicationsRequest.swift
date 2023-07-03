//
// CreateApplicationsRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct CreateApplicationsRequest: Codable {

    public enum PrimaryIncomeSource: String, Codable { 
        case employed = "EMPLOYED"
        case unemployed = "UNEMPLOYED"
        case selfEmployed = "SELF_EMPLOYED"
        case other = "OTHER"
    }
    public enum ResidenceType: String, Codable { 
        case own = "OWN"
        case rent = "RENT"
        case other = "OTHER"
    }
    /** A value of &#x60;true&#x60; indicates that the user has a non-taxable income source.  Required when retrieving an application. */
    public var anyNonTaxableIncome: Bool
    /** Unique identifier of the bundle associated with the application. */
    public var bundleToken: String
    public var deviceData: DeviceData?
    /** The tracking token of the eDisclosure.  This is the &#x60;tracking_token&#x60; returned in the &#x60;E_DISCLOSURE&#x60; object when sending a &#x60;GET&#x60; request to the &#x60;/credit/applications/files&#x60; endpoint before a decision on the application is made. */
    public var eDisclosureTrackingToken: String
    /** Monthly amount of the mortgage or rent that the user currently pays.  Required when retrieving an application. */
    public var monthlyMortgageOrRent: Decimal
    /** Whether the primary income source comes from the user being employed, unemployed, self-employment, or another situation.  Required when retrieving an application. */
    public var primaryIncomeSource: PrimaryIncomeSource
    /** The tracking token of the Privacy Policy.  This is the &#x60;tracking_token&#x60; returned in the &#x60;PRIVACY_POLICY&#x60; object when sending a &#x60;GET&#x60; request to the &#x60;/credit/applications/files&#x60; endpoint before a decision on the application is made. */
    public var privacyPolicyTrackingToken: String
    /** Whether the user owns or rents their residence, or has another situation.  Required when retrieving an application. */
    public var residenceType: ResidenceType
    /** The tracking token of the Rewards Disclosure Pre-terms.  This is the &#x60;tracking_token&#x60; returned in the &#x60;REWARDS_DISCLOSURE_PRE_TERMS&#x60; object when sending a &#x60;GET&#x60; request to the &#x60;/credit/applications/files&#x60; endpoint before a decision on the application is made. */
    public var rewardsDisclosurePreTermsTrackingToken: String
    /** The tracking token of the Summary of Credit Terms (SOCT).  This is the &#x60;tracking_token&#x60; returned in the &#x60;SOCT&#x60; object when sending a &#x60;GET&#x60; request to the &#x60;/credit/applications/files&#x60; endpoint before a decision on the application is made. */
    public var soctTrackingToken: String
    /** Unique identifier of the application. */
    public var token: String?
    /** The total amount of the user&#x27;s annual income.  Required when retrieving an application. */
    public var totalAnnualIncome: Decimal
    /** Unique identifier of the applicant, the user applying for a credit account. */
    public var userToken: String

    public init(anyNonTaxableIncome: Bool, bundleToken: String, deviceData: DeviceData? = nil, eDisclosureTrackingToken: String, monthlyMortgageOrRent: Decimal, primaryIncomeSource: PrimaryIncomeSource, privacyPolicyTrackingToken: String, residenceType: ResidenceType, rewardsDisclosurePreTermsTrackingToken: String, soctTrackingToken: String, token: String? = nil, totalAnnualIncome: Decimal, userToken: String) {
        self.anyNonTaxableIncome = anyNonTaxableIncome
        self.bundleToken = bundleToken
        self.deviceData = deviceData
        self.eDisclosureTrackingToken = eDisclosureTrackingToken
        self.monthlyMortgageOrRent = monthlyMortgageOrRent
        self.primaryIncomeSource = primaryIncomeSource
        self.privacyPolicyTrackingToken = privacyPolicyTrackingToken
        self.residenceType = residenceType
        self.rewardsDisclosurePreTermsTrackingToken = rewardsDisclosurePreTermsTrackingToken
        self.soctTrackingToken = soctTrackingToken
        self.token = token
        self.totalAnnualIncome = totalAnnualIncome
        self.userToken = userToken
    }

    public enum CodingKeys: String, CodingKey { 
        case anyNonTaxableIncome = "any_non_taxable_income"
        case bundleToken = "bundle_token"
        case deviceData = "device_data"
        case eDisclosureTrackingToken = "e_disclosure_tracking_token"
        case monthlyMortgageOrRent = "monthly_mortgage_or_rent"
        case primaryIncomeSource = "primary_income_source"
        case privacyPolicyTrackingToken = "privacy_policy_tracking_token"
        case residenceType = "residence_type"
        case rewardsDisclosurePreTermsTrackingToken = "rewards_disclosure_pre_terms_tracking_token"
        case soctTrackingToken = "soct_tracking_token"
        case token
        case totalAnnualIncome = "total_annual_income"
        case userToken = "user_token"
    }

}