cmake_minimum_required(VERSION 3.16)

project(DashBoard VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_AUTORCC ON)

find_package(Qt6 REQUIRED COMPONENTS Quick Core 3DCore 3DQuick 3DRender SerialPort QuickEffects QuickTimeline ShaderTools Gui Widgets Qml Multimedia QuickControls2)

qt_standard_project_setup(REQUIRES 6.8)

qt_add_executable(appDashBoard
    main.cpp
)

qt_add_qml_module(appDashBoard
    URI DashBoard
    VERSION 1.0
QML_FILES   Main.qml
RESOURCES resource.qrc
SOURCES header_file/bottombar.h header_file/door.h header_file/light.h header_file/media.h
SOURCES cpp_file/bottombar.cpp cpp_file/door.cpp cpp_file/light.cpp cpp_file/media.cpp
QML_FILES QML/BottomBar.qml QML/Car_Door_Light.qml QML/Seat_Climate.qml QML/Warning_button.qml
QML_FILES QML/Model/Mercedes.qml QML/Model/Parking.qml QML/Model/Seat_Model.qml
QML_FILES QML/Media/AppHeader.qml QML/Media/ButtonControl.qml QML/Media/Media.qml QML/Media/SwitchButton.qml
RESOURCES
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appDashBoard PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appDashBoard
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appDashBoard
    PRIVATE Qt6::Quick Qt6::Core Qt6::3DCore Qt6::3DQuick Qt6::3DRender Qt6::SerialPort Qt6::QuickEffects Qt6::QuickTimeline Qt6::ShaderTools Qt6::Gui Qt6::Widgets Qt6::Qml Qt6::Multimedia Qt6::QuickControls2
)

include(GNUInstallDirs)
install(TARGETS appDashBoard
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
