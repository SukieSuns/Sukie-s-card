//
//  InfoView.swift
//  SukieCard
//
//  Created by Administrator on 12/23/22.
//

import SwiftUI

struct InfoView: View {
    
    let Text: String
    let Image: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20).frame(height: 50).foregroundColor(.white).overlay(
            HStack {
                SwiftUI.Image(systemName: Image).foregroundColor(.green)
                
                SwiftUI.Text(Text).font(.system(size: 20)).foregroundColor(Color("Info Color"))
            }
        )
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(Text:"Hello!", Image:"phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
