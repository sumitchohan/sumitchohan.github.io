
setTimeout(() => {
    (async () => {
        try {
            if (typeof (jQuery) === "undefined") {
                var jq = document.createElement('script');
                jq.src = "https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js";
                document.getElementsByTagName('head')[0].appendChild(jq);
            }
            function timeout(ms) {
                return new Promise((resolve, reject) => setTimeout(resolve, ms));
            }
            function log(message) {
                console.log(message);
            }
            await timeout(5000)
            document.getElementById("result").innerHTML = 'here i am!';
        } catch (err) {
            console.log(err);
        }
    })();
}, 10);
console.log("done");
