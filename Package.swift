// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/kdubroff/TestKMMBridge/co/nlsinc/kmmbridgekickstart/allshared-kmmbridge/0.1.3/allshared-kmmbridge-0.1.3.zip"
let remoteKotlinChecksum = "e12ef41491a34bd9505d339dd424a77cba8e78ff73dda638f16bcb6f66f166be"
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