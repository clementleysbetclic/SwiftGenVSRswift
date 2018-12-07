//
//  ViewController.swift
//  TestSwiftGen
//
//  Created by Clément Leys on 25/11/2018.
//  Copyright © 2018 Clément Leys. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet private weak var label: UILabel!
    @IBOutlet private weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = L10n.isInThe("Bryan", L10n.kitchen)

        label.font = FontFamily.SedgwickAve.regular.font(size: 30)

        label.textColor = Asset.mainColor.color

        image.image = Asset.chat.image

    }
    
    @IBAction func goToDetail(_ sender: Any) {
        perform(segue: StoryboardSegue.Main.showDetail)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? DetrailViewController {
            destination.title =  label.text
        }
    }


}

