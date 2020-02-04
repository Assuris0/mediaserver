# Huggin

A Helm chart for Kubernetes

## Parameters

**Parameter** | **Description** | **Default**
--- | --- | ---
`names.deployment` |  The name of the deployment | `Huginn`
`names.service` |  The name of the service | `Huginn`
`app.replicas` |  The number of pods this app should start and maintain | `1`
`app.labels.app` |  App is the only required label | `Huginn`
`app.resources` |  Set the resources you want to allocate to each pod | `{}`
`app.image.image` |  The image to use for this deployment, changing it is not recommended. | `huginn/huginn`
`app.image.pullPolicy` |  The Image Pull Policy (The same one if you were writing it yourself!) | `IfNotPresent`
`app.service.internalPort` |  The port the service exposes on the deployment | `3000`
`app.probes.liveness.httpPath` |  An HTTP path on the container that will return something if it is all live and healthy | `/`
`app.probes.readiness.httpPath` |  An HTTP path on the container that will return something when the container is classified as &quot;Ready&quot; | `/`
`ingress.enabled` |  Enabled Ingress for this deployment | `True`
`ingress.type` |  Either `traefik` or `kube`, Defines the type of ingress rule to use | `traefik`
`ingress.host` |  The host you can access this service at | `huginn.local`
`ingress.path` |  A path you can access it at, It is not recommended to change it off `/` | `/`