# bitwarden

Bitwarden is a self-hosted Open-Source password manager

## Parameters

**Parameter** | **Description** | **Default**
--- | --- | ---
`names.deployment` |  The name of the service | `bitwarden`
`names.service` |  The name of the secret | `bitwarden`
`names.secret` |  The name of the Ingress rule | `bitwarden`
`names.ingress` |  Main App | `bitwarden`
`app.replicas` |  Labels are customizable to how you like. | `1`
`app.labels.app` |  Set the resources you want to allocate to each pod | `bitwarden`
`app.resources` |  | `{}`
`app.image.image` |  The Image Pull Policy (The same one if you were writing it yourself!) | `bitwardenrs/server`
`app.image.pullPolicy` |  | `IfNotPresent`
`app.service.internalPort` |  The name of the port | `80`
`app.service.name` |  | `http-bitwarden`
`app.probes.liveness.httpPath` |  | `/`
`app.probes.readiness.httpPath` |  | `/`
`ingress.enabled` |  Either `traefik` or `kube`, Defines the type of ingress rule to use | `True`
`ingress.type` |  The host you can access this service at | `kube`
`ingress.host` |  A path you can access it at, It is not recommended to change it off `/` | `bitwarden.local`
`ingress.path` |  TLS Settings for Ingress | `/`
`ingress.tls` |  | `{}`
`ingress.annotations` |  | `{}`