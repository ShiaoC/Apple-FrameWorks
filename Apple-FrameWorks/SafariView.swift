//
//  SafariView.swift
//  Apple-FrameWorks
//
//  Created by 蕭張媛 on 2024/1/17.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable{
    
    let url: URL
    //這兩個程式是必須的
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController{
        SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {
    }
}
