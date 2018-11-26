Basic configuration to use filebrowser https://filebrowser.github.io/
 to just browse the provided volume from the containers host.
The folder that is mapped is the volumen from the yaml that is bound to /svr

The provided config.json must be also copied to the /var/data/config/filebrowser folder.

As we want to use filebrowser as a browser and NOT as a "mini nextcloud", we don't want to backup the database, 
hence a file must be created on /var/data/runtime/filebrowser/database.db
It can be done by just
```
mkdir /var/data/runtime/filebrowser
touch /var/data/runtime/filebrowser/database.db
```

This recipe is mainly a gkoerk recipe just adapted to use the folder structure of the funkypenguin's one
