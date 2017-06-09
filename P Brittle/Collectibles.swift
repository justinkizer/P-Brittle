//
//  Collectibles.swift
//  P Brittle
//
//  Created by Justin Kizer on 6/8/17.
//  Copyright © 2017 JustinKizer. All rights reserved.
//

import Foundation
import SpriteKit
import GameplayKit

class Collectibles: SKScene {
    
    let button = SKSpriteNode(imageNamed: "Collectibles")
    let backButton = SKSpriteNode(imageNamed: "NewGameButton")
    
    override func didMove(to view: SKView) {
        
        button.position = CGPoint(x: size.width * 0.5, y: size.height * 0.5)
        button.scale(to: size)
        backButton.position = CGPoint(x: size.width * 0.06, y: size.height * 0.95)
        backButton.scale(to: CGSize(width: size.width * 0.10, height: size.height * 0.08))
        backButton.zPosition = 1
        addChild(backButton)
        addChild(button)
        
    }
    
    func touchDown(atPoint pos : CGPoint) {
    }
    
    func touchMoved(toPoint pos : CGPoint) {
    }
    
    func touchUp(atPoint pos : CGPoint) {
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        if let touch = touches.first {
            let pos = touch.location(in: self)
            let node = self.atPoint(pos)
            
            if node == backButton {
                if view != nil {
                    let transition:SKTransition = SKTransition.fade(withDuration: 0.01)
                    let scene:SKScene = MainMenu(size: self.size)
                    self.view?.presentScene(scene, transition: transition)
                }
            }
        }
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
    
}
