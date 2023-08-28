require "json"

name = "scandit-datacapture-frameworks-barcode"

Pod::Spec.new do |s|
  s.name                    = name
  s.version                 = "6.19.0-beta.0"
  s.summary                 = "Scandit Data Capture SDK for React Native"
  s.homepage                = "https://www.scandit.com"
  s.license                 = "Apache-2.0"
  s.author                  = { "Scandit" => "support@scandit.com" }
  s.platforms               = { :ios => "13.0" }
  s.source                  = { :git => "git@github.com:JasonHenson/scandit-datacapture-frameworks-barcode.git" }
  s.swift_version           = "5.7"
  s.source_files            = "Sources/**/*.{h,m,swift}"
  s.requires_arc            = true
  s.module_name             = "ScanditFrameworksBarcode"
  s.header_dir              = "ScanditFrameworksBarcode"

  s.dependency 'ScanditBarcodeCapture', '6.19.0-beta.0'
    
  s.dependency "scandit-datacapture-frameworks-core", "6.19.0-beta.0"
end
