include(FindPkgConfig)
include(FindGStreamer)
include(FindOpenAL)

# ===================== Source Files =====================
set(OF_SOURCE_FILES
        ${OF_DIRECTORY}/libs/openFrameworks/ofMain.h
        ${OF_DIRECTORY}/libs/openFrameworks/3d/of3dPrimitives.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/3d/of3dUtils.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/3d/ofCamera.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/3d/ofEasyCam.cpp
        #${OF_DIRECTORY}/libs/openFrameworks/3d/ofMesh.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/3d/ofNode.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/app/ofAppGLFWWindow.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/app/ofMainLoop.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/app/ofAppGlutWindow.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/app/ofAppNoWindow.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/app/ofAppRunner.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/communication/ofArduino.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/communication/ofSerial.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/events/ofEvents.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/gl/ofBufferObject.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/gl/ofFbo.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/gl/ofGLProgrammableRenderer.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/gl/ofGLRenderer.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/gl/ofGLUtils.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/gl/ofLight.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/gl/ofMaterial.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/gl/ofShader.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/gl/ofTexture.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/gl/ofVbo.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/gl/ofVboMesh.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/graphics/of3dGraphics.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/graphics/ofBitmapFont.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/graphics/ofCairoRenderer.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/graphics/ofGraphics.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/graphics/ofImage.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/graphics/ofPath.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/graphics/ofPixels.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/graphics/ofPolyline.inl
        ${OF_DIRECTORY}/libs/openFrameworks/graphics/ofRendererCollection.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/graphics/ofTessellator.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/graphics/ofTrueTypeFont.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/math/ofMath.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/math/ofMatrix3x3.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/math/ofMatrix4x4.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/math/ofQuaternion.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/math/ofVec2f.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/math/ofVec4f.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/sound/ofFmodSoundPlayer.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/sound/ofOpenALSoundPlayer.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/sound/ofSoundPlayer.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/sound/ofSoundBuffer.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/types/ofBaseTypes.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/types/ofColor.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/types/ofParameter.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/types/ofParameterGroup.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/types/ofRectangle.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/utils/ofFileUtils.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/utils/ofLog.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/utils/ofFpsCounter.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/utils/ofTimer.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/utils/ofMatrixStack.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/utils/ofSystemUtils.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/utils/ofThread.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/utils/ofURLFileLoader.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/utils/ofUtils.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/utils/ofXml.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/video/ofGstVideoPlayer.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/video/ofGstVideoGrabber.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/video/ofGstUtils.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/video/ofVideoGrabber.cpp
        ${OF_DIRECTORY}/libs/openFrameworks/video/ofVideoPlayer.cpp)
# ========================================================

# ===================== Include Dirs =====================
set(HEADER_OF_0 ${OF_DIRECTORY}/libs/openFrameworks)
set(HEADER_OF_1 ${OF_DIRECTORY}/libs/openFrameworks/3d)
set(HEADER_OF_2 ${OF_DIRECTORY}/libs/openFrameworks/app)
set(HEADER_OF_3 ${OF_DIRECTORY}/libs/openFrameworks/communication)
set(HEADER_OF_4 ${OF_DIRECTORY}/libs/openFrameworks/events)
set(HEADER_OF_5 ${OF_DIRECTORY}/libs/openFrameworks/gl)
set(HEADER_OF_6 ${OF_DIRECTORY}/libs/openFrameworks/graphics)
set(HEADER_OF_7 ${OF_DIRECTORY}/libs/openFrameworks/math)
set(HEADER_OF_8 ${OF_DIRECTORY}/libs/openFrameworks/sound)
set(HEADER_OF_9 ${OF_DIRECTORY}/libs/openFrameworks/types)
set(HEADER_OF_10 ${OF_DIRECTORY}/libs/openFrameworks/utils)
set(HEADER_OF_11 ${OF_DIRECTORY}/libs/openFrameworks/video)
set(HEADER_FREETYPE ${OF_DIRECTORY}/libs/freetype/include)
set(HEADER_FREETYPE2 ${OF_DIRECTORY}/libs/freetype/include/freetype2)
set(HEADER_KISS ${OF_DIRECTORY}/libs/kiss/include)
set(HEADER_POCO ${OF_DIRECTORY}/libs/poco/include)
set(HEADER_FMODEX ${OF_DIRECTORY}/libs/fmodex/include)
set(HEADER_FREEIMAGE ${OF_DIRECTORY}/libs/FreeImage/include)
set(HEADER_TESS2 ${OF_DIRECTORY}/libs/tess2/include)
set(HEADER_GLFW ${OF_DIRECTORY}/libs/glfw/include)
set(HEADER_GLM ${OF_DIRECTORY}/libs/glm/include)
set(HEADER_UTF8 ${OF_DIRECTORY}/libs/utf8cpp/include)

