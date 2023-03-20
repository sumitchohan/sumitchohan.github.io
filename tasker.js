log("Script loaded! Version=1.3"); 
function writeToFile(filePath,fileContent,append){
  if(tk){
    log("tk not defined");
    log('writeToFile will not be executed for path= ${filePath} and content=${fileContent}`);
  }
  else{
    tk.writeFile(filePath,fileContent,append); 
    log('writeFile called for path= ${filePath} and content=${fileContent}`);
  }
}
fetch("https://sumitchohan.github.io/tasker.json")
  .then((response) => response.json())
  .then((data) =>tk.writeFile('file2.txt',JSON.stringify(data),false));
