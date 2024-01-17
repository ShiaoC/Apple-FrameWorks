//
//  FrameworkGridViewModel.swift
//  Apple-FrameWorks
//
//  Created by 蕭張媛 on 2024/1/17.
//

import Foundation

final class FrameworkGridViewModel: ObservableObject{
    //這邊由切換的程式來輸入＆修改
    var selectedFramework: Framework?{
        didSet{
            isShowingDetailView = true
        }
    }
    
    //如果沒有published，程式就會一直等待輸入，所以需要設定
    @Published var isShowingDetailView = false
    
    
}
