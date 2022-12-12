//
//  MapView.swift
//  SwiftUITutorial
//
//  Created by 강태윤 on 2022/12/12.
//

/*
 
 import MapKit - Map 을 사용하기 위한 프레임워크
 
 @State - 값을 읽고 쓰는 수단 C 의 포인터와 유사하다
        - 뷰가 접근 가능하도록 값을 갖고 있는 프로퍼티 래퍼
 
 $region - @State 변수에 $ 접두사를 사용하면 값에 대한 참조와 같다
 
 */

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion()
    
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
                setRegion(coordinate)
            }
    }
    
    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(center: coordinate, span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}
