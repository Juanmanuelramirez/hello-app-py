from flask import Flask, request
app = Flask(__name__)
@app.route("/", methods=["GET"])
def hello():
    """ Regresa los parametros HTTP obtenidos. """
    who = request.args.get("who", "World")
    return f"Hello {who}!\n"

    # Usar solo cuando se corre localmente. cuando se despliegue en Cloud Run,
    # un servidor de preosesos como Gunicorn sirve para el app.
if __name__ == "__main__":
    app.run(host="localhost", port=8080, debug=True)