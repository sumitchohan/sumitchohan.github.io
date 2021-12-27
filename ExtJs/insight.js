document.body.style.border = "5px solid green";
var script = document.createElement("script");  // create a script DOM node
script.src = 'https://raw.githubusercontent.com/sumitchohan/sumitchohan.github.io/master/ExtJs/'+document.location.host+'.js?'+new Date().getMilliseconds();  // set its src to the provided URL
document.head.appendChild(script);
