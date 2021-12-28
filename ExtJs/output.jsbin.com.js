function delay(ms) {
    return new Promise(function (resolve) {
        setTimeout(resolve, ms);
    });
}
function download(filename, text) {
    var element = document.createElement('a');
    element.setAttribute('href', 'data:text/plain;charset=utf-8,' + encodeURIComponent(text));
    element.setAttribute('download', filename);

    element.style.display = 'none';
    document.body.appendChild(element);

    element.click();

    document.body.removeChild(element);
}
(async () => {
    if (document.location.href.indexOf('meyatej') >= 0) {
        await delay(3000);
        CreateFile();
        await delay(3000);
        CreateFile();
        await delay(3000);
        CreateFile();
        await delay(3000);
        CreateFile();
    }
    else if (document.location.href.indexOf('pelupez') >= 0) {
        await delay(3000);
            document.getElementById('msg').innerText='downloading file 2';
        await delay(3000);
        document.getElementById('btn').click();
        await delay(3000);
        try{
            //download('file1.txt', 'file content'); 
            document.getElementById('link1').click();
        }
        catch(e){
            document.getElementById('msg').innerText=JSON.stringify(e);
        }
    }
})();


