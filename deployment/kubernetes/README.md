# Kubernetes Deployment Code 



## Conceptos Básicos de Kubernetes

**Pods**: Son la unidad más pequeña desplegable en Kubernetes. Un Pod encapsula uno o más contenedores que comparten almacenamiento, red y especificaciones sobre cómo ejecutarlos. En el contexto de un modelo de ML, un Pod podría contener tu modelo servido con una API REST.

**Nodes (Nodos)**: Son las máquinas (físicas o virtuales) que ejecutan tus aplicaciones. Cada nodo tiene los servicios necesarios para ejecutar Pods y es gestionado por el plano de control de Kubernetes. Un clúster típico tiene múltiples nodos para alta disponibilidad.

**Cluster**: Es el conjunto de nodos más el plano de control. Es tu infraestructura completa de Kubernetes.

**Deployments**: Definen cómo desplegar y actualizar tus Pods. Permiten actualizaciones sin tiempo de inactividad (rolling updates) y escalado automático.

**Services**: Exponen tus Pods a través de una red estable, proporcionando balanceo de carga entre múltiples réplicas del mismo Pod.

**ConfigMaps y Secrets**: Almacenan configuración y datos sensibles (como credenciales) separados del código de tu aplicación.

**Persistent Volumes (PV) y Persistent Volume Claims (PVC)**: Gestionan almacenamiento persistente para datos que deben sobrevivir a reinicios de Pods.

## Kubernetes para MLOps

En MLOps, Kubernetes se utiliza para orquestar todo el ciclo de vida del machine learning:

**1. Entrenamiento de Modelos:**
- Puedes crear Jobs o CronJobs para ejecutar scripts de entrenamiento
- Usar GPU nodes para entrenamientos intensivos
- Escalar dinámicamente según la carga de trabajo
- Ejemplo: Kubeflow Pipelines para orquestar pipelines de entrenamiento complejos

**2. Servir Modelos (Model Serving):**
- Desplegar modelos como microservicios en Pods
- Usar herramientas como KServe, Seldon Core o TensorFlow Serving
- Escalado automático basado en demanda (Horizontal Pod Autoscaler)
- Versionado de modelos con canary deployments o blue-green deployments

**3. Gestión de Experimentos:**
- MLflow o Kubeflow para tracking de experimentos
- Cada experimento puede correr en su propio Pod aislado

**4. Feature Engineering y Pipelines de Datos:**
- Airflow o Argo Workflows ejecutándose en Kubernetes
- Procesamiento distribuido con Spark on Kubernetes

**5. Monitoreo:**
- Prometheus y Grafana para métricas del modelo
- Detección de drift y degradación del modelo

**Ventajas para MLOps:**
- Escalabilidad automática
- Portabilidad entre clouds
- Reproducibilidad del entorno
- Eficiencia en recursos (compartir GPUs, escalar a cero cuando no se usa)
- Gestión declarativa de infraestructura

