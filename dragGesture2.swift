//
//  dragGesture2.swift
//  longpressgesture
//
//  Created by dip dutt on 10/11/22.
//

import SwiftUI

struct dragGesture2: View {
    
    
    @State var offsetamount:CGFloat = UIScreen.main.bounds.height * 0.85
    @State var currentoffsety:CGFloat = 0
    @State var endingoffset:CGFloat = 0
    
    var body: some View {
        
        
        
        
        
        ZStack  {
            
            
            Color.green.ignoresSafeArea()
            
            mysignupview()
                .offset(y:offsetamount)
                .offset(y:currentoffsety)
                .offset(y: endingoffset)
                .gesture(
                    
                    DragGesture()
                    
                    
                        .onChanged { value in
                            
                            
                            withAnimation(.spring()) {
                                
                                
                                currentoffsety = value.translation.height
                                
                                
                            }
                            
                            
                            
                            
                            
                        }
                    
                        .onEnded { value in
                            
                            withAnimation(.spring()) {
                                
                                if currentoffsety < -150  {
                                    
                                    
                                    endingoffset = -offsetamount
                                    
                                    
                                
                                    
                                }
                                
                                else if endingoffset != 0 && currentoffsety > 150 {
                                    
                                    endingoffset = 0
                                    
                                    
                                    
                                    
                                }
                                
                                
                                
                            currentoffsety = 0
                                    
                                    
                            
                            }
                            
                            
                        }
                    
                    
                    
                )
            
            Text("\(currentoffsety)")
            Text("\(endingoffset)")
            
            
                .ignoresSafeArea(edges: .bottom)
        }
    }
    
    
}

struct dragGesture2_Previews: PreviewProvider {
    static var previews: some View {
        dragGesture2()
    }
}



struct mysignupview: View {
    
    
    var body : some View {
        
        
        
        
        
        
        
        VStack(spacing: 20) {
            
            
            
            Image(systemName: "chevron.up")
            .padding()
            Text("Sign up")
            .font(.headline)
            .fontWeight(.semibold)
            
            Image(systemName: "flame.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
            Text("This is the description of our app and this is also my favorite swiftui course, so i recomned to every one follow it")
                .multilineTextAlignment(.center)
            
            
            Text("Create An Account")
                .foregroundColor(.white)
                .font(.headline)
                .padding()
                .padding(.horizontal)
                .background(Color.black.cornerRadius(10))
            
            
            Spacer()
            
        }
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(30)
        
        
        
        
        
        
        
        
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
