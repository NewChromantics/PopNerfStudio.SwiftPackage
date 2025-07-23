// swift-tools-version: 5.9

import PackageDescription

let package = Package(
	name: "PopNerfStudio",
	platforms: [
		//	todo: reduce these
		.iOS(.v16),		//	Regex
		.macOS(.v13),	//	Regex
		.visionOS(.v1),
		.tvOS(.v16)
	],
	products: [
		.library(
			name: "PopNerfStudio",
			targets: [ "PopNerfStudio" ]
		)
	],
	dependencies: [
		.package(
			url: "https://github.com/NewChromantics/PopPly.SwiftPackage",
			branch:"main"
		),
		.package(
			url: "https://github.com/NewChromantics/PopCommon.SwiftPackage",
			branch:"main"
		)
	],
	targets: [
		.target(
			name: "PopNerfStudio",
			dependencies:
				[
					.product(name: "PopPly", package: "PopPly.swiftpackage"),
					.product(name: "PopCommon", package: "PopCommon.swiftpackage")
			],
			path: "."
		)
	]
)

