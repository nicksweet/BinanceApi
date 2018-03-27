// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.
//
//  Created by Nick Sweet on 3/27/18.
//

import PackageDescription

let package = Package(
	name: "BinanceApi",
	products: [
		.library(
			name: "BinanceApi",
			targets: ["BinanceApi"]),
		],
	dependencies: [
		.package(url: "https://github.com/IBM-Swift/CommonCrypto.git", from: "1.0.0"),
		.package(url: "https://github.com/Alamofire/Alamofire.git", from: "4.7.0"),
	],
	targets: [
		.target(
			name: "BinanceApi",
			dependencies: ["CommonCrypto", "Alamofire"],
			path: "Sources"),
		.testTarget(
			name: "BinanceApiTests",
			dependencies: ["BinanceApi"],
			path: "Tests"),
		]
)
