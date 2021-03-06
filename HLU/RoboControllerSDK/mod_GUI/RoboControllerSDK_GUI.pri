message(Added GUI module)

QT += gui opengl
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += gui

DEFINES += SDK_PATH=\\\"$$ROBOCONTROLLERSDKPATH\\\"
DEFINES += RES_PATH=\\\"/mod_GUI/res/gui-resources.rcc\\\"

SOURCES += \
            $$ROBOCONTROLLERSDKPATH/mod_GUI/src/qjoypad.cpp \
            $$ROBOCONTROLLERSDKPATH/mod_GUI/src/qrobotconfigdialog.cpp \
            $$ROBOCONTROLLERSDKPATH/mod_GUI/src/qbatterycalibdialog.cpp \
            $$ROBOCONTROLLERSDKPATH/mod_GUI/src/qscreentools.cpp \
            $$ROBOCONTROLLERSDKPATH/mod_GUI/src/q2dmapscene.cpp


INCLUDEPATH += \
            $$ROBOCONTROLLERSDKPATH/mod_GUI/include/ \

HEADERS += \
            $$ROBOCONTROLLERSDKPATH/mod_GUI/include/qjoypad.h \
            $$ROBOCONTROLLERSDKPATH/mod_GUI/include/qrobotconfigdialog.h \
            $$ROBOCONTROLLERSDKPATH/mod_GUI/include/qbatterycalibdialog.h \
            $$ROBOCONTROLLERSDKPATH/mod_GUI/include/qscreentools.h \
            $$ROBOCONTROLLERSDKPATH/mod_GUI/include/q2dmapscene.h

#android {
#            message(Android GUI)
#} else {
#    CONFIG(opencv) {
#        HEADERS += \
#            $$ROBOCONTROLLERSDKPATH/mod_GUI/include/qglopencvwidget.h
#
#        SOURCES += \
#            $$ROBOCONTROLLERSDKPATH/mod_GUI/src/qglopencvwidget.cpp
#    }
#}

FORMS    += \
            $$ROBOCONTROLLERSDKPATH/mod_GUI/ui/qrobotconfigdialog.ui \
            $$ROBOCONTROLLERSDKPATH/mod_GUI/ui/qbatterycalibdialog.ui
            
RESOURCES += \
            $$ROBOCONTROLLERSDKPATH/mod_GUI/res/joypad.qrc

CONFIG(opencv) {
    SOURCES += \
            $$ROBOCONTROLLERSDKPATH/mod_GUI/src/qopencvscene.cpp \
            $$ROBOCONTROLLERSDKPATH/mod_GUI/src/qrobotguiview.cpp

    HEADERS += \
            $$ROBOCONTROLLERSDKPATH/mod_GUI/include/qopencvscene.h \
            $$ROBOCONTROLLERSDKPATH/mod_GUI/include/qrobotguiview.h
}
