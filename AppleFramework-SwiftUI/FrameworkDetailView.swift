//
//  FrameworkDetailView.swift
//  AppleFramework-SwiftUI
//
//  Created by 윤태웅 on 10/27/23.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    @Binding var framework: AppleFramework?
    // 환경변수 설정
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        VStack(spacing: 20) {
            if let framework = framework {
                Image(framework.imageName)
                Text(framework.name)
                Text(framework.description)
            } else {
                Text("Nothing selected.")
            }
            
            Button(action: {
                presentationMode.wrappedValue.dismiss() // 창닫기
            }, label: {
                Text("Button")
            })
            .frame(maxWidth: .infinity, minHeight: 80)
            .background(Color.blue)
            .foregroundColor(.white)
            .clipShape(.capsule)
        }.padding()
    }
}

#Preview {
    FrameworkDetailView(framework: .constant(AppleFramework.list[0]))
}
