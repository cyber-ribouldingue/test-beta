//test
#include <QtTest>

// add necessary includes here

class CppTest : public QObject
{
    Q_OBJECT

public:
    CppTest();
    ~CppTest();

private slots:
    void initTestCase();
    void cleanupTestCase();
    void test_case1();
};

CppTest::CppTest() { }

CppTest::~CppTest() { }

void CppTest::initTestCase() { }

void CppTest::cleanupTestCase() { }

void CppTest::test_case1() { }

QTEST_APPLESS_MAIN(CppTest)

#include "tst_cpptest.moc"
