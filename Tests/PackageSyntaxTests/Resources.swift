/*
 This source file is part of the Swift.org open source project

 Copyright (c) 2014 - 2017 Apple Inc. and the Swift project authors
 Licensed under Apache License v2.0 with Runtime Library Exception

 See http://swift.org/LICENSE.txt for license information
 See http://swift.org/CONTRIBUTORS.txt for Swift project authors
*/

// FIXME: Share with SwiftPM

import TSCBasic
import SPMBuildCore
import Foundation
import PackageLoading
import Workspace
import PackageModel

#if os(macOS)
private func bundleRoot() -> AbsolutePath {
    for bundle in Bundle.allBundles where bundle.bundlePath.hasSuffix(".xctest") {
        return AbsolutePath(bundle.bundlePath).parentDirectory
    }
    fatalError()
}
#endif

public class Resources {

    public var swiftCompiler: AbsolutePath {
        return toolchain.swiftCompilerPath
    }

    public var libDir: AbsolutePath {
        return toolchain.swiftPMLibrariesLocation.manifestLibraryPath
    }

    public var swiftCompilerFlags: [String] {
        return []
    }

  #if os(macOS)
    public var sdkPlatformFrameworksPath: AbsolutePath {
        return Destination.sdkPlatformFrameworkPaths()!.fwk
    }
  #endif

    public let toolchain: UserToolchain

    public static let `default` = Resources()

    private init() {
        let binDir: AbsolutePath
      #if os(macOS)
        binDir = bundleRoot()
      #else
        binDir = AbsolutePath(CommandLine.arguments[0], relativeTo: localFileSystem.currentWorkingDirectory!).parentDirectory
      #endif
        toolchain = try! UserToolchain(destination: Destination.hostDestination(binDir))
    }

    /// True if SwiftPM has PackageDescription 4 runtime available.
    public static var havePD4Runtime: Bool {
        return true
    }
}
