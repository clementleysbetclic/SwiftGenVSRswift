//
//  DetrailViewController.swift
//  TestSwiftGen
//
//  Created by Clément Leys on 29/11/2018.
//  Copyright © 2018 Clément Leys. All rights reserved.
//

import UIKit

class DetrailViewController: UIViewController {

    @IBOutlet private weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = L10n.isInThe("Bryan", L10n.kitchen)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
