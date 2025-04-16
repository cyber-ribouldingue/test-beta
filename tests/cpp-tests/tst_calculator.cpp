#include <QtTest>
#include "calculator.h"

class CalculatorTest : public QObject
{
    Q_OBJECT

private slots:
    void testAddition();
    void testDivisionByZero();
};

void CalculatorTest::testAddition()
{
    Calculator calc;
    QCOMPARE(calc.add(2, 3), 5);
}

void CalculatorTest::testDivisionByZero()
{
    Calculator calc;
    QVERIFY_EXCEPTION_THROWN(calc.divide(10, 0), std::runtime_error);
}

QTEST_MAIN(CalculatorTest)
#include "tst_calculator.moc"
