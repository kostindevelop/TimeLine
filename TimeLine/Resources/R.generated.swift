//
// This is a generated file, do not edit!
// Generated by R.swift, see https://github.com/mac-cain13/R.swift
//

import Foundation
import Rswift
import UIKit

/// This `R` struct is generated and contains references to static resources.
struct R: Rswift.Validatable {
  fileprivate static let applicationLocale = hostingBundle.preferredLocalizations.first.flatMap(Locale.init) ?? Locale.current
  fileprivate static let hostingBundle = Bundle(for: R.Class.self)
  
  static func validate() throws {
    try intern.validate()
  }
  
  /// This `R.color` struct is generated, and contains static references to 0 colors.
  struct color {
    fileprivate init() {}
  }
  
  /// This `R.file` struct is generated, and contains static references to 0 files.
  struct file {
    fileprivate init() {}
  }
  
  /// This `R.font` struct is generated, and contains static references to 0 fonts.
  struct font {
    fileprivate init() {}
  }
  
  /// This `R.image` struct is generated, and contains static references to 3 images.
  struct image {
    /// Image `Logo_black`.
    static let logo_black = Rswift.ImageResource(bundle: R.hostingBundle, name: "Logo_black")
    /// Image `Logo`.
    static let logo = Rswift.ImageResource(bundle: R.hostingBundle, name: "Logo")
    /// Image `register_back`.
    static let register_back = Rswift.ImageResource(bundle: R.hostingBundle, name: "register_back")
    
    /// `UIImage(named: "Logo", bundle: ..., traitCollection: ...)`
    static func logo(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.logo, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "Logo_black", bundle: ..., traitCollection: ...)`
    static func logo_black(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.logo_black, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "register_back", bundle: ..., traitCollection: ...)`
    static func register_back(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.register_back, compatibleWith: traitCollection)
    }
    
