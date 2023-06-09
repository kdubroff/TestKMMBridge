// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/kdubroff/TestKMMBridge/co/nlsinc/kmmbridgekickstart/allshared-kmmbridge/0.1.6/allshared-kmmbridge-0.1.6.zip"
let remoteKotlinChecksum = "fadd272cc200edb97971c1469a80a930e91a8198788ad6a17a12e70d58cb2b01"
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