/*
 * This file is part of the Scandit Data Capture SDK
 *
 * Copyright (C) 2023- Scandit AG. All rights reserved.
 */

import ScanditBarcodeCapture
import ScanditFrameworksCore

struct SparkScanDefaults: DefaultsEncodable {
    let feedbackDefaults: SparkScanFeedbackDefaults
    let viewDefaults: DefaultsSparkScanView
    let settingsDefaults: SparkScanSettingsDefaults

    public static let shared = {
        SparkScanDefaults(feedbackDefaults: SparkScanFeedbackDefaults(feedback: .default),
                          viewDefaults: DefaultsSparkScanView(viewSettings: SparkScanViewSettings()),
                          settingsDefaults: SparkScanSettingsDefaults(sparkScanSettings: SparkScanSettings()))
    }()

    func toEncodable() -> [String: Any?] {
        [
            "Feedback": feedbackDefaults.toEncodable(),
            "SparkScanSettings": settingsDefaults.toEncodable(),
            "SparkScanView": viewDefaults.toEncodable()
        ]
    }
}
