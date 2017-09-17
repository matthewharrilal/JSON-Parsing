//
//  ViewController.swift
//  Practice-API-Testing
//
//  Created by Matthew Harrilal on 9/17/17.
//  Copyright © 2017 Matthew Harrilal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        grabData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func grabData()  {
        let session = URLSession.shared
        var getRequest = URLRequest(url: URL(string: "https://api.airbnb.com/v2/search_results?key=915pw2pnf4h1aiguhph5gc5b2")!)
        getRequest.httpMethod = "GET"
        session.dataTask(with: getRequest) { (data, response, error) in
            if let data = data {
                let jsonData = try? JSONSerialization.jsonObject(with: data, options: .allowFragments)
                print(jsonData)
            }
        }.resume()
    }

}


