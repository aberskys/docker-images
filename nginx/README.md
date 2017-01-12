# Base nginx docker image

Uses latest nginx for CentOS & includes envplate used for templating config files with environmental variables

# Usage
 * Add custom configuration files to `/etc/sites-enabled` and start container
 * See https://github.com/kreuzwerker/envplate for how to customize templates
 * Environment variables should be added to docker-compose YAML or separate YAML file used in docker-compsoe version 2
