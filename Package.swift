// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let sources: [String] = [
    "BranchProtection",
    "CheckRunSuite",
    "CodeScanningAlert",
    "CommitComment",
    "CreateDelete",
    "DependabotAlert",
    "DeployKey",
    "Deployments",
    "Discussions",
    "Fork",
    "GithubAppAuthorization",
    "Gollum",
    "Installation",
    "Issues",
    "Label",
    "MarketplacePurchase",
    "Member",
    "Membership",
    "MergeGroup",
    "Meta",
    "Milestone",
    "Organization",
    "OrgBlock",
    "Package",
    "Page",
    "Ping",
    "Project",
    "ProjectCard",
    "Public",
    "PullRequest",
    "Push",
    "RegistryPackage",
    "Release",
    "Repository",
    "SecretScanningAlert",
    "SecurityAdvisory",
    "Sponsorship",
    "Star",
    "Status",
    "Team",
    "User",
    "Watch",
    "Workflows"
]

let products: [Product] = sources.map { source in
    return .library(name: "\(source)", targets: ["\(source)"])
}

let targets: [Target] = sources.map { source in
    return .target(
        name: "\(source)",
        dependencies: [ .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime") ],
        plugins: [ .plugin(name: "OpenAPIGenerator", package: "swift-openapi-generator") ]
    )
}

let testTargets: [Target] = [
    .testTarget(name: "Tests", dependencies: [ "Push", "Workflows" ]),
]

let package = Package(
    name: "github-webhooks",
    platforms: [
        .macOS(.v10_15)
    ],
    products: products,
    
    dependencies: [
        .package(url: "https://github.com/apple/swift-openapi-generator", exact: "1.10.2"),
        .package(url: "https://github.com/apple/swift-openapi-runtime", exact: "1.8.2")
    ],
    
    targets: targets + testTargets
)
