#ifndef LOG_H
#define LOG_H

#include <QDebug>
#include <QFile>
#include <QString>
#include <QTextStream>

class Log
{
public:
    static bool init();
    static void deinit();

    static QString serviceLogFileNamePath();

    static void clearLogs();
    static void cleanUp();

private:
    friend void debugMessageHandler(QtMsgType type, const QMessageLogContext& context, const QString& msg);

    static QFile m_file;
    static QString m_logFileName;
    static QTextStream m_textStream;
};

#endif // LOG_H
