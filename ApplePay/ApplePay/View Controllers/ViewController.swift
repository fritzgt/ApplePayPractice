//
//  ViewController.swift
//  ApplePay
//
//  Created by FGT MAC on 8/5/20.
//  Copyright © 2020 FGT MAC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - Properties
    @IBOutlet weak var payButton: UIButton!
    
    //MARK: - Outlets
    
    
    
    //MARK: - View lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //MARK: - Actions
    @IBAction func payButtonPresed(_ sender: UIButton){
        startPayment()
    }
    
    //MARK: - Private Methods
    private func startPayment(){
        
    }

}

