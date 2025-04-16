// tests/qt-tests/tst_test1.cpp

#include <QtTest>
#include <QPushButton>

class QtGuiTest : public QObject
{
    Q_OBJECT

private slots:
    void buttonText();
};

void QtGuiTest::buttonText()
{
    QPushButton button("Click me");
    QCOMPARE(button.text(), QString("Click me"));
}

QTEST_MAIN(QtGuiTest)
#include "tst_test1.moc"
