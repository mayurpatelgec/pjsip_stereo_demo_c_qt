QT -= gui

CONFIG += c++11 console
CONFIG -= app_bundle

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0



# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DEFINES += "PJ_IS_LITTLE_ENDIAN=1"
DEFINES += "PJ_IS_BIG_ENDIAN=0"
HEADERS += \
    pjsua_app.h \
    pjsua_app_common.h \
    pjsua_app_config.h

SOURCES += \
        main.c \
        pjsua_app.c \
        pjsua_app_cli.c \
        pjsua_app_common.c \
        pjsua_app_config.c \
        pjsua_app_legacy.c

LIBS +=-lpthread
LIBS +=-lpjsua2
LIBS +=-lpjsua
LIBS +=-lpjsip-ua
LIBS +=-lpjsip-simple
LIBS +=-lpjsip
LIBS +=-lpjmedia-audiodev
LIBS +=-lpjmedia-videodev
LIBS +=-lpjmedia-codec
LIBS +=-lpjmedia
LIBS +=-lpjnath
LIBS +=-lpj
LIBS +=-lpjlib-util
LIBS +=-lsrtp
LIBS +=-lresample
LIBS +=-lspeex
LIBS +=-lgsmcodec
LIBS +=-lilbccodec
LIBS +=-lg7221codec
LIBS +=-lyuv
