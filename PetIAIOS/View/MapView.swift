//
//  MapView.swift
//  PetIAIOS
//
//  Created by Felipe Lima on 25/06/24.
//

import SwiftUI
import MapKit
import CoreLocation

struct MapView: View {
    let locationManager = CLLocationManager()
    
    var body: some View {
        NavigationStack {
            VStack {
                
                Map() {
                }.padding([.bottom]).edgesIgnoringSafeArea([.top])
                    .onAppear {
                        locationManager.requestWhenInUseAuthorization()
                    }
            }
            
            MainView()
        }
    }
}

#Preview {
    MapView()
}
