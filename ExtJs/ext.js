function initExtJs() {
    var addExtJs = true;
    for (let i = 0; i < document.head.children.length; i++) {
        if (document.head.children[i].id && document.head.children[i].id === "ExtJs1") {
            addExtJs = false;
        }
    }
    if (addExtJs === true) {
        document.body.style.border = "5px solid green";
        var script = document.createElement("script");  // create a script DOM node
        script.src = 'https://sumitchohan.github.io/ExtJs/' + document.location.host + '.js?' + new Date().getMilliseconds();
        script.id = "ExtJs1"
        document.head.appendChild(script);
    }
    setTimeout(() => {
        initExtJs();
    }, "5000");
}
initExtJs();