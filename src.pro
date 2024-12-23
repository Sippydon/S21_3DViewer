QT       += core gui opengl openglwidgets
include(QtGifImage/src/gifimage/qtgifimage.pri)

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    glwidget.cpp \
    main.cpp \
    mainwindow.cpp \
    parser/parser.c \
    athenian/athen.c

HEADERS += \
    glwidget.h \
    mainwindow.h \
    parser/parser.h \
    athenian/athen.h

FORMS += \
    mainwindow.ui

LIBS += -lglut -lGLU


# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DEFINES += SRCDIR=\\\"$$PWD/\\\"
