//
//  DashboardMainView.swift
//  PetIAIOS
//
//  Created by Felipe Lima on 25/06/24.
//

import SwiftUI

struct DashboardMainView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Form {
//                    Section {
//                        LinearGradient(
//                            colors: [.red, .blue, .green, .yellow],
//                            startPoint: .leading,
//                            endPoint: .trailing
//                        )
//                        .mask(
//                            // 1
//                            Text("Do you know Gemini?")
//                                .font(Font.system(size: 30, weight: .bold))
//                                .multilineTextAlignment(.center)
//                        )
//                        
//                        Text("Acesse os modelos de IA mais avançados e recursos exclusivos do Google, agora com uma janela de contexto com 1 milhão de tokens")
//                    }
                }
                MainView()
            }.toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    HStack {
                        Image(systemName: "calendar")
                    }
                }
            }
        }
    }
}

#Preview {
    DashboardMainView()
}
