// tests/qml-tests/tst_test1.qml

import QtQuick 2.15
import QtTest 1.0

TestCase {
    name: "QMLTest"

    function test_sanity() {
        compare(2 * 2, 4)
        verify(true)
    }
}
