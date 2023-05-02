//
//  ContentView.swift
//  TikTokClone
//
//  Created by Azmat Ali Akhtar on 20/04/2023.
//

import SwiftUI
import AVKit
struct ContentView: View {
    var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    var body: some View {
        Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct Home: View {
    
    @State var index = 0
    @State var top = 0
    @State var data = [
        video(id: 0, player: AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "1", ofType: "mp4")!)), replay: false, isplaying: true),
        
        video(id: 1, player: AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "2", ofType: "mp4")!)), replay: false, isplaying: true),
        
        video(id: 2, player: AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "3", ofType: "mp4")!)), replay: false, isplaying: true),
        
        video(id: 3, player: AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "4", ofType: "mp4")!)), replay: false, isplaying: true),
        
        video(id: 4, player: AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "5", ofType: "mp4")!)), replay: false, isplaying: true),
        video(id: 4, player: AVPlayer(url: URL(string: "https://player.vimeo.com/external/559592025.hd.mp4?s=e8b0366049d6714faa26e795bfb48165dd6f2fc5&profile_id=175&oauth2_token_id=57447761")!), replay: false, isplaying: true),
        video(id: 4, player: AVPlayer(url: URL(string: "https://player.vimeo.com/external/505557796.sd.mp4?s=74e94b462cad514cfbc337970b60df85d5c9c45e&profile_id=139&oauth2_token_id=57447761")!), replay: false, isplaying: true),
        video(id: 4, player: AVPlayer(url: URL(string: "https://player.vimeo.com/external/479728625.sd.mp4?s=f4f886d3d45a0312d8d47419647788178535a2c6&profile_id=164&oauth2_token_id=57447761")!), replay: false, isplaying: true),
        video(id: 4, player: AVPlayer(url: URL(string: "https://player.vimeo.com/external/449630779.sd.mp4?s=797435466654b9b478427eb524edba20eb4ad0fb&profile_id=164&oauth2_token_id=57447761")!), replay: false, isplaying: true),
        video(id: 4, player: AVPlayer(url: URL(string: "https://player.vimeo.com/external/421007054.sd.mp4?s=779ba1511b79ab611c20d4ed01a01d83c1a198dc&profile_id=139&oauth2_token_id=57447761")!), replay: false, isplaying: true),
        video(id: 4, player: AVPlayer(url: URL(string: "https://player.vimeo.com/external/435674472.sd.mp4?s=9908ea387075904282f58443795ae1631fac1e96&profile_id=165&oauth2_token_id=57447761")!), replay: false, isplaying: true),
    ]

    var body: some View {
        ZStack {
            PlayerScrollView(data: self.$data)
            
               
            VStack{
                
                HStack(spacing  : 15){
                    Button {
                        
                        self.top =  0
                        
                    } label: {
                        Text("Following")
                            .foregroundColor(self.top   ==  0 ? .white : .white.opacity(0.4))
                            .fontWeight(self.top   ==  0 ? .bold : .none)
                            .padding(.vertical)
                    }
                    
                    Button {
                        self.top =  1
                       
                        
                    } label: {
                        Text("For you")
                            .foregroundColor(self.top   ==  1 ? .white : .white.opacity(0.4))
                            .fontWeight(self.top   ==  1 ? .bold : .none)
                            .padding(.vertical)
                    }
                    
                }
                Spacer()
                
                HStack{
                    Spacer()
                    VStack(spacing  : 35){
                        Button {
                            
                           
                            
                        } label: {
                            Image("pic")
                                .resizable()
                                .frame(width: 55 , height: 55)
                                .clipShape(Circle())
                        }
                        
                        Button {
                            
                           
                            
                        } label: {
                            VStack(spacing : 8){
                                
                                Image(systemName: "suit.heart.fill")
                                    .font(.title)
                                    .foregroundColor(.white)
                                
                                Text("22k")
                                    .foregroundColor(.white)
                            }
                        }
                        
                        Button {
                            
                           
                            
                        } label: {
                            VStack(spacing : 8){
                                
                                Image(systemName: "message.fill")
                                    .font(.title)
                                    .foregroundColor(.white)
                                
                                Text("1021")
                                    .foregroundColor(.white)
                            }
                        }
                        
                        Button {
                            
                           
                            
                        } label: {
                            VStack(spacing : 8){
                                
                                Image(systemName: "arrowshape.turn.up.right.fill")
                                    .font(.title)
                                    .foregroundColor(.white)
                                
                                Text("Share")
                                    .foregroundColor(.white)
                            }
                        }
                        
                        
                        
                    }
                    .padding(.bottom , 55)
                    .padding(.trailing )
                }
                HStack(spacing : 0){
                    Button {
                        
                        self.index = 0
                        
                    } label: {
                        Image("home")
                            .resizable()
                            
                            .frame(width: 25 , height: 25)
                            .foregroundColor(self.index == 0 ? .white : .white.opacity(0.35))
                            .padding(.horizontal)
                    }
                    
                    
                    Spacer(minLength: 0)
                    
                    Button {
                        
                        self.index = 1
                        
                    } label: {
                        Image("search")
                            .resizable()
                            .frame(width: 25 , height: 25)
                            .foregroundColor(self.index == 1 ? .white : .white.opacity(0.35))
                            .padding(.horizontal)
                    }
                    
                    
                    Spacer(minLength: 0)
                    
                    
                    Button {
                        
                       
                        
                    } label: {
                        Image("upload")
                            .resizable()
                            .frame(width: 50 , height: 35)
                            
                            .padding(.horizontal)
                    }
                    
                    Spacer(minLength: 0)
                    
                    Button {
                        
                        self.index = 2
                        
                    } label: {
                        Image("comment")
                            .resizable()
                            .frame(width: 25 , height: 25)
                            .foregroundColor(self.index == 2 ? .white : .white.opacity(0.35))
                            .padding(.horizontal)
                    }
                    
                    
                    Spacer(minLength: 0)
                    
                    
                    Button {
                        
                        self.index = 3
                        
                    } label: {
                        Image("user")
                            .resizable()
                            .frame(width: 25 , height: 25)
                            .foregroundColor(self.index == 3 ? .white : .white.opacity(0.35))
                            .padding(.horizontal)
                    }
                    
                    

                }
                .padding(.horizontal)
                
                
            }
            .padding(.top, UIApplication.shared.windows.first { $0.isKeyWindow }?.safeAreaInsets.top)
            .padding(.bottom, ( (UIApplication.shared.windows.first { $0.isKeyWindow }?.safeAreaInsets.bottom)!) +  5)
        }
        .background(
            Color.black.edgesIgnoringSafeArea(.all)
        ).edgesIgnoringSafeArea(.all)
    }
}

