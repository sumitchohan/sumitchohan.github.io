log("Script loaded! Version=1.8"); 
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
fetch("https://sumitchohan.github.io/tasker.json")
  .then((response) => response.json())
  .then((data) =>writeToFile('file2.txt',JSON.stringify(data),false));
