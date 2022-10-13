//
//  rotationgesture.swift
//  longpressgesture
//
//  Created by dip dutt on 10/11/22.
//

import SwiftUI

struct rotationgesture: View {
    
    @State var angle: Angle = Angle(degrees: 0)
    var body: some View {
        Text("Hello, World!")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .foregroundColor(Color.white)
            .padding(50)
            .background(Color.blue.cornerRadius(10))
            .rotationEffect(angle)
        
            .gesture(
                
                
                RotationGesture()
                    .onChanged { rotationindegree in
                        
                        
                        angle = rotationindegree
                        
                        
                        print(angle)
                        
                        
                        
                        
                    }
                
                    .onEnded() { value in
                        
                        withAnimation(.spring()) {
                            
                            angle = Angle(degrees: 0)
                            
                            print(angle)
                            
                            
                        }
                        
                        
                        
                        
                        
                        
                    }
            
            
            
            
            
            
            
            )
            
            
            
    }
}

struct rotationgesture_Previews: PreviewProvider {
    static var previews: some View {
        rotationgesture()
    }
}
