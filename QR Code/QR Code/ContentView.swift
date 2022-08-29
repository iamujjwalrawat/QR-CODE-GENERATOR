//
//  ContentView.swift
//  QR Code
//  Created by Ujjwal Rawat on 26/07/22.
//


import SwiftUI
//this programme generates qr code.:)
struct ContentView: View {
    var body: some View {
        VStack{
        Text("Hello, world!")
            QRCodeView(url: "https://www.linkedin.com/in/ujjwal-r-24441b235")
    }
}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
