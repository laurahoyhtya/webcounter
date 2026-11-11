from flask import Flask, abort, redirect, render_template, request
from counter import Counter

app = Flask(__name__)
cnt = Counter()

@app.route("/")
def index():
    return render_template("index.html", value=cnt.value)

@app.route("/increment", methods=["POST"])
def increment():
    cnt.increase()
    return redirect("/")

@app.route("/reset", methods=["POST"])
def reset():
    cnt.reset()
    return redirect("/")

@app.route("/set-value", methods=["POST"])
def set_value():
    try:
        value = int(request.form["value"])
    except (KeyError, ValueError):
        abort(400)

    cnt.set_value(value)
    return redirect("/")
