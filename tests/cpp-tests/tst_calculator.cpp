#include <QtTest>
#include "calculator.h"

class TestCalculator : public QObject
{
    Q_OBJECT

private slots:
    void testAddition();
    void testDivisionByZero();
};

void TestCalculator::testAddition()
{
    Calculator calc;
    QCOMPARE(calc.add(2, 3), 5);
}

void TestCalculator::testDivisionByZero()
{
    Calculator calc;
    QVERIFY_EXCEPTION_THROWN(calc.divide(10, 0), std::runtime_error);
}

QTEST_MAIN(TestCalculator)
#include "tst_calculator.moc"
