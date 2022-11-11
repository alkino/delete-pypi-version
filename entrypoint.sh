ARGS=""
if [ "$4" ]; then
  ARGS+=" --host $4"
fi

if [ "$5" = "true" ]; then
  ARGS="$ARGS --do-it"
fi

#if [ "$5" ]; 
PYPI_CLEANUP_PASSWORD="$2" pypi-cleanup --username "$1" --package "$3" --days "$6" $ARGS
