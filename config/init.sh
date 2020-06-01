#!/bin/bash
set -e
# find /etc/nginx/ -name 'nginx.conf' | xargs sed -i "s nine-dev $ENV_SPACE  g"
exec "$@"
