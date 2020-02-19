//
//  SKSpriteNode_Animation.swift
//  BurrowInsomnia
//
//  Created by Brandon Peters on 2020-02-18.
//  Copyright © 2020 Brandon Peters. All rights reserved.
//

import Foundation
import SpriteKit

extension SKSpriteNode {
    
    func animateThrough(images: [SKTexture], duration: TimeInterval, repeats: Bool) -> SKAction {
        
        let animation = SKAction.animate(with: images, timePerFrame: duration / Double(images.count))
        
        let reverseAnimation = animation.reversed();
        
        let fullAnimation = SKAction.sequence([animation, reverseAnimation])
        
        if repeats {
            let repeatForever = SKAction.repeatForever(fullAnimation)
            return repeatForever
        }
        
        return fullAnimation
    }
    
    func animateSingle(images: [SKTexture], duration: TimeInterval, repeats: Bool) -> SKAction {
        
        let animation = SKAction.animate(with: images, timePerFrame: duration / Double(images.count))
        
        if repeats {
            let repeatForever = SKAction.repeatForever(animation)
            return repeatForever
        }
        
        return animation
    }
    
    @objc func update(timeInterval: TimeInterval) {
        
    }
}