    fileprivate init() {}
  }
  
  /// This `R.nib` struct is generated, and contains static references to 0 nibs.
  struct nib {
    fileprivate init() {}
  }
  
  /// This `R.reuseIdentifier` struct is generated, and contains static references to 1 reuse identifiers.
  struct reuseIdentifier {
    /// Reuse identifier `TimeCell`.
    static let timeCell: Rswift.ReuseIdentifier<TimeLineCell> = Rswift.ReuseIdentifier(identifier: "TimeCell")
    
    fileprivate init() {}
  }
  
  /// This `R.segue` struct is generated, and contains static references to 0 view controllers.
  struct segue {
    fileprivate init() {}
  }
  
  /// This `R.storyboard` struct is generated, and contains static references to 3 storyboards.
  struct storyboard {
    /// Storyboard `Auth`.
    static let auth = _R.storyboard.auth()
    /// Storyboard `LaunchScreen`.
    static let launchScreen = _R.storyboard.launchScreen()
    /// Storyboard `TimeLine`.
    static let timeLine = _R.storyboard.timeLine()
    
    /// `UIStoryboard(name: "Auth", bundle: ...)`
    static func auth(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.auth)
    }
    
    /// `UIStoryboard(name: "LaunchScreen", bundle: ...)`
    static func launchScreen(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.launchScreen)
    }
    
    /// `UIStoryboard(name: "TimeLine", bundle: ...)`
    static func timeLine(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.timeLine)
    }
    
    fileprivate init() {}
  }
  
  /// This `R.string` struct is generated, and contains static references to 1 localization tables.
  struct string {
    /// This `R.string.localizable` struct is generated, and contains static references to 12 localization keys.
    struct localizable {
      /// Base translation: Login
      /// 
      /// Locales: Base, ru
      static let authBtLogin = Rswift.StringResource(key: "auth.btLogin", tableName: "Localizable", bundle: R.hostingBundle, locales: ["Base", "ru"], comment: nil)
      /// Base translation: Registration
      /// 
      /// Locales: Base, ru
      static let authBtRegistration = Rswift.StringResource(key: "auth.btRegistration", tableName: "Localizable", bundle: R.hostingBundle, locales: ["Base", "ru"], comment: nil)
      /// Base translation: Registration
      /// 
      /// Locales: Base, ru
      static let regBtRegistration = Rswift.StringResource(key: "reg.btRegistration", tableName: "Localizable", bundle: R.hostingBundle, locales: ["Base", "ru"], comment: nil)
      /// Base translation: SignIn
      /// 
      /// Locales: Base, ru
      static let authLbSignIn = Rswift.StringResource(key: "auth.lbSignIn", tableName: "Localizable", bundle: R.hostingBundle, locales: ["Base", "ru"], comment: nil)
      /// Base translation: SignUp
      /// 
      /// Locales: Base, ru
      static let regLbSignUp = Rswift.StringResource(key: "reg.lbSignUp", tableName: "Localizable", bundle: R.hostingBundle, locales: ["Base", "ru"], comment: nil)
      /// Base translation: confirm password
      /// 
      /// Locales: Base, ru
      static let regLbConfirmPassword = Rswift.StringResource(key: "reg.lbConfirmPassword", tableName: "Localizable", bundle: R.hostingBundle, locales: ["Base", "ru"], comment: nil)
      /// Base translation: e-mail
      /// 
      /// Locales: Base, ru
      static let regLbEmail = Rswift.StringResource(key: "reg.lbEmail", tableName: "Localizable", bundle: R.hostingBundle, locales: ["Base", "ru"], comment: nil)
      /// Base translation: forgot password?
      /// 
      /// Locales: Base, ru
      static let authBtForgotPassword = Rswift.StringResource(key: "auth.btForgotPassword", tableName: "Localizable", bundle: R.hostingBundle, locales: ["Base", "ru"], comment: nil)
      /// Base translation: password
      /// 
      /// Locales: Base, ru
      static let authPassword = Rswift.StringResource(key: "auth.password", tableName: "Localizable", bundle: R.hostingBundle, locales: ["Base", "ru"], comment: nil)
      /// Base translation: password
      /// 
      /// Locales: Base, ru
      static let regLbPassword = Rswift.StringResource(key: "reg.lbPassword", tableName: "Localizable", bundle: R.hostingBundle, locales: ["Base", "ru"], comment: nil)
      /// Base translation: user name
      /// 
      /// Locales: Base, ru
      static let authLbUserName = Rswift.StringResource(key: "auth.lbUserName", tableName: "Localizable", bundle: R.hostingBundle, locales: ["Base", "ru"], comment: nil)
      /// Base translation: user name
      /// 
      /// Locales: Base, ru
      static let regLbUserName = Rswift.StringResource(key: "reg.lbUserName", tableName: "Localizable", bundle: R.hostingBundle, locales: ["Base", "ru"], comment: nil)
      
      /// Base translation: Login
      /// 
      /// Locales: Base, ru
      static func authBtLogin(_: Void = ()) -> String {
        return NSLocalizedString("auth.btLogin", bundle: R.hostingBundle, value: "Login", comment: "")
      }
      
      /// Base translation: Registration
      /// 
      /// Locales: Base, ru
      static func authBtRegistration(_: Void = ()) -> String {
        return NSLocalizedString("auth.btRegistration", bundle: R.hostingBundle, value: "Registration", comment: "")
      }
      
      /// Base translation: Registration
      /// 
      /// Locales: Base, ru
      static func regBtRegistration(_: Void = ()) -> String {
        return NSLocalizedString("reg.btRegistration", bundle: R.hostingBundle, value: "Registration", comment: "")
      }
      
      /// Base translation: SignIn
      /// 
      /// Locales: Base, ru
      static func authLbSignIn(_: Void = ()) -> String {
        return NSLocalizedString("auth.lbSignIn", bundle: R.hostingBundle, value: "SignIn", comment: "")
      }
      
      /// Base translation: SignUp
      /// 
      /// Locales: Base, ru
      static func regLbSignUp(_: Void = ()) -> String {
        return NSLocalizedString("reg.lbSignUp", bundle: R.hostingBundle, value: "SignUp", comment: "")
      }
      
      /// Base translation: confirm password
      /// 
      /// Locales: Base, ru
      static func regLbConfirmPassword(_: Void = ()) -> String {
        return NSLocalizedString("reg.lbConfirmPassword", bundle: R.hostingBundle, value: "confirm password", comment: "")
      }
      
      /// Base translation: e-mail
      /// 
      /// Locales: Base, ru
      static func regLbEmail(_: Void = ()) -> String {
        return NSLocalizedString("reg.lbEmail", bundle: R.hostingBundle, value: "e-mail", comment: "")
      }
      
      /// Base translation: forgot password?
      /// 
      /// Locales: Base, ru
      static func authBtForgotPassword(_: Void = ()) -> String {
        return NSLocalizedString("auth.btForgotPassword", bundle: R.hostingBundle, value: "forgot password?", comment: "")
      }
      
      /// Base translation: password
      /// 
      /// Locales: Base, ru
      static func authPassword(_: Void = ()) -> String {
        return NSLocalizedString("auth.password", bundle: R.hostingBundle, value: "password", comment: "")
      }
      
      /// Base translation: password
      /// 
      /// Locales: Base, ru
      static func regLbPassword(_: Void = ()) -> String {
        return NSLocalizedString("reg.lbPassword", bundle: R.hostingBundle, value: "password", comment: "")
      }
      
      /// Base translation: user name
      /// 
      /// Locales: Base, ru
      static func authLbUserName(_: Void = ()) -> String {
        return NSLocalizedString("auth.lbUserName", bundle: R.hostingBundle, value: "user name", comment: "")
      }
      
      /// Base translation: user name
      /// 
      /// Locales: Base, ru
      static func regLbUserName(_: Void = ()) -> String {
        return NSLocalizedString("reg.lbUserName", bundle: R.hostingBundle, value: "user name", comment: "")
      }
      
      fileprivate init() {}
    }
    
    fileprivate init() {}
  }
  
  fileprivate struct intern: Rswift.Validatable {
    fileprivate static func validate() throws {
      try _R.validate()
    }
    
    fileprivate init() {}
  }
  
  fileprivate class Class {}
  
  fileprivate init() {}
}

