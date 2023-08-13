//
//  ContentView.swift
//  second
//
//  Created by GnL on 2023/8/13.
//

import SwiftUI

struct ContentView: View {
    // 使用 @Environment 获取垂直状态
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var body: some View {
        VStack(spacing: 20) {
            VStack {
                Text("Instant Developer")
                    .font(.system(.largeTitle))
                    .fontWeight(.bold)
                    .foregroundColor(.purple)
                
                Text("Get helpes immediately from dev experts")
            }
            .padding(.top, 30)
            
            // 使用 HStack 来水平排列图片
            HStack(alignment: .bottom, spacing: 10 ) {  // 让图片底部对齐
                Image("user1")
                    .resizable() // 占满屏幕
                    .scaledToFit() // 保持原来的长宽比
                    // .aspectRatio(contentMode: .fit) // 和上一行效果相同
                
                Image("user2")
                    .resizable() // 占满屏幕
                    .scaledToFit() // 保持原来的长宽比
                
                Image("user3")
                    .resizable() // 占满屏幕
                    .scaledToFit() // 保持原来的长宽比
            }
            .padding(.horizontal, 20)
            
            HStack{
                Text("Any problems? Get")
                Button {
                    print("click help btn")
                } label: {
                    Text("help")
                        .underline()
                }
            }
            .padding(.horizontal, 20)
            
            Spacer() // 加入留白，会占领视图中的其他可用空间
            
            if verticalSizeClass == .compact {
                HStack {
                    SignUpBtnView()
                    LoginBtnView()
                }
                .padding()
            } else {
                VStack {
                    SignUpBtnView()
                    LoginBtnView()
                }
                .padding()
            }
            
            
            
            
        }
    }
}

#Preview {
    ContentView()
}

struct SignUpBtnView: View {
    var body: some View {
        Button(action: {
            print("click sign-up btn")
        }, label: {
            Text("Sign Up")
                .font(.title2)
                .fontWeight(.medium)
        })
        .padding()
        .frame(width: 200) // 限制宽度 200
        .foregroundColor(.white)
        .background(Color.purple)
        .cornerRadius(10)
    }
}

struct LoginBtnView: View {
    var body: some View {
        Button(action: {
            print("click log-in btn")
        }, label: {
            Text("Log In")
                .font(.title2)
                .fontWeight(.medium)
        })
        .padding()
        .frame(width: 200)
        .foregroundColor(.white)
        .background(Color.gray)
        .cornerRadius(10)
    }
}
