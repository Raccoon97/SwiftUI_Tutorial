//
//  LandmarksApp.swift
//  SwiftUITutorial
//
//  Created by 강태윤 on 2022/12/12.
//

/*
 
 SwiftUI App Life Cycle 을 사용하는 App 이다.
 App Protocol 을 상속받은 구조체이다.
 구조체의 body 는 하나 이상의 씬을 return 한다.
 @main 은 App 의 진입점을 의미한다.
 
 */

import SwiftUI

@main
struct LandmarksApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    

}
