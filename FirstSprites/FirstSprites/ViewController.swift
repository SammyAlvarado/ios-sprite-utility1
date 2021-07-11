//
//  ViewController.swift
//  FirstSprites
//
//  Created by Sammy Alvarado on 7/10/21.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {
    // MARK: Properties
    var skScene: CustomScene? = nil
    
    // MARK: Outlets
    @IBOutlet var skView: SKView!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        skScene = CustomScene(size: view.bounds.size)
        skView.presentScene(skScene)
    }
    
    
    
    

}

