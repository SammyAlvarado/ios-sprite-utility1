//
//  CustomScene.swift
//  FirstSprites
//
//  Created by Sammy Alvarado on 7/10/21.
//

import SpriteKit

class CustomScene: SKScene {
    // MARK: Property
    let crab = SKSpriteNode()
    
    override func sceneDidLoad() {
        super.sceneDidLoad()
        
        addChild(crab)
        crab.loadTextures(named: "HappyCrab", forKey: SKSpriteNode.textureKey)
        crab.position = CGPoint(x: frame.midX, y: frame.midY)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // Fetch a touch or leaves
        guard !touches.isEmpty, let touch = touches.first else { return }
        
        // Retrieve posistion
        let position = touch.location(in: self)
        
        // Create move action
        let actionDuration = 1.0
        let moveAction = SKAction.move(to: position, duration: actionDuration)
        let turnAction = SKAction.rotate(byAngle: CGFloat.pi * 2, duration: actionDuration)
        let groupAction = SKAction.group([moveAction, turnAction])
        crab.run(groupAction)
        
        
        // Run move action
//        crab.run(moveAction)
        
    }
}
