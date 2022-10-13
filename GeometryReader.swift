//
//  GeometryReader.swift
//  longpressgesture
//
//  Created by dip dutt on 10/13/22.
//

import SwiftUI

struct GeometryReadercamp: View {
    
    
    func getPercetnage(geo: GeometryProxy) -> Double {
        
        
        let maxDistance = UIScreen.main.bounds.width / 2
        let currentx = geo.frame(in: .global).midX
        
        let percentage = currentx / maxDistance
        
        
      return Double(1 - percentage)
        
      
        
        
        
        
        
    }
    
    
    
    var body: some View {
        
        ScrollView (.horizontal,showsIndicators: false) {
            
            
            
            
            
            
            
            HStack {
                
                
                
                
                
                ForEach(0..<20) { index in
                    
                    
                    
                    GeometryReader { geometry in
                        
                        RoundedRectangle(cornerRadius: 10)
                            .rotation3DEffect(Angle(degrees: getPercetnage(geo: geometry) * 40), axis: (x: 0.0, y: 1.0, z: 0.0))
                            
                        
                    }
                    
                    // to read the size of rectangles
                                
                    .frame(width: 300, height:300)
                    .padding()
                    
                    
                    
                    
                }
                
                
            }
            
            
            
            
            
            
            
        }
            
            
            
            
            
            
            
            
            
            
        
        
        
//        GeometryReader { geometry in
//
//
//            HStack(spacing:0) {
//
//
//                Rectangle()
//                    .fill(Color.red)
//                    .frame(width: geometry.size.width * 0.66)
//
//
//                Rectangle().fill(Color.blue)
//
//
//
//
//
//
//
//
//
//            }
//
//            .ignoresSafeArea()
//
//
//
//
//        }
//
//
//
            
                
                
                
                
                
                
                
                
            }
    
    // end of the body
            
            
            
        }
            
        
        
        
        


struct GeometryReader_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReadercamp()
    }
}
