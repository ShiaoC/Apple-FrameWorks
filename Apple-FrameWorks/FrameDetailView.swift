//
//  FrameDetailView.swift
//  Apple-FrameWorks
//
//  Created by 蕭張媛 on 2024/1/17.
//

import SwiftUI

struct FrameDetailView: View {
    var framework : Framework
    @Binding var isShowingDetailView : Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                
                Button{
                    isShowingDetailView = false
                }label: {
                    Image(systemName: "xmark")
                        .foregroundStyle(_: Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }
            .padding()
            
            Spacer()
            
            FrameTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button{
                isShowingSafariView = true
            } label: {
                AFButton(title: "Learn More")
            }
            
            Spacer()
        }
        .sheet(isPresented: $isShowingSafariView, content: {
            SafariView(url:URL(string:framework.urlString) ?? URL(string:"www.apple.com")!)
        })
    }
}

#Preview {
    FrameDetailView(framework: MockData.sampleFramework,
                    isShowingDetailView: .constant(false))
}