struct PlayerView :  View {
    @Binding var data : [video]
    var body : some View{
        VStack(spacing  : 0){
            ForEach(0..<self.data.count) { i in
                ZStack{
                    Player(player: self.data[i].player)
                        .frame(width: UIScreen.main.bounds.width , height: UIScreen.main.bounds.height)
                        .offset(y : -5)
                        .onTapGesture {
                            if( self.data[i].isplaying){
                                self.data[i].isplaying = false
                                self.data[i].player.pause()
                            }else{
                                self.data[i].isplaying = true
                                self.data[i].player.play()
                            }
                            
                        }
                    if self.data[i].replay{
                        Button {
                            self.data[i].replay = false
                            self.data[i].player.seek(to: .zero)
                            self.data[i].player.play()
                           
                            
                        } label: {
                            Image(systemName: "repeat.circle")
                                .resizable()
                                .frame(width: 55 , height: 60)
                                .foregroundColor(.white)
                                .padding(.horizontal)
                        }
                    }
                    
                    
                }
                
            }
        }.onAppear{
           
            self.data[0].player.play()
            self.data[0].player.actionAtItemEnd = .none
            NotificationCenter.default.addObserver(forName: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: self.data[0].player.currentItem, queue: .main) { (_) in
                self.data[0].replay = true
            }
        }
    }
    
    
}

struct Player: UIViewControllerRepresentable {
    var player: AVPlayer
    
