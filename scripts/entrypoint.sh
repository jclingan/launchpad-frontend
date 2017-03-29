#!/usr/bin/env bash

APP_JS="target/launchpad-frontend/app*.js"

if [ -n "${KEYCLOAK_SKIP}" ]; then
    sed -i.bckp 's/keycloakSkip:!./keycloakSkip:'${KEYCLOAK_SKIP}'/g' ${APP_JS}
fi
