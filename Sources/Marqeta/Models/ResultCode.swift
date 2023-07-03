//
// ResultCode.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Contains the KYC result code and a descriptive message about that codes. */

public struct ResultCode: Codable {

    /** For any &#x60;PENDING&#x60; or &#x60;FAILURE&#x60; outcome, see the &lt;&lt;user_kyc_failure_codes, User KYC failure codes&gt;&gt; table, the &lt;&lt;outcome_reasons_for_the_business, Outcome reasons for the business&gt;&gt; table, or the &lt;&lt;outcome_reasons_for_individuals_associated_with_a_business, Outcome reasons for individuals associated with a business&gt;&gt; table. */
    public var code: String?
    /** Result code description. */
    public var message: String?

    public init(code: String? = nil, message: String? = nil) {
        self.code = code
        self.message = message
    }


}
