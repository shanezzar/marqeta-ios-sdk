//
// ApplicationsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class ApplicationsAPI {
    /**
     Create application

     - parameter body: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func creditApplicationsPost(body: CreateApplicationsRequest? = nil, completion: @escaping ((_ data: ApplicationsResponse?,_ error: Error?) -> Void)) {
        creditApplicationsPostWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create application
     - POST /credit/applications

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "rewards_disclosure_pre_terms_accepted_at" : "2000-01-23T04:56:07.000+00:00",
  "decision_model" : {
    "credit_score" : 6,
    "margin" : 1.4658129805029452,
    "prime_rate" : 5.962133916683182,
    "received_best_rate" : true,
    "score_range" : "score_range",
    "adverse_action_template_code" : "adverse_action_template_code",
    "decision_date" : "2000-01-23T04:56:07.000+00:00",
    "score_factors" : [ "TOO FEW ACCOUNTS CURRENTLY PAID AS AGREED", "LACK OF RECENT INSTALLMENT LOAN INFORMATION", "TOO MANY ACCOUNTS WITH BALANCES", "LENGTH OF TIME REVOLVING ACCOUNTS HAVE BEEN ESTABLISHED" ],
    "denial_reasons" : [ "CREDIT SCORE BELOW MINIMUM", "PRIOR BANKRUPTCY" ],
    "expire_date" : "2000-01-23",
    "credit_score_date" : "2000-01-23",
    "card_product_level" : "PREMIUM",
    "credit_limit" : 0,
    "created_date" : "2000-01-23T04:56:07.000+00:00",
    "credit_bureau" : {
      "website" : "website",
      "address" : {
        "zip" : "zip",
        "address2" : "address2",
        "city" : "city",
        "address1" : "address1",
        "state" : "state"
      },
      "name" : "name",
      "phone_number" : "5555555555"
    },
    "purchase_apr" : 5.637376656633329
  },
  "term_schedule_information_accepted_at" : "2000-01-23T04:56:07.000+00:00",
  "any_non_taxable_income" : true,
  "residence_type" : "OWN",
  "account_token" : "account_token",
  "primary_income_source" : "EMPLOYED",
  "error_details" : {
    "application_token" : "application_token",
    "message" : "message",
    "type" : "VALIDATION",
    "token" : "token"
  },
  "card_membership_agreement_accepted_at" : "2000-01-23T04:56:07.000+00:00",
  "soct_accepted_at" : "2000-01-23T04:56:07.000+00:00",
  "state" : "CREATED",
  "user_token" : "user_token",
  "monthly_mortgage_or_rent" : 2.3021358869347655,
  "privacy_policy_accepted_at" : "2000-01-23T04:56:07.000+00:00",
  "bundle_token" : "bundle_token",
  "total_annual_income" : 7.061401241503109,
  "application_canceled_at" : "2000-01-23T04:56:07.000+00:00",
  "e_disclosure_accepted_at" : "2000-01-23T04:56:07.000+00:00",
  "token" : "token",
  "decision_token" : "decision_token",
  "device_data" : {
    "data" : "data",
    "provider" : "provider"
  },
  "benefits_disclosure_accepted_at" : "2000-01-23T04:56:07.000+00:00",
  "application_accepted_at" : "2000-01-23T04:56:07.000+00:00",
  "rewards_disclosure_post_terms_accepted_at" : "2000-01-23T04:56:07.000+00:00",
  "created_date" : "2000-01-23T04:56:07.000+00:00",
  "updated_date" : "2000-01-23T04:56:07.000+00:00"
}}]
     - parameter body: (body)  (optional)

     - returns: RequestBuilder<ApplicationsResponse> 
     */
    open class func creditApplicationsPostWithRequestBuilder(body: CreateApplicationsRequest? = nil) -> RequestBuilder<ApplicationsResponse> {
        let path = "/credit/applications"
        let URLString = Marqeta.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<ApplicationsResponse>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
    /**
     Retrieve file on a bundle or application

     - parameter type: (path) The type of file to retrieve.  * &#x60;SOCT&#x60; - The Summary of Credit Terms (SOCT), which outlines the interest rates, interest charges, and fees associated with the credit account being offered to the user. * &#x60;REWARDS_DISCLOSURE_PRE_TERMS&#x60; - The Rewards Disclosure Pre-terms, which discloses detailed information about the rewards program on the credit account being offered to the user before a decision is rendered on their application. * &#x60;REWARDS_DISCLOSURE_POST_TERMS&#x60; - The Rewards Disclosure Post-terms, which discloses detailed information about the rewards program on the user&#x27;s credit account if their application is approved. * &#x60;BENEFITS_DISCLOSURE&#x60; - The Benefits Disclosure, which which is given to a user if their application is approved and discloses detailed information about the benefits on the user&#x27;s credit account. * &#x60;CARD_MEMBER_AGREEMENT&#x60; - The Card Member Agreement, which specifies the terms and conditions of the user&#x27;s credit account, including the interest rates, interest charges, fees, minimum payment calculations, and more. * &#x60;PRIVACY_POLICY&#x60; - The Privacy Policy, which explains how the information on the user&#x27;s application is collected, handled, and processed. * &#x60;E_DISCLOSURE&#x60; - The eDisclosure, which states that the user has agreed to receive disclosures electronically. * &#x60;TERMS_SCHEDULE&#x60; - The Terms Schedule, which is given to a user if their application is approved and specifies the interest rate details on the user&#x27;s credit account. * &#x60;NOAA&#x60; - The Notice of Adverse Action (NOAA), which is given to a user if their application is declined and informs them of the specific reasons why they were denied a credit account. 
     - parameter bundleToken: (query) Unique identifier of the bundle on which you want to retrieve a file.  Required if retrieving one of the following file types:  * &#x60;CARD_MEMBER_AGREEMENT&#x60; * &#x60;E_DISCLOSURE&#x60; * &#x60;PRIVACY_POLICY&#x60; * &#x60;REWARDS_DISCLOSURE_PRE_TERMS&#x60; * &#x60;REWARDS_DISCLOSURE_POST_TERMS&#x60; * &#x60;SOCT&#x60; (optional)
     - parameter applicationToken: (query) Unique identifier of the application on which you want to retrieve a file.  Required if retrieving one of the following files:  * &#x60;BENEFITS_DISCLOSURE&#x60; * &#x60;NOAA&#x60; * &#x60;TERMS_SCHEDULE&#x60; (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getFileByType(type: FileType, bundleToken: String? = nil, applicationToken: String? = nil, completion: @escaping ((_ data: FileResponse?,_ error: Error?) -> Void)) {
        getFileByTypeWithRequestBuilder(type: type, bundleToken: bundleToken, applicationToken: applicationToken).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Retrieve file on a bundle or application
     - GET /credit/applications/files/{type}

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "tracking_token" : "tracking_token",
  "file_type" : "SOCT",
  "links" : {
    "pdf" : "pdf",
    "json" : "json",
    "html" : "html"
  }
}}]
     - parameter type: (path) The type of file to retrieve.  * &#x60;SOCT&#x60; - The Summary of Credit Terms (SOCT), which outlines the interest rates, interest charges, and fees associated with the credit account being offered to the user. * &#x60;REWARDS_DISCLOSURE_PRE_TERMS&#x60; - The Rewards Disclosure Pre-terms, which discloses detailed information about the rewards program on the credit account being offered to the user before a decision is rendered on their application. * &#x60;REWARDS_DISCLOSURE_POST_TERMS&#x60; - The Rewards Disclosure Post-terms, which discloses detailed information about the rewards program on the user&#x27;s credit account if their application is approved. * &#x60;BENEFITS_DISCLOSURE&#x60; - The Benefits Disclosure, which which is given to a user if their application is approved and discloses detailed information about the benefits on the user&#x27;s credit account. * &#x60;CARD_MEMBER_AGREEMENT&#x60; - The Card Member Agreement, which specifies the terms and conditions of the user&#x27;s credit account, including the interest rates, interest charges, fees, minimum payment calculations, and more. * &#x60;PRIVACY_POLICY&#x60; - The Privacy Policy, which explains how the information on the user&#x27;s application is collected, handled, and processed. * &#x60;E_DISCLOSURE&#x60; - The eDisclosure, which states that the user has agreed to receive disclosures electronically. * &#x60;TERMS_SCHEDULE&#x60; - The Terms Schedule, which is given to a user if their application is approved and specifies the interest rate details on the user&#x27;s credit account. * &#x60;NOAA&#x60; - The Notice of Adverse Action (NOAA), which is given to a user if their application is declined and informs them of the specific reasons why they were denied a credit account. 
     - parameter bundleToken: (query) Unique identifier of the bundle on which you want to retrieve a file.  Required if retrieving one of the following file types:  * &#x60;CARD_MEMBER_AGREEMENT&#x60; * &#x60;E_DISCLOSURE&#x60; * &#x60;PRIVACY_POLICY&#x60; * &#x60;REWARDS_DISCLOSURE_PRE_TERMS&#x60; * &#x60;REWARDS_DISCLOSURE_POST_TERMS&#x60; * &#x60;SOCT&#x60; (optional)
     - parameter applicationToken: (query) Unique identifier of the application on which you want to retrieve a file.  Required if retrieving one of the following files:  * &#x60;BENEFITS_DISCLOSURE&#x60; * &#x60;NOAA&#x60; * &#x60;TERMS_SCHEDULE&#x60; (optional)

     - returns: RequestBuilder<FileResponse> 
     */
    open class func getFileByTypeWithRequestBuilder(type: FileType, bundleToken: String? = nil, applicationToken: String? = nil) -> RequestBuilder<FileResponse> {
        var path = "/credit/applications/files/{type}"
        let typePreEscape = "\(type)"
        let typePostEscape = typePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{type}", with: typePostEscape, options: .literal, range: nil)
        let URLString = Marqeta.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "bundle_token": bundleToken, 
                        "application_token": applicationToken
        ])


        let requestBuilder: RequestBuilder<FileResponse>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     List application transitions

     - parameter token: (path) The unique identifier of the application for which you want to retrieve transitions. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func pageApplicationTransitions(token: String, completion: @escaping ((_ data: ApplicationsTransitionPage?,_ error: Error?) -> Void)) {
        pageApplicationTransitionsWithRequestBuilder(token: token).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     List application transitions
     - GET /credit/applications/{token}/transitions

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "is_more" : true,
  "data" : [ {
    "created_time" : "2000-01-23T04:56:07.000+00:00",
    "original_status" : "CREATED",
    "application_token" : "application_token",
    "token" : "token"
  }, {
    "created_time" : "2000-01-23T04:56:07.000+00:00",
    "original_status" : "CREATED",
    "application_token" : "application_token",
    "token" : "token"
  } ],
  "start_index" : 1,
  "count" : 0,
  "end_index" : 6
}}]
     - parameter token: (path) The unique identifier of the application for which you want to retrieve transitions. 

     - returns: RequestBuilder<ApplicationsTransitionPage> 
     */
    open class func pageApplicationTransitionsWithRequestBuilder(token: String) -> RequestBuilder<ApplicationsTransitionPage> {
        var path = "/credit/applications/{token}/transitions"
        let tokenPreEscape = "\(token)"
        let tokenPostEscape = tokenPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{token}", with: tokenPostEscape, options: .literal, range: nil)
        let URLString = Marqeta.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<ApplicationsTransitionPage>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Retrieve application

     - parameter token: (path) Unique identifier of the application to retrieve. 
     - parameter expand: (query) Embeds the specified object into the response. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func retrieveApplication(token: String, expand: [ExpandObjects]? = nil, completion: @escaping ((_ data: ApplicationsResponse?,_ error: Error?) -> Void)) {
        retrieveApplicationWithRequestBuilder(token: token, expand: expand).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Retrieve application
     - GET /credit/applications/{token}

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "rewards_disclosure_pre_terms_accepted_at" : "2000-01-23T04:56:07.000+00:00",
  "decision_model" : {
    "credit_score" : 6,
    "margin" : 1.4658129805029452,
    "prime_rate" : 5.962133916683182,
    "received_best_rate" : true,
    "score_range" : "score_range",
    "adverse_action_template_code" : "adverse_action_template_code",
    "decision_date" : "2000-01-23T04:56:07.000+00:00",
    "score_factors" : [ "TOO FEW ACCOUNTS CURRENTLY PAID AS AGREED", "LACK OF RECENT INSTALLMENT LOAN INFORMATION", "TOO MANY ACCOUNTS WITH BALANCES", "LENGTH OF TIME REVOLVING ACCOUNTS HAVE BEEN ESTABLISHED" ],
    "denial_reasons" : [ "CREDIT SCORE BELOW MINIMUM", "PRIOR BANKRUPTCY" ],
    "expire_date" : "2000-01-23",
    "credit_score_date" : "2000-01-23",
    "card_product_level" : "PREMIUM",
    "credit_limit" : 0,
    "created_date" : "2000-01-23T04:56:07.000+00:00",
    "credit_bureau" : {
      "website" : "website",
      "address" : {
        "zip" : "zip",
        "address2" : "address2",
        "city" : "city",
        "address1" : "address1",
        "state" : "state"
      },
      "name" : "name",
      "phone_number" : "5555555555"
    },
    "purchase_apr" : 5.637376656633329
  },
  "term_schedule_information_accepted_at" : "2000-01-23T04:56:07.000+00:00",
  "any_non_taxable_income" : true,
  "residence_type" : "OWN",
  "account_token" : "account_token",
  "primary_income_source" : "EMPLOYED",
  "error_details" : {
    "application_token" : "application_token",
    "message" : "message",
    "type" : "VALIDATION",
    "token" : "token"
  },
  "card_membership_agreement_accepted_at" : "2000-01-23T04:56:07.000+00:00",
  "soct_accepted_at" : "2000-01-23T04:56:07.000+00:00",
  "state" : "CREATED",
  "user_token" : "user_token",
  "monthly_mortgage_or_rent" : 2.3021358869347655,
  "privacy_policy_accepted_at" : "2000-01-23T04:56:07.000+00:00",
  "bundle_token" : "bundle_token",
  "total_annual_income" : 7.061401241503109,
  "application_canceled_at" : "2000-01-23T04:56:07.000+00:00",
  "e_disclosure_accepted_at" : "2000-01-23T04:56:07.000+00:00",
  "token" : "token",
  "decision_token" : "decision_token",
  "device_data" : {
    "data" : "data",
    "provider" : "provider"
  },
  "benefits_disclosure_accepted_at" : "2000-01-23T04:56:07.000+00:00",
  "application_accepted_at" : "2000-01-23T04:56:07.000+00:00",
  "rewards_disclosure_post_terms_accepted_at" : "2000-01-23T04:56:07.000+00:00",
  "created_date" : "2000-01-23T04:56:07.000+00:00",
  "updated_date" : "2000-01-23T04:56:07.000+00:00"
}}]
     - parameter token: (path) Unique identifier of the application to retrieve. 
     - parameter expand: (query) Embeds the specified object into the response. (optional)

     - returns: RequestBuilder<ApplicationsResponse> 
     */
    open class func retrieveApplicationWithRequestBuilder(token: String, expand: [ExpandObjects]? = nil) -> RequestBuilder<ApplicationsResponse> {
        var path = "/credit/applications/{token}"
        let tokenPreEscape = "\(token)"
        let tokenPostEscape = tokenPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{token}", with: tokenPostEscape, options: .literal, range: nil)
        let URLString = Marqeta.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "expand": expand
        ])


        let requestBuilder: RequestBuilder<ApplicationsResponse>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     List files on a bundle or application

     - parameter bundleToken: (query) Unique identifier of the bundle whose files you want to retrieve.  The following file types are returned with the &#x60;bundle_token&#x60;:  * &#x60;CARD_MEMBER_AGREEMENT&#x60; * &#x60;E_DISCLOSURE&#x60; * &#x60;PRIVACY_POLICY&#x60; * &#x60;REWARDS_DISCLOSURE_PRE_TERMS&#x60; * &#x60;REWARDS_DISCLOSURE_POST_TERMS&#x60; * &#x60;SOCT&#x60; (optional)
     - parameter applicationToken: (query) Unique identifier of the application whose files you want to retrieve.  The following file types are returned with the &#x60;application_token&#x60;:  * &#x60;BENEFITS_DISCLOSURE&#x60; * &#x60;CARD_MEMBER_AGREEMENT&#x60; * &#x60;E_DISCLOSURE&#x60; * &#x60;NOAA&#x60; * &#x60;PRIVACY_POLICY&#x60; * &#x60;REWARDS_DISCLOSURE_PRE_TERMS&#x60; * &#x60;REWARDS_DISCLOSURE_POST_TERMS&#x60; * &#x60;SOCT&#x60; * &#x60;TERMS_SCHEDULE&#x60; (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func retrieveFiles(bundleToken: String? = nil, applicationToken: String? = nil, completion: @escaping ((_ data: FileMapResponse?,_ error: Error?) -> Void)) {
        retrieveFilesWithRequestBuilder(bundleToken: bundleToken, applicationToken: applicationToken).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     List files on a bundle or application
     - GET /credit/applications/files

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "key" : {
    "tracking_token" : "tracking_token",
    "file_type" : "SOCT",
    "links" : {
      "pdf" : "pdf",
      "json" : "json",
      "html" : "html"
    }
  }
}}]
     - parameter bundleToken: (query) Unique identifier of the bundle whose files you want to retrieve.  The following file types are returned with the &#x60;bundle_token&#x60;:  * &#x60;CARD_MEMBER_AGREEMENT&#x60; * &#x60;E_DISCLOSURE&#x60; * &#x60;PRIVACY_POLICY&#x60; * &#x60;REWARDS_DISCLOSURE_PRE_TERMS&#x60; * &#x60;REWARDS_DISCLOSURE_POST_TERMS&#x60; * &#x60;SOCT&#x60; (optional)
     - parameter applicationToken: (query) Unique identifier of the application whose files you want to retrieve.  The following file types are returned with the &#x60;application_token&#x60;:  * &#x60;BENEFITS_DISCLOSURE&#x60; * &#x60;CARD_MEMBER_AGREEMENT&#x60; * &#x60;E_DISCLOSURE&#x60; * &#x60;NOAA&#x60; * &#x60;PRIVACY_POLICY&#x60; * &#x60;REWARDS_DISCLOSURE_PRE_TERMS&#x60; * &#x60;REWARDS_DISCLOSURE_POST_TERMS&#x60; * &#x60;SOCT&#x60; * &#x60;TERMS_SCHEDULE&#x60; (optional)

     - returns: RequestBuilder<FileMapResponse> 
     */
    open class func retrieveFilesWithRequestBuilder(bundleToken: String? = nil, applicationToken: String? = nil) -> RequestBuilder<FileMapResponse> {
        let path = "/credit/applications/files"
        let URLString = Marqeta.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "bundle_token": bundleToken, 
                        "application_token": applicationToken
        ])


        let requestBuilder: RequestBuilder<FileMapResponse>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Transition application state

     - parameter body: (body)  
     - parameter token: (path) Unique identifier of the application whose state you want to transition. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func transitionApplication(body: ApplicationTransitionRequest, token: String, completion: @escaping ((_ data: ApplicationTransitionResponse?,_ error: Error?) -> Void)) {
        transitionApplicationWithRequestBuilder(body: body, token: token).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Transition application state
     - POST /credit/applications/{token}/transitions

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "created_time" : "2000-01-23T04:56:07.000+00:00",
  "original_status" : "CREATED",
  "application_token" : "application_token",
  "token" : "token"
}}]
     - parameter body: (body)  
     - parameter token: (path) Unique identifier of the application whose state you want to transition. 

     - returns: RequestBuilder<ApplicationTransitionResponse> 
     */
    open class func transitionApplicationWithRequestBuilder(body: ApplicationTransitionRequest, token: String) -> RequestBuilder<ApplicationTransitionResponse> {
        var path = "/credit/applications/{token}/transitions"
        let tokenPreEscape = "\(token)"
        let tokenPostEscape = tokenPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{token}", with: tokenPostEscape, options: .literal, range: nil)
        let URLString = Marqeta.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<ApplicationTransitionResponse>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
}
