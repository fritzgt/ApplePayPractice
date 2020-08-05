//
//  ViewController.swift
//  ApplePay
//
//  Created by FGT MAC on 8/5/20.
//  Copyright © 2020 FGT MAC. All rights reserved.
//

import UIKit
import PassKit

class ViewController: UIViewController {
    
    //MARK: - Properties
    
    private var cart = [PKPaymentSummaryItem]()
    
    private var paymentRequest: PKPaymentRequest {
        let request = PKPaymentRequest()
        
        request.merchantIdentifier = ""//Research for this
        request.supportedNetworks = [.amex,.masterCard,.visa]
        request.supportedCountries = ["US"]
        request.merchantCapabilities = .capability3DS
        
        request.countryCode = "US"
        request.currencyCode = "USD"
        
        request.paymentSummaryItems = cart
        
        return request
    }
    
    //MARK: - Outlets
    @IBOutlet weak var payButton: UIButton!
    
    
    //MARK: - View lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cart.append(PKPaymentSummaryItem(label: "iPhone 11", amount: 1099))
    }
    
    //MARK: - Actions
    @IBAction func payButtonPresed(_ sender: UIButton){
        startPayment()
    }
    
    //MARK: - Private Methods
    private func startPayment(){
        
    }

}

