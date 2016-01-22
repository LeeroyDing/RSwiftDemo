// This is a generated file, do not edit!
// Generated by R.swift, see https://github.com/mac-cain13/R.swift

import Foundation
import Rswift
import UIKit

struct R: Rswift.Validatable {
  static func validate() throws {
    try intern.validate()
  }
  
  struct file {
    
  }
  
  struct font {
    
  }
  
  struct image {
    
  }
  
  private struct intern: Rswift.Validatable {
    static func validate() throws {
      try _R.validate()
    }
  }
  
  struct nib {
    static let gameView = _R.nib._GameView()
    
    static func gameView(_: Void) -> UINib {
      return UINib(resource: R.nib.gameView)
    }
  }
  
  struct reuseIdentifier {
    
  }
  
  struct segue {
    
  }
  
  struct storyboard {
    static let launchScreen = _R.storyboard.launchScreen()
    static let main = _R.storyboard.main()
    
    static func launchScreen(_: Void) -> UIStoryboard {
      return UIStoryboard(resource: R.storyboard.launchScreen)
    }
    
    static func main(_: Void) -> UIStoryboard {
      return UIStoryboard(resource: R.storyboard.main)
    }
  }
}

struct _R: Rswift.Validatable {
  static let hostingBundle = NSBundle(identifier: "im.leeroy.RSwiftDemo")
  
  static func validate() throws {
    try storyboard.validate()
  }
  
  struct nib {
    struct _GameView: NibResourceType {
      let bundle = _R.hostingBundle
      let name = "GameView"
      
      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [NSObject : AnyObject]? = nil) -> SKView? {
        return instantiateWithOwner(ownerOrNil, options: optionsOrNil)[0] as? SKView
      }
    }
  }
  
  struct storyboard: Rswift.Validatable {
    static func validate() throws {
      try launchScreen.validate()
      try main.validate()
    }
    
    struct launchScreen: Rswift.Validatable, StoryboardResourceWithInitialControllerType {
      typealias InitialController = UIViewController
      
      let bundle = _R.hostingBundle
      let name = "LaunchScreen"
      
      static func validate() throws {
        
      }
    }
    
    struct main: Rswift.Validatable, StoryboardResourceWithInitialControllerType {
      typealias InitialController = ViewController
      
      let bundle = _R.hostingBundle
      let name = "Main"
      
      static func validate() throws {
        
      }
    }
  }
}