#

# ANDROID_IMAGE="jacekmarchwicki/android"
ANDROID_IMAGE="mingc/android-build-box"

DOCKER_OPTIONS="--tty"
DOCKER_OPTIONS="${DOCKER_OPTIONS} --interactive"
DOCKER_OPTIONS="${DOCKER_OPTIONS} --volume=$(pwd)/gradle/docker:/root/.gradle"
DOCKER_OPTIONS="${DOCKER_OPTIONS} --volume=$(pwd):/opt/workspace"
DOCKER_OPTIONS="${DOCKER_OPTIONS} --workdir=/opt/workspace"
DOCKER_OPTIONS="${DOCKER_OPTIONS} --rm"

docker run ${DOCKER_OPTIONS} ${ANDROID_IMAGE}  /bin/sh -c "./gradlew build"

