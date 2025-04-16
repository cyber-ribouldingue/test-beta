import QtQuick 2.15
import QtTest 1.2

TestCase {
    name: "ButtonTest"

    Button {
        id: testButton
        text: "Click Me"
        onClicked: {
            console.log("Button clicked");
        }
    }

    function test_buttonClick() {
        mouseClick(testButton);
        // Vérifiez les effets secondaires ici
    }
}
