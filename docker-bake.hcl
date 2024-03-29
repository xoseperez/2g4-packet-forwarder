variable "TAG" { default = "" }
variable "VERSION" { default = "" }
variable "BUILD_DATE" { default = "" }
variable "REGISTRY" { default = "xoseperez/2g4-packet-forwarder" }

group "default" {
    targets = ["arm", "aarch64", "amd64"]
}

target "arm" {
    tags = ["${REGISTRY}:arm-latest"]
    args = {
        "ARCH" = "rpi",
        "TAG" = "${TAG}",
        "VERSION" = "${VERSION}",
        "BUILD_DATE" = "${BUILD_DATE}"
    }
    platforms = ["linux/arm"]
}

target "aarch64" {
    tags = ["${REGISTRY}:aarch64-latest"]
    args = {
        "ARCH" = "aarch64",
        "TAG" = "${TAG}",
        "VERSION" = "${VERSION}",
        "BUILD_DATE" = "${BUILD_DATE}"
    }
    platforms = ["linux/arm64"]
}

target "amd64" {
    tags = ["${REGISTRY}:amd64-latest"]
    args = {
        "ARCH" = "amd64",
        "TAG" = "${TAG}",
        "BUILD_DATE" = "${BUILD_DATE}"
    }
    platforms = ["linux/amd64"]
}

