//
//  ViewController.swift
//  RSwiftDemo
//
//  Created by Antonin MOLIERES on 01/12/2018.
//  Copyright © 2018 amolieres. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var mainImageView: UIImageView!
    @IBOutlet private weak var mainLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Access UIImage
        // Without R.Swift: mainImageView.image = UIImage(named: "ChuckNorris")
        
        mainImageView.image = R.image.chuckNorris()
        
        
        // Access Localized Strings
        // Without R.Swift: String(format: NSLocalizedString("whereIs", tableName: "L10n", comment: ""), "bryan")
        
        mainLabel.text = R.string.l10n.whereis("Bryan")
        
        
        // Acces UIFont's
        // Without R.Swift: mainLabel.font = UIFont(name: "SedgwickAve-Regular", size: 30)
        
        mainLabel.font = R.font.sedgwickAveRegular(size: 30)

    }

    @IBAction func goButtonTouch(_ sender: Any) {
        // Perform segue
        // Without R.Swift: performSegue(withIdentifier: "showDetail", sender: self)
        
        performSegue(withIdentifier: R.segue.viewController.showDetail, sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let view = segue.destination as? DetailViewController {
            view.title = R.string.l10n.isinthe("Bryan", R.string.l10n.kitchen())
        }
    }
}

