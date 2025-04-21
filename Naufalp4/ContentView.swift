//
//  ContentView.swift
//  Naufalp4
//
//  Created by Naufal Adli on 20/04/25.
//

import SwiftUI
import AVFoundation
import Foundation

struct Story: Identifiable {
    let id = UUID()
    let title: String
    let storyText: String
    let audio: String
    let image: String
}

struct HomeView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Image("dino")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .padding(.top)

                NavigationLink(destination: StoryListView()) {
                    Text("Start Telling")
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }

                Button(action: {
                
                }) {
                    Text("Share App")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }

                Button(action: {
                    
                }) {
                    Text("Leave a Review")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }

                Spacer()
            }
            .padding()
            .navigationTitle("Cerita Anak")
        }
    }
}


struct StoryListView: View {
    let columns = [GridItem(.flexible()), GridItem(.flexible())]

    let stories: [Story] = [
        Story(
            title: "Burung Tekukur",
            storyText: """
    Tekukur adalah burung yang suka hidup bebas. Ia terbang ke sana ke mari sekehendak hati dan selalu menghabiskan makanannya tanpa menyimpan. Berbeda dengan burung Betet, yang setiap hari mengumpulkan dan menyimpan makanan di sarangnya. Betet tahu bahwa musim paceklik akan datang, dan ia harus mempersiapkan diri.

    Saat musim kemarau tiba, Betet dan keluarganya hidup tenang karena memiliki persediaan jagung, padi, dan petai. Sementara itu, Tekukur kebingungan. Mereka terbang ke segala arah, tapi tidak menemukan apa pun. Mereka mulai menyesal karena tidak pernah menabung makanan.

    Dalam keputusasaan, mereka mendatangi Betet dan memohon bantuan. Betet bersedia membantu, tapi meminta agar anak Tekukur tinggal bersamanya sebagai pembantu. Dengan berat hati, Tekukur menyetujuinya. Setiap hari mereka memakan satu untai padi, dan ketika persediaan habis, mereka kembali hidup dalam kesedihan dan penyesalan.

    Tekukur pun sadar, bahwa hidup boros dan tidak memikirkan masa depan membawa kesengsaraan. Sejak saat itu, suaranya berubah menjadi sedih dan penuh penyesalan.
    """,
            audio: "GT",
            image: "bird"
        ),
        Story(
            title: "Kancil dan Badak",
            storyText: """
    Di hutan yang jauh, terdapat sumber air yang digunakan oleh semua hewan. Mereka minum secara bergiliran, dan semua mematuhi aturan itu. Namun, seekor Badak besar melanggar aturan. Ia seenaknya berkubang di telaga dan membuat airnya kotor. Binatang lain tidak bisa minum, tapi juga tidak berani menegurnya karena tubuh Badak sangat besar dan menakutkan.

    Beberapa hari berlalu, dan hewan-hewan semakin haus. Mereka berkumpul untuk mencari solusi. Harimau, Kerbau, dan Babi Hutan berdiskusi, tapi tak satu pun bisa menghadapi Badak.

    Lalu datanglah si Kancil. Ia dikenal sebagai hewan cerdik. Dengan sopan, Kancil menemui Badak dan memujinya, membuat Badak merasa tersanjung. Kancil kemudian mengarang cerita bahwa ada makhluk gaib yang berencana menutup aliran air dan membuat Badak terlihat lemah.

    Mendengar itu, Badak marah dan segera pergi untuk mencari si makhluk gaib. Ia pergi dari telaga dan tidak pernah kembali. Sejak saat itu, binatang-binatang bisa kembali minum dengan damai, dan Kancil dipuji sebagai penyelamat hutan.
    """,
            audio: "audio/cerdik.mp3",
            image: "kancil"
        ),
        Story(
            title: "Harimau dan Kerbau",
            storyText: """
    Saat musim kemarau melanda, semua binatang di hutan kehausan. Satu-satunya telaga yang tersisa dikuasai oleh Badak. Ia tidak mengizinkan binatang lain untuk mendekat. Semua hanya bisa menonton dari kejauhan sambil menahan haus.

    Harimau, Kerbau, dan Babi Hutan mengadakan musyawarah. Namun, semua merasa tidak sanggup melawan Badak secara fisik. Mereka tahu hanya satu hewan yang bisa mengatasi ini: Kancil.

    Kancil pun datang. Ia menyusun rencana dan berbicara pada Badak dengan nada sopan dan penuh pujian. Ia menceritakan bahwa telaga itu sebenarnya kutukan dari makhluk gaib, dan Badak sedang dijadikan target.

    Karena merasa terancam, Badak panik dan segera meninggalkan telaga untuk mencari makhluk gaib itu. Binatang-binatang pun bersorak gembira. Mereka belajar bahwa kecerdikan bisa mengalahkan kekuatan, dan rasa hormat bisa membuka jalan damai.
    """,
            audio: "audio/cerdik2.mp3",
            image: "tiger"
        ),
        Story(
            title: "Petualangan Kerbau",
            storyText: """
    Musang kelaparan karena kemarau yang sangat panjang. Ia sudah berhari-hari tidak makan dan hampir pingsan. Dalam keadaan lemas, ia mencium bau makanan dari sebuah bangunan tua di tepi hutan. Dengan penuh semangat, ia berjalan ke sana dan menemukan sebuah gudang.

    Musang sangat bahagia ketika melihat daging dan ikan yang berlimpah di dalamnya. Ia langsung masuk melalui lubang kecil dan berpesta sepuasnya. Ia makan tanpa henti, melupakan rasa lapar yang menderanya.

    Namun setelah kenyang, Musang menyadari tubuhnya menjadi terlalu besar untuk keluar dari lubang yang semula ia masuki. Saat itulah pemilik gudang datang. Ia marah melihat makanan berantakan, dan menemukan Musang yang terjebak di pojok ruangan.

    Musang mencoba kabur, tapi tubuhnya tersangkut. Akhirnya, ia ditangkap. Dari kejadian itu, Musang belajar bahwa kerakusan bisa membawa petaka. Sejak saat itu, ia tak lagi rakus, dan menjadi lebih berhati-hati dalam mencari makan.
    """,
            audio: "GT",
            image: "kerbau"
        )
    ]



    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 16) {
                ForEach(stories) { story in
                    NavigationLink(destination: DetailStoryView(story: story)) {
                        ZStack(alignment: .bottomLeading) {
                            Image(story.image)
                                .resizable()
                                .aspectRatio(1, contentMode: .fill)
                                .frame(height: 160)
                                .clipped()
                                .cornerRadius(12)

                            Text(story.title)
                                .font(.caption)
                                .fontWeight(.semibold)
                                .padding(8)
                                .background(Color.black.opacity(0.4))
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                    }
                }
            }
            .padding()
        }
        .navigationTitle("List of Childrens Stories")
    }
}



