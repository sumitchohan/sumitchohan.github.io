log("Script loaded! Version=1.9"); 
function writeToFile(filePath,fileContent,append){
  if(typeof tk != "undefined"){
    tk.writeFile(filePath,fileContent,append); 
    log(`writeFile called for path= ${filePath} and content=${fileContent}`);
  }
  else{
    log("tk not defined");
    log(`writeToFile will not be executed for path= ${filePath} and content=${fileContent}`);
  }
}

  var imported = document.createElement('script');
      imported.src = 'https://classy-abrupt-scene.glitch.me/util.js?ts=' + Date.now();
      document.head.appendChild(imported);



fetch("https://sumitchohan.github.io/tasker.json")
  .then((response) => response.json())
  .then((data) =>writeToFile('file2.txt',JSON.stringify(data),false));
