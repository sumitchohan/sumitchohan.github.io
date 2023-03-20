const para = document.createElement("p");
const node = document.createTextNode("Script loaded! Version=1.0");
para.appendChild(node);
const element = document.getElementById("div1");
element.appendChild(para);
tk.writeFile('file2.txt','Hello there',false)
