//
//  MainMenu.swift
//  P Brittle
//
//  Created by Justin Kizer on 5/24/17.
//  Copyright © 2017 JustinKizer. All rights reserved.
//

import SpriteKit
import GameplayKit

class MainMenu: SKScene {

    let button = SKSpriteNode(imageNamed: "NewGameButton")
    let button2 = SKSpriteNode(imageNamed: "NewGameButton")
    let button3 = SKSpriteNode(imageNamed: "NewGameButton")
    
    override func didMove(to view: SKView) {
        
        button.position = CGPoint(x: size.width * 0.5, y: size.height * 0.75)
        button2.position = CGPoint(x: size.width * 0.5, y: size.height * 0.5)
        button3.position = CGPoint(x: size.width * 0.5, y: size.height * 0.25)
        addChild(button)
        addChild(button2)
        addChild(button3)
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
            
            if node == button {
                if view != nil {
                    let transition:SKTransition = SKTransition.fade(withDuration: 0.01)
                    let scene:SKScene = Level01(size: self.size)
                    self.view?.presentScene(scene, transition: transition)
                }
            }
            if node == button2 {
                if view != nil {
                    let transition:SKTransition = SKTransition.fade(withDuration: 0.01)
                    let scene:SKScene = LevelSelect(size: self.size)
                    self.view?.presentScene(scene, transition: transition)
                }
            }
            if node == button3 {
                if view != nil {
                    let transition:SKTransition = SKTransition.fade(withDuration: 0.01)
                    let scene:SKScene = Collectibles(size: self.size)
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
