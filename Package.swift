// swift-tools-version:5.5
import PackageDescription

let package = Package(
  name: "Lottie123",
  // Minimum platform versions should be kept in sync with the per-platform targets in Lottie.xcodeproj, lottie-ios.podspec, and lottie-spm's Package.swift
  platforms: [.iOS("11.0"), .macOS("10.11"), .tvOS("11.0")],
  products: [.library(name: "Lottie123", targets: ["Lottie123"])],
  targets: [.target(name: "Lottie123", path: "Sources")])

#if swift(>=5.6)
// Add the Airbnb Swift formatting plugin if possible
package.dependencies.append(.package(url: "https://github.com/airbnb/swift", .upToNextMajor(from: "1.0.1")))
#endif
