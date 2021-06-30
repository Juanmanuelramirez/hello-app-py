# Habilitamos el API de Cloud Build
gcloud services enable container.googleapis.com \
	cloudbuild.googleapis.com \
	sourcerepo.googleapis.com \
	containeranalysis.googleapis.com

# Crea un cluster de GKE que usaaras para implementar 
# la aplicación en este ejercicio 
gcloud container cluster create hello-app-cd \
	--num-nodes 1 --zone us-central1-b

# Si nunca usaste git en cloud shell
# configúralo con tu nombre y direccionde correo electrónico 
git config --global user.email "juan.ramirez.cofete@gmail.com"
git config --global user.name "Juan"


# Conecta la cuenta de usuario de GCP con Cloud Source Repositories
git config credential.helper gcloud.sh


# En Cloud Shell, crea los dos repositorios de git 
# el repositorio app conendrá el codigo fuente 
gcloud source repos create kubernetes-cd-app

# El repositorio env contendrá los manifest 
# para la implementación de Kubernetes 
gcloud source repos create kubernetes-cd-env

# Clona el código de ejemplo de github
cd ~
git clone https://github.com/Juanmanuelramirez/hello-app-py.git