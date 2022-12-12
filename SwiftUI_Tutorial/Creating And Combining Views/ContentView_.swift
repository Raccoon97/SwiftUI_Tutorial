//
//  ContentView.swift
//  SwiftUITutorial
//
//  Created by 강태윤 on 2022/12/12.
//

/*
 
 SwiftUI 에서 View 는 기본적으로 두 개의 구조체를 생성한다.
 1. View Protocol 을 상속받은 View 의 내용과 레이아웃에 대한 구조체
 2. PreviewProvider Protocol 을 상속 받은해당 View 에 대한 미리보기를 보는 구조체

 .forgroundColor(.red) - 색상 변경
 
 VStack/ HStack(alignment: ) - 스택 정렬
 
 Spacer() - 스택 빈 공간 추가
 
 Divider() - 스택 구분선
 
 .padding() - view 여백
 
 .frame - view 너비, 높이
 
 .offset(y: -130) - view 이동 -130 만큼
 
 .ignoresSafeArea(edges: .top) - view 가 SafeArea 를 무시한다.
 
 */

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
        
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text(/*@START_MENU_TOKEN@*/"Joshua Tree Mational Park"/*@END_MENU_TOKEN@*/)
                    Spacer()
                    Text("California")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Decriptive text goes here.")
            }
            .padding()
            
            Spacer()
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
