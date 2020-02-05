# Huggin

A Helm chart for Kubernetes

## Parameters

**Parameter** | **Description** | **Default**
--- | --- | ---
`names.deployment` |  The name of the deployment | `huginn`
`names.service` |  The name of the service | `huginn`
`names.secret` |  The name of the secret | `huggin`
`names.ingress` |  The name of the Ingress rule | `huggin`
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
`ingress.tls` |  TLS Settings for Ingress | `{}`
`ingress.annotations` |  Annotations for the ingress | `{}`
`smtp.domain` |  Mail domain to send from | `huggin.local`
`smtp.username` |  Email Account Username | `huginn@huggin.local`
`smtp.password` |  Email Account Password | `hugginwithhuginn`
`smtp.server` |  Email Server Address | `mail.local`
`smtp.port` |  Email Server Port | `465`
`smtp.authentication` |  Email Server authenticaiton type | `plain`
`smtp.starttls` |  Email Server use STARTTLS | `True`
`invitation_code` |  Huginn Invitation Code | `HUGMEHUGINN`
`db.deploy` |  Deploy a database with this chart, or not? | `True`
`db.address` |  Database Address - Can be external or point to an existing database | `nil`
`db.port` |  Database Port | `5432`
`db.username` |  Database Username | `huginn`
`db.password` |  Database Password | `huggingwithsql`
`twitter.oauth.key` |  Twitter OAuth2 Key | `tweettweet`
`twitter.oauth.secret` |  Twitter OAuth2 Secret | `twoottweet`
`postgresql.fullnameOverride` |  The name for the database | `huginn-sql`
`postgresql.postgresqlUsername` |  Set the username here to the same one as in `db.username` | `huginn`
`postgresql.postgresqlPassword` |  Set the password here to the same one as in `db.password` | `huggingwithsql`
`postgresql.service.port` |  Make the port the same as `db.port` | `5432`