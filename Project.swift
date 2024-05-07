import ProjectDescription

let project = Project(
    name: "TuistExample",
    targets: [
        .target(
            name: "TuistExample",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.TuistExample",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchStoryboardName": "LaunchScreen.storyboard",
                ]
            ),
            sources: ["TuistExample/Sources/**"],
            resources: ["TuistExample/Resources/**"],
            dependencies: [.external(name: "Alamofire")]
        ),
        .target(
            name: "TuistExampleTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.TuistExampleTests",
            infoPlist: .default,
            sources: ["TuistExample/Tests/**"],
            resources: [],
            dependencies: [.target(name: "TuistExample")]
        ),
    ]
)
