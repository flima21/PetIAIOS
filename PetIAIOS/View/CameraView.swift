//
//  CameraView.swift
//  PetIAIOS
//
//  Created by Felipe Lima on 25/06/24.
//

import SwiftUI
import PhotosUI

struct CameraView: View {
    @State private var showCamera = false
    @State private var selectedImage: UIImage?
    @State var image: UIImage?
    
    var body: some View {
        NavigationStack {
            VStack {
//                if let selectedImage{
//                    Image(uiImage: selectedImage)
//                        .resizable()
//                        .scaledToFit()
//                }
//                
//                Button("Open camera") {
//                    self.showCamera.toggle()
//                }
//                .fullScreenCover(isPresented: self.$showCamera) {
//                    accessCameraView(selectedImage: self.$selectedImage)
//                }
            }
        }.navigationBarBackButtonHidden(true)
    }
}

#Preview {
    CameraView()
}
