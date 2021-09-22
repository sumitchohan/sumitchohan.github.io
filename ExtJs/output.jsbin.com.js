function delay(ms) {
    return new Promise(function (resolve) {
        setTimeout(resolve, ms);
    });
}

(async () => { 
    await delay(3000);
    document.getElementById("txt").innerText="done1";
})();

 
