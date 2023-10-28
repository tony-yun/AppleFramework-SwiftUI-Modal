//
//  FrameworkDetailView.swift
//  AppleFramework-SwiftUI
//
//  Created by 윤태웅 on 10/27/23.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    @StateObject var viewModel: FrameworkDetailViewModel
    
    // 창 닫기 환경변수 설정
    //    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            Image(viewModel.framework.imageName)
                .resizable()
                .frame(width: 80, height: 80)
            Text(viewModel.framework.name)
                .font(.system(size: 24, weight: .bold))
            Text(viewModel.framework.description)
            
            Spacer() // 버튼을 화면 하단에 고정시키기 위함
            Button(action: {
                //   presentationMode.wrappedValue.dismiss() // 창닫기
            }, label: {
                Text("Learn More")
                    .frame(maxWidth: .infinity, minHeight: 80) // 프레임을 label에 줘야 전체 터치가능함.
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(.white)
            })
            .background(Color.blue)
            .clipShape(.capsule)
        }.padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 30))
    }
}

#Preview {
    FrameworkDetailView(viewModel: FrameworkDetailViewModel(framework: AppleFramework.list[0]))
}
