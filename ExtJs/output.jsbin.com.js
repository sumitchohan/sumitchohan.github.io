function delay(ms) {
    return new Promise(function (resolve) {
        setTimeout(resolve, ms);
    });
}

await delay(10000)

document.getElementById("txt").innerText="done"
