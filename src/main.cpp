#include "mainwindow.h"
#include <QApplication>
#include <QTranslator>

#include "settings.h"
int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    Settings settings(0, "Pomodoro-Timer", "Pomodoro-Timer");
    settings.setVersion(QString(APP_VERSION));

    // Localization
    QString locale;
    if (settings.contains("language")) {
        locale = settings.value("language").toString();
    } else {
        locale = QLocale::system().name();
        settings.setValue("language", locale);
    }

    QTranslator translator;
    if (! locale.startsWith("en")) {
        QString tsFile = "pomodoro-timer_" + locale;

        if (translator.load(tsFile, ":/ts")) {
            qDebug() << "Successfully loaded " + tsFile;
            app.installTranslator(&translator);
        } else {
            qDebug() << "Failed to load " + tsFile;
        }
    }

    MainWindow w;
    w.show();

    return app.exec();
}
