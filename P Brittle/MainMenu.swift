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
    
    var newGameButton = SKSpriteNode()
    let newGameButtonTex = SKTexture(imageNamed: "MainMenu")
    
    override func didMove(to view: SKView) {
        
        newGameButton = SKSpriteNode(texture: newGameButtonTex)
        newGameButton.position = CGPoint(x: frame.midX, y: frame.midY)
        self.addChild(newGameButton)
        
    }
    
    func touchDown(atPoint pos : CGPoint) {
    }
    
    func touchMoved(toPoint pos : CGPoint) {
    }
    
    func touchUp(atPoint pos : CGPoint) {
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        SKAction.run() {
            let transition = SKTransition.fade(withDuration: 1)
            let scene = Level01(size: self.size)
            self.view?.presentScene(scene, transition: transition)
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