    func makeUIViewController(context: Context) -> AVPlayerViewController {
        let view = AVPlayerViewController()
        view.player = player
        view.showsPlaybackControls = false
        view.videoGravity = .resizeAspectFill
        return view
    }
    
    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: Context) {
        // Add any updates to the AVPlayerViewController here, if needed
    }
}

struct video : Identifiable{
    var id : Int
    var player : AVPlayer
    var replay : Bool
    var isplaying : Bool
    
}

//struct PlayerScrollView : UIViewRepresentable{
//
//
//    @Binding  var data : [video]
//    func makeCoordinator() -> Coordinator {
//        return PlayerScrollView.Coordinator(parent1: self)
//    }
//    func makeUIView(context: Context) -> UIScrollView {
//        let view = UIScrollView()
//        let childView = UIHostingController(rootView: PlayerView(data: $data))
//        childView.view.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * CGFloat((data.count)))
//        view.contentSize = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * CGFloat((data.count)))
//        view.addSubview(childView.view)
//        view.showsVerticalScrollIndicator = false
//        view.showsHorizontalScrollIndicator = false
//        view.contentInsetAdjustmentBehavior = .never
//        view.isPagingEnabled = true
//        view.delegate =  context.coordinator
//        return view
//    }
//    func updateUIView(_ uiView: UIScrollView, context: Context) {
//        uiView.contentSize = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * CGFloat((data.count)))
//
//        for i in 0..<uiView.subviews.count{
//            uiView.subviews[i].frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * CGFloat((data.count)))
//        }
//    }
//    class Coordinator : NSObject , UIScrollViewDelegate{
//        var parent : PlayerScrollView
//        var index  = 0
//        init(parent1 :  PlayerScrollView) {
//            parent = parent1
//        }
//        func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
//            let CurrentIndex = Int(scrollView.contentOffset.y / UIScreen.main.bounds.height)
//            if index != CurrentIndex {
//                index = CurrentIndex
//                for i in 0..<parent.data.count{
//
//                    parent.data[i].player.seek(to: .zero)
//                    parent.data[i].player.pause()
//
//                }
//
//                parent.data[index].player.play()
//                parent.data[index].player.actionAtItemEnd = .none
//                NotificationCenter.default.addObserver(forName: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: parent.data[index].player.currentItem, queue: .main) { (_) in
//                    self.parent.data[self.index].replay = true
//                }
//            }
//        }
//    }
//}
struct PlayerScrollView: UIViewRepresentable {

    @Binding var data: [video]

    func makeCoordinator() -> Coordinator {
        return Coordinator(parent1: self)
    }

    func makeUIView(context: Context) -> UIScrollView {
        let view = UIScrollView()
        let childView = UIHostingController(rootView: PlayerView(data: $data))
        childView.view.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * CGFloat((data.count)))
        view.contentSize = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * CGFloat((data.count)))
        view.addSubview(childView.view)
        view.showsVerticalScrollIndicator = false
        view.showsHorizontalScrollIndicator = false
        view.contentInsetAdjustmentBehavior = .never
        view.isPagingEnabled = true
        view.delegate = context.coordinator

        
        return view
    }

    func updateUIView(_ uiView: UIScrollView, context: Context) {
        uiView.contentSize = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * CGFloat((data.count)))

        for i in 0..<uiView.subviews.count{
            uiView.subviews[i].frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * CGFloat((data.count)))
        }
    }

    class Coordinator: NSObject, UIScrollViewDelegate {
        var parent: PlayerScrollView
        var index = 0

        init(parent1: PlayerScrollView) {
            parent = parent1
        }

        func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
            let currentIndex = Int(scrollView.contentOffset.y / UIScreen.main.bounds.height)
            if index != currentIndex {
                index = currentIndex
                for i in 0..<parent.data.count {
                    if i != index {
                        parent.data[i].player.seek(to: .zero)
                        parent.data[i].player.pause()
                    }
                }
                parent.data[index].player.play()
                parent.data[index].player.actionAtItemEnd = .none
                NotificationCenter.default.addObserver(forName: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: parent.data[index].player.currentItem, queue: .main) { (_) in
                    self.parent.data[self.index].replay = true
                }
            }
        }
    }
}
