# lidarr

A Helm chart for Kubernetes, crafted by the finest chefs

## Parameters

**Parameter** | **Description** | **Default**
--- | --- | ---
`names.deployment` |  The name of the service | `lidarr`
`names.service` |  The name of the secret | `lidarr`
`names.secret` |  The name of the Ingress rule | `lidarr`
`names.ingress` |  The name of the pvcs | `lidarr`
`names.pvc.config` |  | `lidarr-config`
`app.replicas` |  Labels are customizable to how you like. | `1`
`app.labels.app` |  Set the resources you want to allocate to each pod | `lidarr`
`app.resources` |  | `{}`
`app.image.image` |  The Image Pull Policy (The same one if you were writing it yourself!) | `linuxserver/lidarr:latest`
`app.image.pullPolicy` |  | `IfNotPresent`
`app.service.internalPort` |  The name of the port | `8686`
`app.service.name` |  | `http-lidarr`
`app.probes.liveness.httpPath` |  | `/`
`app.probes.readiness.httpPath` |  | `/`
`app.storage.config.size` |  | `100Mi`
`ingress.enabled` |  Either `traefik` or `kube`, Defines the type of ingress rule to use | `True`
`ingress.type` |  The host you can access this service at | `kube`
`ingress.host` |  A path you can access it at, It is not recommended to change it off `/` | `lidarr.local`
`ingress.path` |  TLS Settings for Ingress | `/`
`ingress.tls` |  | `{}`
`ingress.annotations` |  Annotations for the ingress | `{}`