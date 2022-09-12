//
//  FirstView.swift
//  QrApp
//
//  Created by Onur Şimşek on 6.09.2022.


import SwiftUI

struct FirstView: View {
    @State private var showScanView = false
    var body: some View {
        VStack{
            Spacer()
            Image(systemName: "qrcode")
                .resizable()
                .frame(width: 40 , height: 40)
                .foregroundColor(Color.red)
                .overlay(Circle()
                    .strokeBorder(lineWidth:0 )
                    .background(Circle()
                        .foregroundColor(Color(red: 0.9725490196078431, green: 0.9176470588235294, blue: 0.9058823529411765, opacity: 0.532)))
                        
                    .frame(width: 176, height: 185))
            
            Spacer()
            //Pleace give access your Ca...
            Text("Pleace give access your Camera so that we can \nscan and provide you what is the \ninside the cod")
                
                .font(.custom("Inter Medium", size: 13))
                .foregroundColor(Color(#colorLiteral(red: 0.73, green: 0.73, blue: 0.73, alpha: 1)))
                .multilineTextAlignment(.center)
                Spacer()
//            Button
                Button (action: {
                    showScanView.toggle()
                }){
                    //Rectangle 2
                    //Let’s Get Started
                    Text("Let’s Get Started")
                        .font(.custom("Inter Bold", size: 16)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .background(//Rectangle 2
                            RoundedRectangle(cornerRadius: 8)
                                .fill(Color(#colorLiteral(red: 0.9960784316062927, green: 0.4901960790157318, blue: 0.3333333432674408, alpha: 1)))
                                .frame(width: 319, height: 58))}
                        .sheet(isPresented: $showScanView, onDismiss: {
                            print("Code executed when the sheet dismisses")
                        }) {
                            ScanView()
                        }
                    
                    
            
            
                
//                .sheet(isPresented: $showScanView) {
//                        ScanView()
//                }
            
            
            Spacer()
            

        }
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
