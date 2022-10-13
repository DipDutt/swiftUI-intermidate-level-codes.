//
//  longpressgesture.swift
//  longpressgesture
//
//  Created by dip dutt on 10/11/22.
//

import SwiftUI

struct longpressgesture: View {
    
    @State var isaction:Bool = false
    @State var issucess:Bool = false
    
    var body: some View {
        
        
        VStack {
            
            
            Rectangle()
                .fill( issucess ? Color.green : Color.blue)
                .frame(maxWidth: isaction ? .infinity : 0 )
                .frame(height: 55)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.gray)
            
            
            HStack {
                Text("Click Here")
                    .foregroundColor(Color.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
                    .onLongPressGesture(minimumDuration: 1.0, maximumDistance: 50) { (ispressing) in
                        
                        
                        // start of press -> min duration
                        
                        
                        if ispressing {
                            
                            withAnimation(.easeInOut(duration: 1.0)) {
                                
                                
                                isaction = true
                            }
                            
                            
                           
                            
                            
                        }
                        
                        
                        else {
                            
                            
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                                
                                
                                
                                if !issucess {
                                    
                                    withAnimation(.easeInOut) {
                                        
                                        
                                        
                                        isaction = false
                                    }
                                    
                                    
                                    
                                    
                                }
                                
                                
                                
                                
                                
                                
                            }
                        }
                        
                        
                        
                    } perform:{
                        
                        
                        // at min duration
                
                
                        withAnimation(.easeInOut) {
                            
                            
                            issucess = true
                        }
                        
                        
                    }
                
                
                
                Text("Reset")
                    .foregroundColor(Color.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
                
                
                    .onTapGesture {
                        
                        
                        isaction = false
                        issucess = false
                    }
                
                
                
            }
            
        }
      
    }
}

struct longpressgesture_Previews: PreviewProvider {
    static var previews: some View {
        longpressgesture()
    }
}
