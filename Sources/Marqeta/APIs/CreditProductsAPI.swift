//
// CreditProductsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class CreditProductsAPI {
    /**
     Create credit product

     - parameter body: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createProduct(body: ProductCreateReq, completion: @escaping ((_ data: ProductResponse?,_ error: Error?) -> Void)) {
        createProductWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create credit product
     - POST /credit/products

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "created_time" : "2000-01-23T04:56:07.000+00:00",
  "updated_time" : "2000-01-23T04:56:07.000+00:00",
  "payment_allocation_order" : [ "INTEREST", "INTEREST" ],
  "min_payment_flat_amount" : 0.7161401241503109,
  "interest_calculation" : {
    "interest_on_grace_reactivation" : "ACCRUE_FULL_CYCLE",
    "method" : "AVG_DAILY_BALANCE_WITH_NEW_TRANSACTIONS",
    "application_of_credits" : {
      "cycle_type" : "BEGINNING_REVOLVING",
      "day" : 7
    },
    "interest_application" : [ "PRINCIPAL", "PRINCIPAL" ],
    "grace_days_application" : "NEXT_CYCLE_DATE",
    "exclude_tran_types" : [ "LATE_PAYMENT_FEE", "LATE_PAYMENT_FEE" ],
    "minimum_interest" : 7.061401241503038E11,
    "day_count" : "ACTUAL"
  },
  "usage" : [ "PURCHASE", "PURCHASE" ],
  "description" : "description",
  "min_payment_calculation" : {
    "min_payment_flat_amount" : 0.5737376656633328,
    "min_payment_percentage" : {
      "include_fees_charged" : [ null, null ],
      "percentage_of_balance" : 23.021435847988784
    },
    "include_past_due_amount" : true
  },
  "classification" : "CONSUMER",
  "card_product_tokens" : [ "card_product_tokens", "card_product_tokens" ],
  "currency_code" : "USD",
  "token" : "token",
  "product_sub_type" : "CREDIT_CARD",
  "credit_line" : {
    "min" : 5.637376656633271E11,
    "max" : 5.962133916683123E11
  },
  "product_type" : "REVOLVING",
  "min_payment_percentage" : 93.01444942488332,
  "name" : "name",
  "parent_product_token" : "parent_product_token",
  "config" : {
    "fees" : [ "LATE_PAYMENT_FEE", "LATE_PAYMENT_FEE" ],
    "billing_cycle_day" : 1,
    "periodic_fees" : [ {
      "number_of_days_post_activation" : 596,
      "frequency" : "ANNUAL"
    }, {
      "number_of_days_post_activation" : 596,
      "frequency" : "ANNUAL"
    } ],
    "payment_due_day" : 31
  },
  "status" : "DRAFT"
}}]
     - parameter body: (body)  

     - returns: RequestBuilder<ProductResponse> 
     */
    open class func createProductWithRequestBuilder(body: ProductCreateReq) -> RequestBuilder<ProductResponse> {
        let path = "/credit/products"
        let URLString = Marqeta.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<ProductResponse>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
    /**
     * enum for parameter sortBy
     */
    public enum SortBy_lineageProducts: String { 
        case lastmodifiedtime = "lastModifiedTime"
        case lastmodifiedtime_1 = "-lastModifiedTime"
    }

    /**
     Retrieve credit product lineage

     - parameter token: (path) The unique identifier of the credit product whose lineage you want to retrieve.  Send a &#x60;GET&#x60; request to &#x60;/credit/products&#x60; to retrieve existing credit product tokens. 
     - parameter status: (query) An array of statuses by which to filter credit products. (optional)
     - parameter count: (query) The number of resources to retrieve. (optional, default to 5)
     - parameter startIndex: (query) Sort order index of the first resource in the returned array. (optional, default to 0)
     - parameter sortBy: (query) Field on which to sort. Prefix the field name with a hyphen (&#x60;-&#x60;) to sort in descending order. Omit the hyphen to sort in ascending order.  *NOTE:* You must sort using system field names such as &#x60;lastModifiedTime&#x60;, and not by the field names appearing in response bodies such as &#x60;last_modified_time&#x60;. (optional, default to -lastModifiedTime)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func lineageProducts(token: String, status: [ResourceStatus]? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: SortBy_lineageProducts? = nil, completion: @escaping ((_ data: ProductsPage?,_ error: Error?) -> Void)) {
        lineageProductsWithRequestBuilder(token: token, status: status, count: count, startIndex: startIndex, sortBy: sortBy).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Retrieve credit product lineage
     - GET /credit/products/{token}/lineage

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "is_more" : true,
  "data" : [ {
    "created_time" : "2000-01-23T04:56:07.000+00:00",
    "updated_time" : "2000-01-23T04:56:07.000+00:00",
    "payment_allocation_order" : [ "INTEREST", "INTEREST" ],
    "min_payment_flat_amount" : 0.7161401241503109,
    "interest_calculation" : {
      "interest_on_grace_reactivation" : "ACCRUE_FULL_CYCLE",
      "method" : "AVG_DAILY_BALANCE_WITH_NEW_TRANSACTIONS",
      "application_of_credits" : {
        "cycle_type" : "BEGINNING_REVOLVING",
        "day" : 7
      },
      "interest_application" : [ "PRINCIPAL", "PRINCIPAL" ],
      "grace_days_application" : "NEXT_CYCLE_DATE",
      "exclude_tran_types" : [ "LATE_PAYMENT_FEE", "LATE_PAYMENT_FEE" ],
      "minimum_interest" : 7.061401241503038E11,
      "day_count" : "ACTUAL"
    },
    "usage" : [ "PURCHASE", "PURCHASE" ],
    "description" : "description",
    "min_payment_calculation" : {
      "min_payment_flat_amount" : 0.5737376656633328,
      "min_payment_percentage" : {
        "include_fees_charged" : [ null, null ],
        "percentage_of_balance" : 23.021435847988784
      },
      "include_past_due_amount" : true
    },
    "classification" : "CONSUMER",
    "card_product_tokens" : [ "card_product_tokens", "card_product_tokens" ],
    "currency_code" : "USD",
    "token" : "token",
    "product_sub_type" : "CREDIT_CARD",
    "credit_line" : {
      "min" : 5.637376656633271E11,
      "max" : 5.962133916683123E11
    },
    "product_type" : "REVOLVING",
    "min_payment_percentage" : 93.01444942488332,
    "name" : "name",
    "parent_product_token" : "parent_product_token",
    "config" : {
      "fees" : [ "LATE_PAYMENT_FEE", "LATE_PAYMENT_FEE" ],
      "billing_cycle_day" : 1,
      "periodic_fees" : [ {
        "number_of_days_post_activation" : 596,
        "frequency" : "ANNUAL"
      }, {
        "number_of_days_post_activation" : 596,
        "frequency" : "ANNUAL"
      } ],
      "payment_due_day" : 31
    },
    "status" : "DRAFT"
  }, {
    "created_time" : "2000-01-23T04:56:07.000+00:00",
    "updated_time" : "2000-01-23T04:56:07.000+00:00",
    "payment_allocation_order" : [ "INTEREST", "INTEREST" ],
    "min_payment_flat_amount" : 0.7161401241503109,
    "interest_calculation" : {
      "interest_on_grace_reactivation" : "ACCRUE_FULL_CYCLE",
      "method" : "AVG_DAILY_BALANCE_WITH_NEW_TRANSACTIONS",
      "application_of_credits" : {
        "cycle_type" : "BEGINNING_REVOLVING",
        "day" : 7
      },
      "interest_application" : [ "PRINCIPAL", "PRINCIPAL" ],
      "grace_days_application" : "NEXT_CYCLE_DATE",
      "exclude_tran_types" : [ "LATE_PAYMENT_FEE", "LATE_PAYMENT_FEE" ],
      "minimum_interest" : 7.061401241503038E11,
      "day_count" : "ACTUAL"
    },
    "usage" : [ "PURCHASE", "PURCHASE" ],
    "description" : "description",
    "min_payment_calculation" : {
      "min_payment_flat_amount" : 0.5737376656633328,
      "min_payment_percentage" : {
        "include_fees_charged" : [ null, null ],
        "percentage_of_balance" : 23.021435847988784
      },
      "include_past_due_amount" : true
    },
    "classification" : "CONSUMER",
    "card_product_tokens" : [ "card_product_tokens", "card_product_tokens" ],
    "currency_code" : "USD",
    "token" : "token",
    "product_sub_type" : "CREDIT_CARD",
    "credit_line" : {
      "min" : 5.637376656633271E11,
      "max" : 5.962133916683123E11
    },
    "product_type" : "REVOLVING",
    "min_payment_percentage" : 93.01444942488332,
    "name" : "name",
    "parent_product_token" : "parent_product_token",
    "config" : {
      "fees" : [ "LATE_PAYMENT_FEE", "LATE_PAYMENT_FEE" ],
      "billing_cycle_day" : 1,
      "periodic_fees" : [ {
        "number_of_days_post_activation" : 596,
        "frequency" : "ANNUAL"
      }, {
        "number_of_days_post_activation" : 596,
        "frequency" : "ANNUAL"
      } ],
      "payment_due_day" : 31
    },
    "status" : "DRAFT"
  } ],
  "start_index" : 2,
  "count" : 0,
  "end_index" : 3
}}]
     - parameter token: (path) The unique identifier of the credit product whose lineage you want to retrieve.  Send a &#x60;GET&#x60; request to &#x60;/credit/products&#x60; to retrieve existing credit product tokens. 
     - parameter status: (query) An array of statuses by which to filter credit products. (optional)
     - parameter count: (query) The number of resources to retrieve. (optional, default to 5)
     - parameter startIndex: (query) Sort order index of the first resource in the returned array. (optional, default to 0)
     - parameter sortBy: (query) Field on which to sort. Prefix the field name with a hyphen (&#x60;-&#x60;) to sort in descending order. Omit the hyphen to sort in ascending order.  *NOTE:* You must sort using system field names such as &#x60;lastModifiedTime&#x60;, and not by the field names appearing in response bodies such as &#x60;last_modified_time&#x60;. (optional, default to -lastModifiedTime)

     - returns: RequestBuilder<ProductsPage> 
     */
    open class func lineageProductsWithRequestBuilder(token: String, status: [ResourceStatus]? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: SortBy_lineageProducts? = nil) -> RequestBuilder<ProductsPage> {
        var path = "/credit/products/{token}/lineage"
        let tokenPreEscape = "\(token)"
        let tokenPostEscape = tokenPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{token}", with: tokenPostEscape, options: .literal, range: nil)
        let URLString = Marqeta.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "status": status, 
                        "count": count?.encodeToJSON(), 
                        "start_index": startIndex?.encodeToJSON(), 
                        "sort_by": sortBy?.rawValue
        ])


        let requestBuilder: RequestBuilder<ProductsPage>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     * enum for parameter sortBy
     */
    public enum SortBy_listProducts: String { 
        case lastmodifiedtime = "lastModifiedTime"
        case lastmodifiedtime_1 = "-lastModifiedTime"
    }

    /**
     List credit products

     - parameter status: (query) An array of statuses by which to filter credit products. (optional)
     - parameter count: (query) The number of resources to retrieve. (optional, default to 5)
     - parameter startIndex: (query) Sort order index of the first resource in the returned array. (optional, default to 0)
     - parameter sortBy: (query) Field on which to sort. Prefix the field name with a hyphen (&#x60;-&#x60;) to sort in descending order. Omit the hyphen to sort in ascending order.  *NOTE:* You must sort using system field names such as &#x60;lastModifiedTime&#x60;, and not by the field names appearing in response bodies such as &#x60;last_modified_time&#x60;. (optional, default to -lastModifiedTime)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func listProducts(status: [ResourceStatus]? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: SortBy_listProducts? = nil, completion: @escaping ((_ data: ProductsPage?,_ error: Error?) -> Void)) {
        listProductsWithRequestBuilder(status: status, count: count, startIndex: startIndex, sortBy: sortBy).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     List credit products
     - GET /credit/products

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "is_more" : true,
  "data" : [ {
    "created_time" : "2000-01-23T04:56:07.000+00:00",
    "updated_time" : "2000-01-23T04:56:07.000+00:00",
    "payment_allocation_order" : [ "INTEREST", "INTEREST" ],
    "min_payment_flat_amount" : 0.7161401241503109,
    "interest_calculation" : {
      "interest_on_grace_reactivation" : "ACCRUE_FULL_CYCLE",
      "method" : "AVG_DAILY_BALANCE_WITH_NEW_TRANSACTIONS",
      "application_of_credits" : {
        "cycle_type" : "BEGINNING_REVOLVING",
        "day" : 7
      },
      "interest_application" : [ "PRINCIPAL", "PRINCIPAL" ],
      "grace_days_application" : "NEXT_CYCLE_DATE",
      "exclude_tran_types" : [ "LATE_PAYMENT_FEE", "LATE_PAYMENT_FEE" ],
      "minimum_interest" : 7.061401241503038E11,
      "day_count" : "ACTUAL"
    },
    "usage" : [ "PURCHASE", "PURCHASE" ],
    "description" : "description",
    "min_payment_calculation" : {
      "min_payment_flat_amount" : 0.5737376656633328,
      "min_payment_percentage" : {
        "include_fees_charged" : [ null, null ],
        "percentage_of_balance" : 23.021435847988784
      },
      "include_past_due_amount" : true
    },
    "classification" : "CONSUMER",
    "card_product_tokens" : [ "card_product_tokens", "card_product_tokens" ],
    "currency_code" : "USD",
    "token" : "token",
    "product_sub_type" : "CREDIT_CARD",
    "credit_line" : {
      "min" : 5.637376656633271E11,
      "max" : 5.962133916683123E11
    },
    "product_type" : "REVOLVING",
    "min_payment_percentage" : 93.01444942488332,
    "name" : "name",
    "parent_product_token" : "parent_product_token",
    "config" : {
      "fees" : [ "LATE_PAYMENT_FEE", "LATE_PAYMENT_FEE" ],
      "billing_cycle_day" : 1,
      "periodic_fees" : [ {
        "number_of_days_post_activation" : 596,
        "frequency" : "ANNUAL"
      }, {
        "number_of_days_post_activation" : 596,
        "frequency" : "ANNUAL"
      } ],
      "payment_due_day" : 31
    },
    "status" : "DRAFT"
  }, {
    "created_time" : "2000-01-23T04:56:07.000+00:00",
    "updated_time" : "2000-01-23T04:56:07.000+00:00",
    "payment_allocation_order" : [ "INTEREST", "INTEREST" ],
    "min_payment_flat_amount" : 0.7161401241503109,
    "interest_calculation" : {
      "interest_on_grace_reactivation" : "ACCRUE_FULL_CYCLE",
      "method" : "AVG_DAILY_BALANCE_WITH_NEW_TRANSACTIONS",
      "application_of_credits" : {
        "cycle_type" : "BEGINNING_REVOLVING",
        "day" : 7
      },
      "interest_application" : [ "PRINCIPAL", "PRINCIPAL" ],
      "grace_days_application" : "NEXT_CYCLE_DATE",
      "exclude_tran_types" : [ "LATE_PAYMENT_FEE", "LATE_PAYMENT_FEE" ],
      "minimum_interest" : 7.061401241503038E11,
      "day_count" : "ACTUAL"
    },
    "usage" : [ "PURCHASE", "PURCHASE" ],
    "description" : "description",
    "min_payment_calculation" : {
      "min_payment_flat_amount" : 0.5737376656633328,
      "min_payment_percentage" : {
        "include_fees_charged" : [ null, null ],
        "percentage_of_balance" : 23.021435847988784
      },
      "include_past_due_amount" : true
    },
    "classification" : "CONSUMER",
    "card_product_tokens" : [ "card_product_tokens", "card_product_tokens" ],
    "currency_code" : "USD",
    "token" : "token",
    "product_sub_type" : "CREDIT_CARD",
    "credit_line" : {
      "min" : 5.637376656633271E11,
      "max" : 5.962133916683123E11
    },
    "product_type" : "REVOLVING",
    "min_payment_percentage" : 93.01444942488332,
    "name" : "name",
    "parent_product_token" : "parent_product_token",
    "config" : {
      "fees" : [ "LATE_PAYMENT_FEE", "LATE_PAYMENT_FEE" ],
      "billing_cycle_day" : 1,
      "periodic_fees" : [ {
        "number_of_days_post_activation" : 596,
        "frequency" : "ANNUAL"
      }, {
        "number_of_days_post_activation" : 596,
        "frequency" : "ANNUAL"
      } ],
      "payment_due_day" : 31
    },
    "status" : "DRAFT"
  } ],
  "start_index" : 2,
  "count" : 0,
  "end_index" : 3
}}]
     - parameter status: (query) An array of statuses by which to filter credit products. (optional)
     - parameter count: (query) The number of resources to retrieve. (optional, default to 5)
     - parameter startIndex: (query) Sort order index of the first resource in the returned array. (optional, default to 0)
     - parameter sortBy: (query) Field on which to sort. Prefix the field name with a hyphen (&#x60;-&#x60;) to sort in descending order. Omit the hyphen to sort in ascending order.  *NOTE:* You must sort using system field names such as &#x60;lastModifiedTime&#x60;, and not by the field names appearing in response bodies such as &#x60;last_modified_time&#x60;. (optional, default to -lastModifiedTime)

     - returns: RequestBuilder<ProductsPage> 
     */
    open class func listProductsWithRequestBuilder(status: [ResourceStatus]? = nil, count: Int? = nil, startIndex: Int? = nil, sortBy: SortBy_listProducts? = nil) -> RequestBuilder<ProductsPage> {
        let path = "/credit/products"
        let URLString = Marqeta.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "status": status, 
                        "count": count?.encodeToJSON(), 
                        "start_index": startIndex?.encodeToJSON(), 
                        "sort_by": sortBy?.rawValue
        ])


        let requestBuilder: RequestBuilder<ProductsPage>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Retrieve credit product

     - parameter token: (path) The unique identifier of the credit product to retrieve.  Send a &#x60;GET&#x60; request to &#x60;/credit/products&#x60; to retrieve existing credit product tokens. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func retrieveProduct(token: String, completion: @escaping ((_ data: ProductResponse?,_ error: Error?) -> Void)) {
        retrieveProductWithRequestBuilder(token: token).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Retrieve credit product
     - GET /credit/products/{token}

     - BASIC:
       - type: http
       - name: mqAppAndAccessToken
     - examples: [{contentType=application/json, example={
  "created_time" : "2000-01-23T04:56:07.000+00:00",
  "updated_time" : "2000-01-23T04:56:07.000+00:00",
  "payment_allocation_order" : [ "INTEREST", "INTEREST" ],
  "min_payment_flat_amount" : 0.7161401241503109,
  "interest_calculation" : {
    "interest_on_grace_reactivation" : "ACCRUE_FULL_CYCLE",
    "method" : "AVG_DAILY_BALANCE_WITH_NEW_TRANSACTIONS",
    "application_of_credits" : {
      "cycle_type" : "BEGINNING_REVOLVING",
      "day" : 7
    },
    "interest_application" : [ "PRINCIPAL", "PRINCIPAL" ],
    "grace_days_application" : "NEXT_CYCLE_DATE",
    "exclude_tran_types" : [ "LATE_PAYMENT_FEE", "LATE_PAYMENT_FEE" ],
    "minimum_interest" : 7.061401241503038E11,
    "day_count" : "ACTUAL"
  },
  "usage" : [ "PURCHASE", "PURCHASE" ],
  "description" : "description",
  "min_payment_calculation" : {
    "min_payment_flat_amount" : 0.5737376656633328,
    "min_payment_percentage" : {
      "include_fees_charged" : [ null, null ],
      "percentage_of_balance" : 23.021435847988784
    },
    "include_past_due_amount" : true
  },
  "classification" : "CONSUMER",
  "card_product_tokens" : [ "card_product_tokens", "card_product_tokens" ],
  "currency_code" : "USD",
  "token" : "token",
  "product_sub_type" : "CREDIT_CARD",
  "credit_line" : {
    "min" : 5.637376656633271E11,
    "max" : 5.962133916683123E11
  },
  "product_type" : "REVOLVING",
  "min_payment_percentage" : 93.01444942488332,
  "name" : "name",
  "parent_product_token" : "parent_product_token",
  "config" : {
    "fees" : [ "LATE_PAYMENT_FEE", "LATE_PAYMENT_FEE" ],
    "billing_cycle_day" : 1,
    "periodic_fees" : [ {
      "number_of_days_post_activation" : 596,
      "frequency" : "ANNUAL"
    }, {
      "number_of_days_post_activation" : 596,
      "frequency" : "ANNUAL"
    } ],
    "payment_due_day" : 31
  },
  "status" : "DRAFT"
}}]
     - parameter token: (path) The unique identifier of the credit product to retrieve.  Send a &#x60;GET&#x60; request to &#x60;/credit/products&#x60; to retrieve existing credit product tokens. 

     - returns: RequestBuilder<ProductResponse> 
     */
    open class func retrieveProductWithRequestBuilder(token: String) -> RequestBuilder<ProductResponse> {
        var path = "/credit/products/{token}"
        let tokenPreEscape = "\(token)"
        let tokenPostEscape = tokenPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{token}", with: tokenPostEscape, options: .literal, range: nil)
        let URLString = Marqeta.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<ProductResponse>.Type = Marqeta.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
}
