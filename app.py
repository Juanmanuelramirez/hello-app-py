# [START hello-app]
from flask import Flask
app = Flask('hello-cloudbuild')

@app.route('/')
def hello():
  return "Hello World!\n"

# Usar solo cuando se corre localmente. cuando se despliegue en Cloud Run,
# un servidor de preosesos como Gunicorn sirve para el app.
if __name__ == '__main__':
  app.run(host = '0.0.0.0', port = 8080)
# [END hello-app]