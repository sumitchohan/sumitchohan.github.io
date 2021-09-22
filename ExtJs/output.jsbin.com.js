function delay(ms) {
    return new Promise(function (resolve) {
        setTimeout(resolve, ms);
    });
}

(async () => { 
    await delay(3000);
    CreateFile();
    await delay(3000);
    CreateFile();
    await delay(3000);
    CreateFile();
    await delay(3000);
    CreateFile();
})();

 
