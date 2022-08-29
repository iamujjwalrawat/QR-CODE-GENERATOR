//
//  QRCodeView.swift
//  QR Code
//
//  Created by Ujjwal Rawat on 26/07/22.
//

import Foundation
import SwiftUI
import CoreImage.CIFilterBuiltins

struct QRCodeView : View {
let context = CIContext()
    let filter = CIFilter.qrCodeGenerator()
    var url : String
    
    var body: some View {
    Image(uiImage: generateQRCodeImage(url))
            .interpolation(.none)
            .resizable()
            .scaledToFill()
            .frame(width: 150, height: 150, alignment: .center)
    }

    func generateQRCodeImage(_ url : String)-> UIImage {
        let data = Data(url.utf8)
        filter.setValue(data, forKey: "inputMessage")
    
        if let qrCodeImage = filter.outputImage {
            if let qrCodeCGImage = context.createCGImage(qrCodeImage, from: qrCodeImage.extent) {
                return UIImage(cgImage: qrCodeCGImage)
            }
        } 
            return UIImage(systemName: "xmark") ?? UIImage()
        }
    }

        
