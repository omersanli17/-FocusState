import SwiftUI

struct ContentView: View {
    @State var text = ""
    @FocusState private var klavyeyiKapatma: Bool

    
    
    var body: some View {
        VStack(alignment: .leading,spacing:15){
            TextField("Deneme", text: $text)
                .focused($klavyeyiKapatma)
              
            Button {
                klavyeyiKapatma = false
            } label: {
                Spacer()
                Text("Kaydet")
                
                Spacer()
            }
                .padding()
                .foregroundColor(.white)
                .background(Color.pink)
                .cornerRadius(10)
                
           

        } .padding()
        
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
