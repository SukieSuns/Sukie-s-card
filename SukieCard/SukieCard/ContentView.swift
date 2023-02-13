//
//  ContentView.swift
//  SukieCard
//
//  Created by Administrator on 12/22/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red: 0.18, green: 0.80, blue:0.44).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack {
                Image("IMG_5495").resizable().aspectRatio(contentMode: .fit)
                    .frame(width: 150.0,height: 150.0).clipShape(Circle()).overlay(Circle().stroke(Color.white, lineWidth: 5))
                
                Text("Sukie Sun")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                
                Text("ios developer").font(.body).foregroundColor(Color.white).fontWeight(.bold)
                    .font(.system(size: 30))
                
                Divider()
                
                InfoView(Text:"650-447-****", Image: "phone.fill")
                InfoView(Text: "haiyansun01@gmail.com", Image: "envelope.fill")
            }
            
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        }
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
    struct InfoView: View {
        
        let Text: String
        let Image: String
        
        var body: some View {
            RoundedRectangle(cornerRadius: 20).frame(height: 50).foregroundColor(.white).overlay(
                HStack {
                    SwiftUI.Image(systemName: Image).foregroundColor(.green)
                    
                    SwiftUI.Text(Text).font(.system(size: 20))
                }
            )
        }
    }
}
