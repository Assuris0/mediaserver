# autopirate-storage

A Helm chart for Kubernetes, crafted by the finest chefs

## Parameters

**Parameter** | **Description** | **Default**
--- | --- | ---
`names.pvc.media` |  Name of the downloads claim | `autopirate-media`
`names.pvc.downloads` |  | `autopirate-downloads`
`app.labels.app` |  Manage the storage | `autopirate-storage`
`app.storage.media.size` |  Storage for downloaded items | `500Gi`
`app.storage.downloads.size` |  | `200Gi`
