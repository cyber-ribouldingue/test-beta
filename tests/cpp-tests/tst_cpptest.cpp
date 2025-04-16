// tests/cpp-tests/tst_cpptest.cpp

#include <QtTest>

class CppTest : public QObject
{
    Q_OBJECT

private slots:
    void addition();
    void stringEquality();
};

void CppTest::addition()
{
    QCOMPARE(2 + 3, 5);
}

void CppTest::stringEquality()
{
    QString s1 = "test";
    QString s2 = "test";
    QCOMPARE(s1, s2);
}

QTEST_APPLESS_MAIN(CppTest)
#include "tst_cpptest.moc"
