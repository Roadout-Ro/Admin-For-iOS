import SwiftUI
import GoogleMaps

struct GoogleMapsView: UIViewRepresentable {
    @State var latitude : Double
    @State var longitude : Double
    @State var zoom : Float
    
    func makeUIView(context: Self.Context) -> GMSMapView {
        let camera = GMSCameraPosition.camera(withLatitude: latitude, longitude: longitude, zoom: zoom)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        return mapView
    }
    
    func updateUIView(_ mapView: GMSMapView, context: Context) {
        
    }
}

struct GoogleMapsView_Previews: PreviewProvider {
    static var previews: some View {
        GoogleMapsView(latitude: 0, longitude: 0, zoom: 0)
    }
}
