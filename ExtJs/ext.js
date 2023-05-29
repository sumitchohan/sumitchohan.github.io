 

try {
    document.body.style.border = "5px solid green";
    var script = document.createElement("script");  // create a script DOM node
    script.src = 'https://sumitchohan.github.io/ExtJs/' + document.location.host + '.js?' + new Date().getMilliseconds();
    script.id = "ExtJs1"
    document.head.appendChild(script);
  } catch (error) { 
  }
  