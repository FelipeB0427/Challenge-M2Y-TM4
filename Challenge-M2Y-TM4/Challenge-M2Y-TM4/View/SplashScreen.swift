//
//  SplashScreenView.swift
//  Challenge-M2Y-TM4
//
//  Created by Felipe Brigagão de Almeida on 24/01/22.
//

import SwiftUI

struct SplashScreen: View {
    @State var finishedLoading: Bool = false
    
    var body: some View {
        ZStack {
            HomeView()
            
            ZStack {
                Color("splashBackground")
                    .ignoresSafeArea()
                
                VStack {
                    Image(systemName: "film.fill")
                        .resizable()
                        .foregroundColor(.red)
                        .frame(width: 120, height: 120, alignment: .center)
                        .padding()
                    
                    Text("Challenge Mobile 2 You")
                        .font(.system(.title2))
                        .foregroundColor(.red)
                        .fontWeight(.medium)
                }
            }
            .opacity(finishedLoading ? 0 : 1)
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
                    withAnimation(.easeOut(duration: 0.4)) {
                        finishedLoading = true
                    }
                }
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
