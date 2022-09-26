//
//  Extensions.swift
//  AppCopa
//
//  Created by user218260 on 9/26/22.
//

import UIKit

extension UIFont {
  public enum fontType: String {
    case regular = ""
    case kFontBlackItalic = "Montserrat-BlackItalic"
    case kFontExtraBoldItalic = "Montserrat-ExtraBoldItalic"
    case kFontBoldItalic = "Montserrat-BoldItalic"
    case kFontSemiBoldItalic = "Montserrat-SemiBoldItalic"
    case kFontMediumItalic = "Montserrat-MediumItalic"
    case kFontItalic = "Montserrat-Italic"
    case kFontLightItalic = "Montserrat-LightItalic"
    case kFontBlack = "Montserrat-Black"
    case kFontExtraLightItalic = "Montserrat-ExtraLightItalic"
    case kFontThinItalic = "Montserrat-ThinItalic"
    case kFontExtraBold = "Montserrat-ExtraBold"
    case kFontBold = "Montserrat-Bold"
    case kFontSemiBold = "Montserrat-SemiBold"
    case kFontMedium = "Montserrat-Medium"
    case kFontRegular = "Montserrat-Regular"
    case kFontLight = "Montserrat-Light"
    case kFontExtraLight = "Montserrat-ExtraLight"
    case kFontThin = "Montserrat-Thin"
}
    
static func setFont(_ type: fontType = .regular, size: CGFloat = UIFont.systemFontSize) -> UIFont {
    return UIFont(name: type.rawValue, size: size) ?? "System Font"
    }
 }
