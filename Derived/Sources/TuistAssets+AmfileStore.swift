// swiftlint:disable:this file_name
// swiftlint:disable all
// swift-format-ignore-file
// swiftformat:disable all
// Generated using tuist — https://github.com/tuist/tuist



#if os(macOS)
#if hasFeature(InternalImportsByDefault)
public import AppKit
#else
import AppKit
#endif
#else
#if hasFeature(InternalImportsByDefault)
public import UIKit
#else
import UIKit
#endif
#endif

#if canImport(SwiftUI)
#if hasFeature(InternalImportsByDefault)
public import SwiftUI
#else
import SwiftUI
#endif
#endif

// MARK: - Asset Catalogs

public enum AmfileStoreAsset: Sendable {
  public enum Assets {
  public static let accentColor = AmfileStoreColors(name: "AccentColor")
    public static let activityIndicatorColor = AmfileStoreColors(name: "activityIndicatorColor")
    public static let inactiveTabBarItemColor = AmfileStoreColors(name: "inactiveTabBarItemColor")
    public static let navigationBarTintColor = AmfileStoreColors(name: "navigationBarTintColor")
    public static let sidebarBackgroundColor = AmfileStoreColors(name: "sidebarBackgroundColor")
    public static let sidebarTextColor = AmfileStoreColors(name: "sidebarTextColor")
    public static let statusBarBackgroundColor = AmfileStoreColors(name: "statusBarBackgroundColor")
    public static let tabBarTintColor = AmfileStoreColors(name: "tabBarTintColor")
    public static let tintColor = AmfileStoreColors(name: "tintColor")
    public static let titleColor = AmfileStoreColors(name: "titleColor")
  }
  public enum Images {
  public static let headerImage = AmfileStoreImages(name: "HeaderImage")
    public static let launchBackground = AmfileStoreImages(name: "LaunchBackground")
    public static let launchCenter = AmfileStoreImages(name: "LaunchCenter")
    public static let navBarImage = AmfileStoreImages(name: "NavBarImage")
    public static let chevronDown = AmfileStoreImages(name: "chevronDown")
    public static let chevronUp = AmfileStoreImages(name: "chevronUp")
    public static let gear = AmfileStoreImages(name: "gear")
    public static let leftImage = AmfileStoreImages(name: "leftImage")
    public static let navImage = AmfileStoreImages(name: "navImage")
    public static let rightImage = AmfileStoreImages(name: "rightImage")
  }
}

// MARK: - Implementation Details

public final class AmfileStoreColors: Sendable {
  public let name: String

  #if os(macOS)
  public typealias Color = NSColor
  #elseif os(iOS) || os(tvOS) || os(watchOS) || os(visionOS)
  public typealias Color = UIColor
  #endif

  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, macOS 10.13, visionOS 1.0, *)
  public var color: Color {
    guard let color = Color(asset: self) else {
      fatalError("Unable to load color asset named \(name).")
    }
    return color
  }

  #if canImport(SwiftUI)
  @available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, visionOS 1.0, *)
  public var swiftUIColor: SwiftUI.Color {
      return SwiftUI.Color(asset: self)
  }
  #endif

  fileprivate init(name: String) {
    self.name = name
  }
}

public extension AmfileStoreColors.Color {
  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, macOS 10.13, visionOS 1.0, *)
  convenience init?(asset: AmfileStoreColors) {
    let bundle = Bundle.module
    #if os(iOS) || os(tvOS) || os(visionOS)
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    self.init(named: NSColor.Name(asset.name), bundle: bundle)
    #elseif os(watchOS)
    self.init(named: asset.name)
    #endif
  }
}

#if canImport(SwiftUI)
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, visionOS 1.0, *)
public extension SwiftUI.Color {
  init(asset: AmfileStoreColors) {
    let bundle = Bundle.module
    self.init(asset.name, bundle: bundle)
  }
}
#endif

public struct AmfileStoreImages: Sendable {
  public let name: String

  #if os(macOS)
  public typealias Image = NSImage
  #elseif os(iOS) || os(tvOS) || os(watchOS) || os(visionOS)
  public typealias Image = UIImage
  #endif

  public var image: Image {
    let bundle = Bundle.module
    #if os(iOS) || os(tvOS) || os(visionOS)
    let image = Image(named: name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    let image = bundle.image(forResource: NSImage.Name(name))
    #elseif os(watchOS)
    let image = Image(named: name)
    #endif
    guard let result = image else {
      fatalError("Unable to load image asset named \(name).")
    }
    return result
  }

  #if canImport(SwiftUI)
  @available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, visionOS 1.0, *)
  public var swiftUIImage: SwiftUI.Image {
    SwiftUI.Image(asset: self)
  }
  #endif
}

#if canImport(SwiftUI)
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, visionOS 1.0, *)
public extension SwiftUI.Image {
  init(asset: AmfileStoreImages) {
    let bundle = Bundle.module
    self.init(asset.name, bundle: bundle)
  }

  init(asset: AmfileStoreImages, label: Text) {
    let bundle = Bundle.module
    self.init(asset.name, bundle: bundle, label: label)
  }

  init(decorative asset: AmfileStoreImages) {
    let bundle = Bundle.module
    self.init(decorative: asset.name, bundle: bundle)
  }
}
#endif

// swiftformat:enable all
// swiftlint:enable all
