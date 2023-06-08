// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/kdubroff/TestKMMBridge/co/nlsinc/kmmbridgekickstart/allshared-kmmbridge/0.1.5/allshared-kmmbridge-0.1.5.zip"
let remoteKotlinChecksum = "ff96e4b35356688ebb35d25343e554b8ed6e0bf3b5238ae9050c58fa2083135b"
let packageName = "allshared"

let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: packageName,
            targets: [packageName]
        ),
    ],
    targets: [
        .binaryTarget(
            name: packageName,
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        )
        ,
    ]
)