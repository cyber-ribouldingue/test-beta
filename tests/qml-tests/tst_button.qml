import QtQuick 2.15
import QtTest 1.2
import QtQuick.Controls 2.15

TestCase {
    name: "ButtonTest"
    when: windowShown

    function test_buttonClick() {
        var button = createTemporaryQmlObject('import QtQuick.Controls 2.15; Button { text: "Click Me" }', testCase);
        verify(button !== null, "Le bouton doit être créé");

        mouseClick(button);
        // Ajoutez ici des vérifications supplémentaires après le clic
    }
}
