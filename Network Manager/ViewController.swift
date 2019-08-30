//
//  ViewController.swift
//  Network Manager
//
//  Created by macbook on 2019-08-27.
//  Copyright © 2019 macbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
//        WebService.shared.invokeApi(stringURL: "http://irapi.argaam.com/v1.0/json/InvestorsRelation/CompanyInfo",
//                                    requestType: .get,
//                                    headers: nil,
//                                    BaseModel<CompanyInfo>.self) { (result) in
//
//                                        if result.isSecussful(){
//                                            print(result.Data!)
//                                        }else{
//                                            print(result.StatusMessage!)
//                                        }
//
//        }
//
        
        let parameters: [String: Any] = [
            "EmailAddress": "mullah01@mailinator.com",
            "UserName": "Jack01",
            "Password": "danat",
            "FirstName": "jj",
            "LastName": "khan",
            "MobileNo": "090078601",
            "CountryID": "",
            "IsGuest": "false"
        ]
        
        WebService.shared.invokeApi(stringURL: "http://argaamv2mobileapis.argaamnews.com/V2.2/json/register-user",
                                    requestType: .post,
                                    headers: Utils.getHeaderPost(),
                                    params: parameters as Dictionary<String, AnyObject>,
                                    BaseModel<RigisterUser>.self) { (reslt) in
                                        
                                        if reslt.isSecussful() {
                                            print(reslt.Data!)
                                        }else{
                                            print(reslt.StatusMessage!)
                                        }
        }
    }


}
