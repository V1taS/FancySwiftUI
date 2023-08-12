import ProjectDescription

let dependencies = Dependencies(
  swiftPackageManager: SwiftPackageManagerDependencies(
    [.local(path: "../../FancySwiftUI")]
  ),
  platforms: [.iOS]
)
