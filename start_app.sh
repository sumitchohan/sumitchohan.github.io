#pip install azure-identity requests
#curl -o start_app.py https://sumitchohan.github.io/start_app.py && python start_app.py
echo '<h1>Token Retrieved. Server Running.</h1>' > index.html && python -m http.server 8080
