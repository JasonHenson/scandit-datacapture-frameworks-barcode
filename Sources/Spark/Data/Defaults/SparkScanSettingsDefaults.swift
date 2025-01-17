/*
 * This file is part of the Scandit Data Capture SDK
 *
 * Copyright (C) 2023- Scandit AG. All rights reserved.
 */

import ScanditBarcodeCapture
import ScanditFrameworksCore

struct SparkScanSettingsDefaults: DefaultsEncodable {
    let sparkScanSettings: SparkScanSettings

    func toEncodable() -> [String: Any?] {
        [
            "codeDuplicateFilter": Int(sparkScanSettings.codeDuplicateFilter * 1000),
            "locationSelection": sparkScanSettings.locationSelection.jsonString,
            "singleBarcodeAutoDetection": sparkScanSettings.singleBarcodeAutoDetection
        ]
    }
}
