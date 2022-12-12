//
//  CircleImage.swift
//  SwiftUITutorial
//
//  Created by 강태윤 on 2022/12/12.
//

/*
 
 .clipShape(Circle()) - Image 모양 변경
 
 .overay {
    Circle().stroke(.gray, lineWidth: 4)
 } - 회색 선을 가진 원을 만든 뒤 오버레이로 추가하여 Image 에 테두리 지정
 
 .shadow(radius: 7) - 7 포인트 반경의 그림자 추가
 
 */

import SwiftUI

struct CircleImage: View {
    
    var image: Image
    
    var body: some View {
        image
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
