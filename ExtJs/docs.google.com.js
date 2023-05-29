
function delay(ms) {
    return new Promise(function (resolve) {
        setTimeout(resolve, ms);
    });
}
(async () => {
    await delay(10000);
    var elements = document.getElementsByTagName("div");
    for (let i = 0; i < elements.length; i++) {
        if (elements[i].innerHTML === "KeyValue") {
            console.log(elements[i].outerHTML)
            elements[i].remove();
        }
    }
})();


