/*
* Copyright 2015 Coodly LLC
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
* http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/

import Foundation
import SpriteKit

public class GameView: SKSpriteNode {
    
    public func loadContent() {
        
    }
    
    func unloadContent() {
        
    }
    
    public func positionContent() {
        for node in self.children {
            if !node.isKindOfClass(GameView) {
                continue
            }
            
            let view = node as! GameView
            view.positionContent()
        }
    }
    
    public func update(time: NSTimeInterval) {
    
    }
    
    public func addGameView(view: GameView) {
        addChild(view)
        view.anchorPoint = CGPointMake(0, 0)
        view.loadContent()
    }
}