struct DetailStoryView: View {
    var story: Story

    @State private var isPlaying = false
    @State private var player: AVAudioPlayer?
    @State private var delegateWrapper: AVDelegateWrapper?

    private let synthesizer = AVSpeechSynthesizer()

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Image(story.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 220)
                    .clipped()
                    .cornerRadius(16)

                Button(action: {
                    if story.audio.lowercased() == "gt" {
                        if synthesizer.isSpeaking {
                            synthesizer.stopSpeaking(at: .immediate)
                            isPlaying = false
                        } else {
                            speakText(story.storyText)
                            isPlaying = true
                        }
                    } else {
                        if isPlaying {
                            player?.stop()
                            isPlaying = false
                        } else {
                            playAudioFromAsset(named: story.audio)
                        }
                    }
                }) {
                    HStack {
                        Image(systemName: isPlaying ? "pause.fill" : "play.fill")
                        Text(isPlaying ? "Jeda Cerita" : "Putar Cerita")
                            .fontWeight(.semibold)
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.yellow)
                    .foregroundColor(.black)
                    .cornerRadius(12)
                }
                .padding(.vertical, 10)

                Text(story.title)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(.black)

                Text(story.storyText)
                    .font(.body)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.black)
            }
            .padding()
        }
        .navigationTitle("Cerita")
        .navigationBarTitleDisplayMode(.inline)
    }

    func speakText(_ text: String) {
        let utterance = AVSpeechUtterance(string: text)
        utterance.voice = AVSpeechSynthesisVoice(language: "id-ID")
        utterance.rate = 0.5
        synthesizer.speak(utterance)
    }

    func playAudioFromAsset(named: String) {
        guard let url = Bundle.main.url(forResource: named.replacingOccurrences(of: "audio/", with: "").replacingOccurrences(of: ".mp3", with: ""), withExtension: "mp3") else {
            print("Audio file not found.")
            return
        }

        do {
            let newPlayer = try AVAudioPlayer(contentsOf: url)
            let newDelegate = AVDelegateWrapper { finished in
                if finished {
                    isPlaying = false
                }
            }
            newPlayer.delegate = newDelegate
            delegateWrapper = newDelegate
            player = newPlayer
            player?.play()
            isPlaying = true
        } catch {
            print("Failed to play audio: \(error)")
        }
    }
}

class AVDelegateWrapper: NSObject, AVAudioPlayerDelegate {
    var didFinish: ((Bool) -> Void)?

    init(_ didFinish: @escaping (Bool) -> Void) {
        self.didFinish = didFinish
    }

    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        didFinish?(flag)
    }
}
