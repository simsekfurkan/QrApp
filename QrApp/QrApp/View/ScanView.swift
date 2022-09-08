//
//  ScanView.swift
//  QrApp
//
//  Created by Onur Şimşek on 6.09.2022.
//

import SwiftUI

struct ScanView: View {
    var body: some View {
        //Rectangle 5
        ZStack {
            HStack{
                    RoundedRectangle(cornerRadius: 5)
                        .fill(Color(#colorLiteral(red: 0.8509804010391235, green: 0.8509804010391235, blue: 0.8509804010391235, alpha: 1)))
                        .frame(width: 120, height: 5)
                        .padding(.leading,15)
                        .frame(maxWidth:.infinity,  maxHeight: .infinity, alignment: .top)
                        

                    Image(systemName: "archivebox.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .padding(.trailing, 30)
                        .frame(maxWidth:0,  maxHeight: .infinity, alignment: .topTrailing)
                        
                        
                    .foregroundColor(Color(#colorLiteral(red: 0.9960784316062927, green: 0.4901960790157318, blue: 0.3333333432674408, alpha: 1)))
                
                }
                
                    
                    
            
            
            
                //Scan OR code
                Text("Scan QR code")
                .padding(.top,20)
                    .font(.headline)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth:.infinity,maxHeight: .infinity,alignment: .top)
                //Place qr code inside the f...
                Text("Place qr code inside the frame to scan please\navoid shake to get results quickly")
                .padding(.top,60)
                .frame(maxWidth:.infinity,maxHeight: .infinity,alignment: .top)
                    .font(.custom("Inter Medium", size: 10)).foregroundColor(Color(#colorLiteral(red: 0.73, green: 0.73, blue: 0.73, alpha: 1))).lineSpacing(7).multilineTextAlignment(.center)
                 
                
                
                    
            
           
            
                //bi:qr-code-scan
                
              Image(systemName:"qrcode.viewfinder")
                    
                    .resizable()
                    .frame(width: 180, height: 180)
                    .frame(maxWidth: .infinity, maxHeight: 180, alignment: .center)
                    .symbolRenderingMode(.palette)
                    .foregroundStyle(.black,Color(#colorLiteral(red: 0.9960784316062927, green: 0.4901960790157318, blue: 0.3333333432674408, alpha: 1)))
                //Scanning Code...
                Text("   Scanning Code...").font(.custom("Inter Regular", size: 12)).foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.55)))
             
                .frame(width: 120.0, height: 120.0)
                .frame(maxWidth:.infinity,  maxHeight:.infinity, alignment: .center)
                .padding(.top,230)
            
                HStack(spacing: 19){
                
                Image(systemName: "photo.on.rectangle")
                Image(systemName: "doc.text.fill")
                Image(systemName: "bolt.fill")
                        
                
                }.frame(maxWidth:.infinity,  maxHeight:.infinity, alignment: .center)
                .padding(.top,300)
             
                VStack(alignment: .trailing, spacing: 100) {
                    //Place Camera Code
                    Text("Place Camera Code").font(.custom("Inter Bold", size: 16)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .background(RoundedRectangle(cornerRadius: 8)
                                .fill(Color(#colorLiteral(red: 0.9960784316062927, green: 0.4901960790157318, blue: 0.3333333432674408, alpha: 1)))
                                        
                            .frame(width: 319, height: 58))
                            .frame(maxWidth:.infinity,  maxHeight:.infinity, alignment: .bottom)
                            .padding(.bottom,90)
                           
                            
                            
                
                
            }
        }
    }
}

struct ScanView_Previews: PreviewProvider {
    static var previews: some View {
        ScanView()
    }
}
