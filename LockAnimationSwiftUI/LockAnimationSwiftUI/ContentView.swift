//
//  ContentView.swift
//  LockAnimationSwiftUI
//
//  Created by Shreyas Vilaschandra Bhike on 18/08/21.
//MARK:- The App Wizard
//MARK:- Instagram : theappwizard2408



import SwiftUI

struct ContentView: View {
    
    var body: some View {
            ZStack{
                Color.black.edgesIgnoringSafeArea(.all)
                LockView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


























struct LockView: View {
    
    @State var isLock: Bool = false
    var body: some View {
        
        
        ZStack{
            
            
            ZStack{
            Circle()
                .trim( from: 0, to: 0.5)
                .stroke(isLock ? Color.green : Color.gray, style: StrokeStyle(lineWidth: 20, lineCap: .round))
                .frame(width: 160, height: 160, alignment: .center)
                .rotationEffect(.degrees(isLock ? 270 : 180))
                .animation(Animation.easeInOut(duration: 0.5).repeatCount(1))
                .onAppear() {
                self.isLock.toggle()
                }.offset(x: 0, y: -133)
                
                
            }
            
            
            RoundedRectangle(cornerRadius: 25)
                .foregroundColor(.black)
                .foregroundColor(isLock ? .green : .white)
                .frame(width: 250, height: 250, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
        
        VStack {
            Text( isLock  ? "Unlock" : "Lock")
                .font(.largeTitle)
                .fontWeight(.thin)
                .foregroundColor(isLock ? .green : .white)
                Toggle("", isOn: $isLock)
                .labelsHidden()
        }.padding()
        .overlay(
            RoundedRectangle(cornerRadius: 25)
                .stroke(lineWidth: 5)
                .foregroundColor(isLock ? .green : .white)
                .frame(width: 250, height: 250, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        )
    }
    }
}
