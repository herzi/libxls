// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Clibxls",
    products: [
        .library(
            name: "Clibxls",
            targets: ["Clibxls"]),
    ],
    targets: [
        .target(
            name: "Clibxls",
            dependencies: [],
            path: "./src",
            exclude: [
                "xls2csv.c"
            ],
            publicHeadersPath: "include",
            cSettings: [
                .define("HAVE_XLOCALE_H"),
                .define("PACKAGE_VERSION", to: "\"1.6.1\"")
            ]
        ),
    ],
    cLanguageStandard: .c11
)
