//
//  draggesturefile.swift
//  longpressgesture
//
//  Created by dip dutt on 10/11/22.
//

import SwiftUI

struct draggesturefile: View {
    
    @State var ofset:CGSize = .zero
    
    var body: some View {
        
        
        ZStack {
            
            
            VStack {
                
                
                Text("\(ofset.width)")
                
                    Spacer()
                
                
                
            }
            
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width:300, height:500)
            
                .offset(ofset)
                .scaleEffect(scaling())
                .rotationEffect(Angle(degrees:rotation()))
        
                .gesture(
                    
                    
                    DragGesture()
                        .onChanged { dragStartingvalue in
                            
                            withAnimation(.spring()) {
                                
                                ofset = dragStartingvalue .translation
                                
                            }
                            
                            
                        }
                    
                    
                        .onEnded{ DragGestureendValue in
                            
                            
                            withAnimation(.spring()) {
                                
                                
                                
                                
                                ofset = .zero
                                
                                
                            }
                            
                            
                            
                        }
                    
                    
                    
                    
                    
                )
            
            
        }
        
    }
    
    
    func scaling() -> CGFloat {
        
        
        let max = UIScreen.main.bounds.width / 2
        
        let currentamount  = abs(ofset.width)
        
        let percetage = currentamount / max
        
        return 1.0 - min(percetage, 0.5)
        
        
        
        
    }
    
    
    func rotation() ->Double {
        
        let max = UIScreen.main.bounds.width / 2
        
        let currentamount  = ofset.width
        
    let percetange = currentamount / max
        
        let percentageDouble =  Double(percetange)
        
        let maxangle:Double = 10
        
        return  percentageDouble * maxangle
        
        
        
    }
}

struct draggesturefile_Previews: PreviewProvider {
    static var previews: some View {
        draggesturefile()
    }
}