struct _R: Rswift.Validatable {
  static func validate() throws {
    try storyboard.validate()
  }
  
  struct nib {
    fileprivate init() {}
  }
  
  struct storyboard: Rswift.Validatable {
    static func validate() throws {
      try auth.validate()
      try timeLine.validate()
      try launchScreen.validate()
    }
    
    struct auth: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = LoginScreen
      
      let bundle = R.hostingBundle
      let loginScreen = StoryboardViewControllerResource<LoginScreen>(identifier: "loginScreen")
      let name = "Auth"
      let registrationScreen = StoryboardViewControllerResource<RegistrationScreen>(identifier: "registrationScreen")
      
      func loginScreen(_: Void = ()) -> LoginScreen? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: loginScreen)
      }
      
      func registrationScreen(_: Void = ()) -> RegistrationScreen? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: registrationScreen)
      }
      
      static func validate() throws {
        if UIKit.UIImage(named: "Logo") == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'Logo' is used in storyboard 'Auth', but couldn't be loaded.") }
        if UIKit.UIImage(named: "register_back") == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'register_back' is used in storyboard 'Auth', but couldn't be loaded.") }
        if _R.storyboard.auth().loginScreen() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'loginScreen' could not be loaded from storyboard 'Auth' as 'LoginScreen'.") }
        if _R.storyboard.auth().registrationScreen() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'registrationScreen' could not be loaded from storyboard 'Auth' as 'RegistrationScreen'.") }
      }
      
      fileprivate init() {}
    }
    
    struct launchScreen: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = UIKit.UIViewController
      
      let bundle = R.hostingBundle
      let name = "LaunchScreen"
      
      static func validate() throws {
        if UIKit.UIImage(named: "Logo_black") == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'Logo_black' is used in storyboard 'LaunchScreen', but couldn't be loaded.") }
      }
      
      fileprivate init() {}
    }
    
    struct timeLine: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = UIKit.UITabBarController
      
      let bundle = R.hostingBundle
      let name = "TimeLine"
      let timeLineScreen = StoryboardViewControllerResource<UIKit.UITabBarController>(identifier: "timeLineScreen")
      
      func timeLineScreen(_: Void = ()) -> UIKit.UITabBarController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: timeLineScreen)
      }
      
      static func validate() throws {
        if _R.storyboard.timeLine().timeLineScreen() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'timeLineScreen' could not be loaded from storyboard 'TimeLine' as 'UIKit.UITabBarController'.") }
      }
      
      fileprivate init() {}
    }
    
    fileprivate init() {}
  }
  
  fileprivate init() {}
}
