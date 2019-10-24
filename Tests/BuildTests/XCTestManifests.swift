#if !canImport(ObjectiveC)
import XCTest

extension BuildPlanTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__BuildPlanTests = [
        ("testBasicClangPackage", testBasicClangPackage),
        ("testBasicExtPackages", testBasicExtPackages),
        ("testBasicReleasePackage", testBasicReleasePackage),
        ("testBasicSwiftPackage", testBasicSwiftPackage),
        ("testBuildSettings", testBuildSettings),
        ("testClangTargets", testClangTargets),
        ("testCLanguageStandard", testCLanguageStandard),
        ("testCModule", testCModule),
        ("testCppModule", testCppModule),
        ("testDynamicProducts", testDynamicProducts),
        ("testExecAsDependency", testExecAsDependency),
        ("testExecBuildTimeDependency", testExecBuildTimeDependency),
        ("testExtraBuildFlags", testExtraBuildFlags),
        ("testIndexStore", testIndexStore),
        ("testModulewrap", testModulewrap),
        ("testNonReachableProductsAndTargets", testNonReachableProductsAndTargets),
        ("testObjCHeader1", testObjCHeader1),
        ("testObjCHeader2", testObjCHeader2),
        ("testObjCHeader3", testObjCHeader3),
        ("testPkgConfigGenericDiagnostic", testPkgConfigGenericDiagnostic),
        ("testPkgConfigHintDiagnostic", testPkgConfigHintDiagnostic),
        ("testPlatforms", testPlatforms),
        ("testPlatformsValidation", testPlatformsValidation),
        ("testREPLArguments", testREPLArguments),
        ("testSwiftBundleAccessor", testSwiftBundleAccessor),
        ("testSwiftCAsmMixed", testSwiftCAsmMixed),
        ("testSwiftCMixed", testSwiftCMixed),
        ("testSystemPackageBuildPlan", testSystemPackageBuildPlan),
        ("testTestModule", testTestModule),
        ("testWindowsTarget", testWindowsTarget),
    ]
}

extension IncrementalBuildTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__IncrementalBuildTests = [
        ("testBuildManifestCaching", testBuildManifestCaching),
        ("testIncrementalSingleModuleCLibraryInSources", testIncrementalSingleModuleCLibraryInSources),
    ]
}

extension SwiftCompilerOutputParserTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__SwiftCompilerOutputParserTests = [
        ("testInvalidMessageBytes", testInvalidMessageBytes),
        ("testInvalidMessageInvalidValue", testInvalidMessageInvalidValue),
        ("testInvalidMessageMissingField", testInvalidMessageMissingField),
        ("testInvalidMessageSizeBytes", testInvalidMessageSizeBytes),
        ("testInvalidMessageSizeValue", testInvalidMessageSizeValue),
        ("testParse", testParse),
    ]
}

public func __allTests() -> [XCTestCaseEntry] {
    return [
        testCase(BuildPlanTests.__allTests__BuildPlanTests),
        testCase(IncrementalBuildTests.__allTests__IncrementalBuildTests),
        testCase(SwiftCompilerOutputParserTests.__allTests__SwiftCompilerOutputParserTests),
    ]
}
#endif
