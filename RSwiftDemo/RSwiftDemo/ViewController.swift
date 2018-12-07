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

        //mainImageView.image = R.image.chuckNorris()
        // TODO: Fill UI
    
    }

    @IBAction func goButtonTouch(_ sender: Any) {
            // TODO: Perform segue ?
        performSegue(withIdentifier: R.segue.viewController.showDetail, sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let view = segue.destination as? DetailViewController {
            view.title = self.mainLabel.text
        }
    }
    
    






















    
    
    /*
     -----------
     Without R.swift
     -----------
     
     mainLabel.text = String(format: NSLocalizedString("whereIs", tableName: "L10n", comment: ""), "bryan")
     mainLabel.font = UIFont(name: "SedgwickAve-Regular", size: 30)
     mainImageView.image = UIImage(named: "ChuckNorris")
     
     
     performSegue(withIdentifier: "showDetail", sender: self)
     
     */
    /*
     -----------
     With R.swift
     -----------

     mainImageView.image = R.image.chuckNorris()
     mainLabel.font = R.font.sedgwickAveRegular(size: 30)
     mainLabel.text = R.string.l10n.whereIs("bryan")
     
 
     performSegue(withIdentifier: R.segue.viewController.showDetail, sender: self)
 
    */
    
    
    
}

