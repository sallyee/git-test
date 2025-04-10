//
//  ContentView.swift
//  Wild_Howard
//
//  Created by 수빈 on 3/24/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var x:CGFloat = 0
    @State var y:CGFloat = 0
    
    var body: some View {
        ZStack{
            Color.green
                .ignoresSafeArea()
            
            VStack {
                Text("야생에 하워드가 나타났다!")
                    .font(.largeTitle)
                    .padding()
                Text("X좌표: \(x)")
                Text("Y좌표: \(y)")
                
                Spacer()
                
                Image("howard")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                    .offset(x: x, y: y)
                
                Spacer()
                
                Button {
                    // 동작
                    withAnimation {
                        y = y - 50
                    }
                } label: {
                    Image(systemName: "chevron.up")
                        .font(.largeTitle)
                        .frame(width:  80, height:  60)
                }
                .buttonStyle(.borderedProminent)
                .tint(.orange)
                
                HStack {
                    Button {
                        // 동작
                        withAnimation {
                            x = x - 50
                        }
                    } label: {
                        Image(systemName: "chevron.left")
                            .font(.largeTitle)
                            .frame(width:  80, height:  60)
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.orange)
                    
                    Button {
                        // 동작
                        withAnimation {
                            y = y + 50
                        }
                    } label: {
                        Image(systemName: "chevron.down")
                            .font(.largeTitle)
                            .frame(width:  80, height:  60)
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.orange)
                    
                    Button {
                        // 동작
                        withAnimation {
                            x = x + 50
                        }
                    } label: {
                        Image(systemName: "chevron.right")
                            .font(.largeTitle)
                            .frame(width:  80, height:  60)
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.orange)
                    
                }
            }

        }
    }
}

#Preview {
    ContentView()
}
