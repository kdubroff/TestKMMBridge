// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/kdubroff/TestKMMBridge/co/nlsinc/kmmbridgekickstart/allshared-kmmbridge/0.1.4/allshared-kmmbridge-0.1.4.zip"
let remoteKotlinChecksum = "29aa7748f0a2e2016b7b5d53dae6fd970f6866feefb3b33c381286ede1e26cfa"
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