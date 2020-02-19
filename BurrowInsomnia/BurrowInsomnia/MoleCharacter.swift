//
//  MoleCharacter.swift
//  BurrowInsomnia
//
//  Created by Brandon Peters on 2020-02-18.
//  Copyright © 2020 Brandon Peters. All rights reserved.
//

import Foundation
import SpriteKit

class Mole: SKSpriteNode
{
    //Idle Sprites
    let MoleIdle1 = SKTexture(imageNamed: "MIdle1")
    let MoleIdle2 = SKTexture(imageNamed: "MIdle2")
    let MoleIdle3 = SKTexture(imageNamed: "MIdle3")
    let MoleIdle4 = SKTexture(imageNamed: "MIdle4")
    
    //Attacking Sprites
    let MoleAttack1 = SKTexture(imageNamed: "MSlash1")
    let MoleAttack2 = SKTexture(imageNamed: "MSlash2")
    
    //Walking Sprites
    let MoleWalk1 = SKTexture(imageNamed: "MIdle1")
    let MoleWalk2 = SKTexture(imageNamed: "MWalk1")
    let MoleWalk3 = SKTexture(imageNamed: "MWalk2")
    let MoleWalk4 = SKTexture(imageNamed: "MWalk3")
    
    static let idleAnimation = "Idle"
    
    static let attackAnimation = "Attack"
    
    static let walkAnimation = "Walk"
        
        init(){
            let texture = SKTexture(imageNamed: "MIdle1")
            super.init(texture: texture, color: .clear, size: texture.size())
            
            //Idle Animation when Character isn't moving
            let idle = animateThrough(images:
                [MoleIdle1,
                MoleIdle2,
                MoleIdle3,
                MoleIdle4],
                duration: 0.50,
                repeats: true)
            
            //Attacking Animation when the Character is double clicked
            let attack = animateSingle(images:
                 [MoleAttack1,
                 MoleAttack2,],
                 duration: 0.25,
                 repeats: false)
            
            //Walking Animation whn dragging character cross the screen
                   let walk = animateThrough(images:
                        [MoleIdle1 ,MoleWalk1,
                        MoleWalk2, MoleWalk3],
                        duration: 0.35,
                        repeats: true)
                   
            
            self.run(idle, withKey: Mole.idleAnimation)
        }
    
    
        
        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        override func update(timeInterval: TimeInterval) {
           
        }
    }


