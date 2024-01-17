//
//  AFButton.swift
//  Apple-FrameWorks
//
//  Created by 蕭張媛 on 2024/1/17.
//

import SwiftUI

struct AFButton: View {
    
    var title : String
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 300, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .background( .red)
            .foregroundStyle(_: Color.white)
            //.cornerRadius(10)
            .clipShape(Capsule())
    }
}

#Preview {
    AFButton(title : "Test Title")
}
