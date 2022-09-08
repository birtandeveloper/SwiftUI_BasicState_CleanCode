import SwiftUI

struct StateChangeView: View {
    
    @State var title: String = "Title will Change According to State"
    @State var backgroundColor: Color = .green
    let stackSpacing: Double = 20.0
    
    var body: some View {
        
        ZStack {
            
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            VStack(spacing: stackSpacing) {
                
                ContentView(title: $title)
                ButtonOrangeView(backgroundColor: $backgroundColor, title: $title)
                ButtonBlueView(backgroundColor: $backgroundColor, title: $title)
                ButtonInitialView(backgroundColor: $backgroundColor, title: $title)
            }
            
        }
        
    }
}


struct StateChangeView_Previews: PreviewProvider {
    static var previews: some View {
        
        StateChangeView()
    }
    
}

struct ContentView: View {
    
    @Binding var title: String
    
    var body: some View {
        Text(title).foregroundColor(.white)
    }
}

struct ButtonOrangeView: View {
    
    @Binding var backgroundColor: Color
    @Binding var title: String
    
    var body: some View {
        Button(action: {
            backgroundColor = .orange
            self.title = "Color State is Changed to Orange"
            
        }, label: {
            Text("Color Orange".uppercased()).foregroundColor(.white).padding().background(backgroundColor.cornerRadius(10).shadow(radius: 10))
            
        })
    }
}

struct ButtonBlueView: View {
    
    @Binding var backgroundColor: Color
    @Binding var title: String
    
    
    var body: some View {
        Button(action: {
            backgroundColor = .blue
            self.title = "Color State is Changed to Blue"
            
        }, label: {
            Text("Color Blue".uppercased()).foregroundColor(.white).padding().background(backgroundColor.cornerRadius(10).shadow(radius: 10))
            
        })
    }
}

struct ButtonInitialView: View {
    
    @Binding var backgroundColor: Color
    @Binding var title: String
    
    var body: some View {
        Button(action: {
            backgroundColor = .black
            self.title = "Color State is Changed to Black"
            
        }, label: {
            Text("Color Black".uppercased()).foregroundColor(.white).padding().background(backgroundColor.cornerRadius(10).shadow(radius: 10))
            
        })
    }
}
