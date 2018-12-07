//
//  ViewController.swift
//  TestSwiftGen
//
//  Created by Clément Leys on 25/11/2018.
//  Copyright © 2018 Clément Leys. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var label: UILabel!
    @IBOutlet private weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = String(format: NSLocalizedString("whereIs", comment: ""), "Bryan")

        label.font = UIFont(name: "SedgwickAve-Regular", size: 30)

        label.textColor = UIColor(named: "mainColor")

        image.image = UIImage(named: "chat")
        
    }
    
    @IBAction func goToDetail(_ sender: Any) {
        performSegue(withIdentifier: "showDetail", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? DetrailViewController {
            destination.title =  label.text
        }
    }


}
