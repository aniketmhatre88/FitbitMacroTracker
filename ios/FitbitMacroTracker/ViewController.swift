//
//  ViewController.swift
//  FitbitMacroTracker
//
//  Created by Mhatre, Aniket on 7/28/17.
//  Copyright © 2017 Mhatre, Aniket. All rights reserved.
//

import UIKit
import React

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        loadReactComponent()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func loadReactComponent() {
        let jsCodeLocation = URL(string: "http://localhost:8081/index.ios.bundle?platform=ios")
        
        let rootView = RCTRootView(
            bundleURL: jsCodeLocation,
            moduleName: "FitbitMacroTracker",
            initialProperties: [:] as [NSObject : AnyObject],
            launchOptions: nil
        )
        let vc = UIViewController()
        vc.view = rootView
        self.present(vc, animated: false, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
