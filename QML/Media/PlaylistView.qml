import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtMultimedia

Drawer {
    id: drawer
    property alias mediaPlaylist: mediaPlaylist
    interactive: false
    modal: false
    background: Rectangle {
        id: playList_bg
        anchors.fill: parent
        color: "transparent"
    }

    MediaPlayer{
        id: player
        property bool shuffer: false
        source: ""
        audioOutput: audio
        onPlaybackStateChanged: {
            if (player.playbackState == MediaPlayer.StoppedState && position == duration && repeater.status == 0){
                if (shuffer.status==1) {
                    var newIndex = Math.floor(Math.random() * mediaPlaylist.count)
                    while (newIndex === mediaPlaylist.currentIndex) {
                        newIndex = Math.floor(Math.random() * mediaPlaylist.count)
                    }
                    mediaPlaylist.currentIndex = newIndex
                } else if(mediaPlaylist.currentIndex < mediaPlaylist.count - 1 ) {
                    mediaPlaylist.currentIndex = mediaPlaylist.currentIndex + 1;
                }
                else{
                    mediaPlaylist.currentIndex = 0
                }
            }
            else if (player.playbackState == MediaPlayer.StoppedState && position == duration && repeater.status == 1){
                position = 0
                player.play()
            }
        }

        autoPlay: true
    }
    AudioOutput{
        id: audio
        volume: 1
    }

    ListModel {
        id: appModel
        // ListElement { title: "Phố Không Mùa"; singer: "Bùi Anh Tuấn" ; icon: "qrc:/Image/Bui-Anh-Tuan.png"; source: "qrc:/Music/Pho-Khong-Mua-Duong-Truong-Giang-ft-Bui-Anh-Tuan.mp3" }
        // ListElement { title: "Chuyện Của Mùa Đông"; singer: "Hà Anh Tuấn" ; icon: "qrc:/Image/Ha-Anh-Tuan.png"; source: "qrc:/Music/Chuyen-Cua-Mua-Dong-Ha-Anh-Tuan.mp3"}
        // ListElement { title: "Hongkong1"; singer: "Nguyễn Trọng Tài" ; icon: "qrc:/Image/Hongkong1.png"; source: "qrc:/Music/Hongkong1-Official-Version-Nguyen-Trong-Tai-San-Ji-Double-X.mp3" }
        ListElement { title: "Gọi Cho Anh Đi"; singer: "AndreeRightHand" ; icon: "qrc:/Image/AndreeRightHand.webp"; source: "qrc:/Music/Goi-Cho-Anh-Di.mp3" }
        ListElement { title: "Sự Nghiệp Chướng"; singer: "Pháo NorthSide" ; icon: "qrc:/Image/Phao.jpg"; source: "qrc:/Music/Su-Nghiep-Chuong.mp3" }
        ListElement { title: "MammaMia"; singer: "Gerdnang" ; icon: "qrc:/Image/mammamia.jpg"; source: "qrc:/Music/MammaMia-HIEUTHUHAIHURRYKNGMANBONegavRex-7288215.mp3" }
        ListElement {title: "Trình" ; singer: "HIEUTHUHAI" ; icon: "qrc:/Image/HIEUTHUHAI.jpg"; source: "qrc:/Music/Trinh.mp3"}
        ListElement {title: "NOLOVENOLIFE" ; singer: "HIEUTHUHAI" ; icon: "qrc:/Image/HIEUTHUHAI.jpg"; source: "qrc:/Music/NOLOVENOLIFE-HIEUTHUHAI-11966374.mp3"}
        ListElement {title: "Không Phải Gu" ; singer: "HIEUTHUHAI" ; icon: "qrc:/Image/HIEUTHUHAI.jpg"; source: "qrc:/Music/KhongPhaiGu-HIEUTHUHAI-11966359.mp3"}
        ListElement {title: "Dân Chơi Sao Phải Khóc" ; singer: "AndreeRightHand" ; icon: "qrc:/Image/Sao-Phai-Khoc.jpg"; source: "qrc:/Music/DanChoiSaoPhaiKhoc-AndreeRightHandRHYDERWOKEUP-13235052.mp3"}
        ListElement{title: "Mất Kết Nối"; singer: "Dương Domic"; icon: "qrc:/Image/matketnoi.jpg"; source: "qrc:/Music/MatKetNoi-DuongDomic-16783113.mp3"}
        ListElement{title: "Tràn Bộ Nhớ"; singer: "Dương Domic"; icon: "qrc:/Image/tranbonho.jpg"; source: "qrc:/Music/TranBoNho-DuongDomic-16783111.mp3"}
        ListElement{title: "Anh Vẫn Luôn Như Vậy"; singer: "Bray"; icon: "qrc:/Image/anhvanluonnhuvay.jpg"; source: "qrc:/Music/AnhLuonNhuVay-BRay-11853369.mp3"}
        ListElement{title: "Đa Nghi"; singer: "Ogenus"; icon: "qrc:/Image/Danghi.jpg"; source: "qrc:/Music/DaNghi-OgeNus-15942159.mp3"}
        ListElement{title: "Exit Sign"; singer: "HIEUTHUHAI"; icon: "qrc:/Image/d4acc6335d41bd7164173312c6123706.jpg"; source: "qrc:/Music/ExitSign-HIEUTHUHAI-11966367.mp3"}
        ListElement{title: "Chăm Hoa"; singer: "Mono"; icon: "qrc:/Image/bzvn-mono-cham-hoa-3-1.jpg"; source: "qrc:/Music/ChamHoa.mp3"}
        ListElement{title: "Chúng Ta Của Hiện Tại"; singer: "Sơn Tùng-MTP"; icon: "qrc:/Image/Sontung.webp"; source: "qrc:/Music/ChungTaCuaHienTai-SonTungMTP-6892340.mp3"}
        ListElement{title: "Ghé Qua"; singer: "Dick - Huỳnh Công Hiếu"; icon: "qrc:/Image/ghequa.jpg"; source: "qrc:/Music/GheQua-TaynguyenSoundTofuPC-7031399.mp3"}
        ListElement{title: "Phù Hộ Cho Con"; singer: "24k Right - Bray - Huỳnh Công Hiếu"; icon: "qrc:/Image/phuhochocon.jpg"; source: "qrc:/Music/PhuHoChoCon-24kRightBRayDickHipz-15754317.mp3"}
        ListElement{title: "Thủ Đô Cypher"; singer: "RPTO"; icon: "qrc:/Image/thudocypher.jpg"; source: "qrc:/Music/ThuDoCypher-RPTOrijinnLowGRzmasRPTMCK-9038213.mp3"}
        ListElement{title: "Sống Cho Hết Đời Thanh Xuân 4"; singer: "Huỳnh Công Hiếu - Ngắn"; icon: "qrc:/Image/Dick.webp"; source: "qrc:/Music/SongChoHetDoiThanhXuan4.mp3"}

    }

    ListView {
        id: mediaPlaylist
        anchors.fill: parent
        model: appModel
        clip: true
        spacing: 16/15 //2
        currentIndex: player.playlist.currentIndex
        delegate: MouseArea {
            property variant myData: model
            implicitWidth: playlistItem.width
            implicitHeight: playlistItem.height
            Image {
                id: playlistItem
                width: 360 //675
                height: 965/9 //193
                source: "qrc:/App/Media/Image/playlist.png"
                opacity: 0.5
            }
            Text {
                text: title
                anchors.fill: parent
                anchors.leftMargin: 112/3 //70
                verticalAlignment: Text.AlignVCenter
                color: "white"
                font.pixelSize: 256/15 //32
            }
            onClicked: {
                player.playlist.currentIndex = index
            }

            onPressed: {
                playlistItem.source = "qrc:/App/Media/Image/hold.png"
            }
            onReleased: {
                playlistItem.source = "qrc:/App/Media/Image/playlist.png"
            }
        }
        highlight: Image {
            source: "qrc:/App/Media/Image/playlist_item.png"
            Image {
                anchors.left: parent.left
                anchors.leftMargin: 8 //15
                anchors.verticalCenter: parent.verticalCenter
                source: "qrc:/App/Media/Image/playing.png"
            }
        }
        ScrollBar.vertical: ScrollBar {
            parent: mediaPlaylist.parent
            anchors.top: mediaPlaylist.top
            anchors.left: mediaPlaylist.right
            anchors.bottom: mediaPlaylist.bottom
        }
        onCurrentItemChanged: {
            player.source = mediaPlaylist.currentItem.myData.source
            album_art_view.currentIndex = mediaPlaylist.currentIndex
            //player.play()
            //play.source = "qrc:/Image/pause.png"
        }
    }

    // Connections{
    //     target: player.playlist
    //     onCurrentIndexChanged: {
    //         mediaPlaylist.currentIndex = index;
    //     }
    // }
}
