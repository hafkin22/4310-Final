from flask import *
from whitenoise import WhiteNoise


app = Flask(__name__)
app.wsgi_app = WhiteNoise(app.wsgi_app, root="static/", prefix="/", index_file="index.html", autorefresh=True)

# You can change the prefix up above and get rid of this route if you just want to host static (which begs the question why you don't use something simpler like Github Pages)


if __name__ == "__main__":
  app.run(threaded=True, port=8000)