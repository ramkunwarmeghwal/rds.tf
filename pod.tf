
provider "kubernetes" {
  config_context_cluster   = "minikube"
}


resource "kubernetes_pod" "mypod1" {
  metadata {
    name = "podwebname"
  }

  spec {
    container {
      image = "wordpress:latest"
      
      name  = "mywebcon"

      

        }

     
    }
  }

    
