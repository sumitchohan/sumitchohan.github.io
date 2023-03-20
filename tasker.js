const para = document.createElement("p");
const node = document.createTextNode("Script loaded! Version=1.2");
para.appendChild(node);
const element = document.getElementById("div1");
element.appendChild(para);
fetch("https://sumitchohan.github.io/tasker.json")
  .then((response) => response.json())
  .then((data) =>tk.writeFile('file2.txt',JSON.stringify(data),false));
