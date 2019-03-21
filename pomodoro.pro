#-------------------------------------------------
#
# Project created by QtCreator 2019-03-21T08:14:47
#
#-------------------------------------------------

VERSION = 0.0.1

DEFINES += APP_VERSION=\\\"$${VERSION}\\\"

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = Pomodoro
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


OBJECTS_DIR = build/
MOC_DIR = build/
UI_DIR = ui/

lupdate_only {
SOURCES += \
	src/settings.cpp \
        src/main.cpp \
        src/mainwindow.cpp
}

HEADERS += \
	src/settings.h \
        src/mainwindow.h

CONFIG += \
	console \
	c++11

RESOURCES += \
    pomodoro.qrc

# Default rules for deployment.
include(deployment.pri)


TRANSLATIONS += \
		ts/pomodoro-timer_ru_RU.ts