set(OF_CORE_HEADERS ${HEADER_OF_0} ${HEADER_OF_1} ${HEADER_OF_2} ${HEADER_OF_3} ${HEADER_OF_4} ${HEADER_OF_5} ${HEADER_OF_6} ${HEADER_OF_7} ${HEADER_OF_8} ${HEADER_OF_9} ${HEADER_OF_10} ${HEADER_OF_11} ${HEADER_POCO} ${HEADER_KISS} ${HEADER_FREETYPE} ${HEADER_FREETYPE2} ${HEADER_FMODEX} ${HEADER_FREEIMAGE} ${HEADER_TESS2} ${HEADER_GLFW} ${HEADER_UTF8} ${HEADER_GLM})
# ========================================================

# ===================== Libs =====================
set(LIB_GLFW ${OF_DIRECTORY}/libs/glfw/lib/linux64/libglfw3.a)
set(LIB_KISS ${OF_DIRECTORY}/libs/kiss/lib/linux64/libkiss.a)
set(LIB_POCO_1 ${OF_DIRECTORY}/libs/poco/lib/linux64/libPocoCrypto.a)
set(LIB_POCO_5 ${OF_DIRECTORY}/libs/poco/lib/linux64/libPocoFoundation.a)
set(LIB_POCO_6 ${OF_DIRECTORY}/libs/poco/lib/linux64/libPocoNet.a)
set(LIB_POCO_7 ${OF_DIRECTORY}/libs/poco/lib/linux64/libPocoNetSSL.a)
set(LIB_POCO_8 ${OF_DIRECTORY}/libs/poco/lib/linux64/libPocoUtil.a)
set(LIB_POCO_9 ${OF_DIRECTORY}/libs/poco/lib/linux64/libPocoXML.a)
set(LIB_POCO_11 ${OF_DIRECTORY}/libs/poco/lib/linux64/libPocoJSON.a)
set(LIB_TESS ${OF_DIRECTORY}/libs/tess2/lib/linux64/libtess2.a)

set(PLATFORM_STATIC_LIBS ${LIB_GLFW} ${LIB_KISS} ${LIB_POCO_7} ${LIB_POCO_6} ${LIB_POCO_1} ${LIB_POCO_8} ${LIB_POCO_9} ${LIB_POCO_11} ${LIB_POCO_5} ${LIB_TESS})

set(PLATFORM_LIBRARIES glut)
set(PLATFORM_LIBRARIES ${PLATFORM_LIBRARIES} X11 Xrandr Xxf86vm dl Xinerama Xcursor Xi)
set(PLATFORM_LIBRARIES ${PLATFORM_LIBRARIES} freeimage boost_filesystem boost_system)

set(LIB_FMODEX ${OF_DIRECTORY}/libs/fmodex/lib/linux64/libfmodex.so)
set(PLATFORM_SHARED_LIBRARIES ${LIB_FMODEX})
set(PLATFORM_LIBRARIES z gstapp-1.0 gstvideo-1.0 gstbase-1.0 gstreamer-1.0 udev fontconfig freetype sndfile openal ssl crypto pulse-simple pulse asound GLEW GLU GL pangocairo-1.0 gdk_pixbuf-2.0 cairo-gobject pango-1.0 cairo gtk-3 gdk-3 atk-1.0 gio-2.0 gobject-2.0 glib-2.0 mpg123 glut X11 Xrandr Xxf86vm dl Xinerama Xcursor Xi dl pthread freeimage boost_filesystem boost_system)
set(OF_CORE_LIBS ${PLATFORM_STATIC_LIBS} ${PLATFORM_LIBRARIES} ${PLATFORM_SHARED_LIBRARIES})

PKG_SEARCH_MODULE(ALSA "REQUIRED" alsa)
PKG_SEARCH_MODULE(CAIRO "REQUIRED" cairo)

include_directories(${CAIRO_INCLUDE_DIRS})
include_directories(${OPENAL_INCLUDE_DIRS})
include_directories(${ALSA_INCLUDE_DIRS})
include_directories(${GSTREAMER_APP_INCLUDE_DIRS})
include_directories(${GSTREAMER_BASE_INCLUDE_DIRS})
include_directories(${GSTREAMER_VIDEO_INCLUDE_DIRS})

set(OF_SOURCE_FILES ${OF_SOURCE_FILES} ${ADDON_SOURCE_FILES})
set_source_files_properties(${OF_SOURCE_FILES} PROPERTIES COMPILE_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -Wall -fPIC")
include_directories(${OF_CORE_HEADERS} ${OF_ADDON_HEADERS})
add_library(core OBJECT ${OF_SOURCE_FILES})

# ===================== Shared lib =====================
add_library(of_shared SHARED $<TARGET_OBJECTS:core>)
set_target_properties(of_shared PROPERTIES POSITION_INDEPENDENT_CODE on)
set_target_properties(of_shared PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/bin/${APP_NAME}.app/Contents/Frameworks)
set_target_properties(of_shared PROPERTIES OUTPUT_NAME openFrameworks)
target_link_libraries(of_shared  ${PLATFORM_LIBRARIES} ${PLATFORM_SHARED_LIBRARIES})
