//
//  ContentView.swift
//  Login Page
//
//  Created by Hojin Moon on 6/1/23.
//
import SwiftUI
struct ContentView: View {
    @State private var pin = ""
    
    var body: some View {
        VStack(spacing: 0 ) {
            Rectangle()
                .fill(Color.blue)
                .frame(maxHeight: .infinity)
                .overlay(
                    Text("인증번호를 입력하세요.")
                        .foregroundColor(.white)
                        .font(.title)
                        .padding()
                )
            Rectangle()
                . fill(Color.blue)
                .overlay(
                    HStack() {
                        ForEach(0..<4) { index in
                            Rectangle()
                                .fill(Color.white)
                                .frame(width: 50, height: 50)
                                .opacity(index < pin.count ? 1 : 1)
                        }
                    }
                    
                )
            VStack(spacing: 0) {
                ForEach(0..<3) { row in
                    HStack(spacing: 0) {
                        Spacer()
                        ForEach(1...3, id: \.self) { number in
                            Text("\(row * 3 + number)")
                                .font(.custom("Sample", size: 50))
                                .foregroundColor(.gray)
                            Spacer()
                        }
                    }
                }
                HStack(){
                    Spacer()
                    Text("<--")
                        .font(.custom("Sample", size: 50))
                        .foregroundColor(.gray)
                    Spacer()
                    Text("0")
                        .font(.custom("Sample", size: 50))
                        .foregroundColor(.gray)
                    Spacer()
                    Spacer()
                    Spacer()
                }
                
                
            }
        }
    }
}
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
