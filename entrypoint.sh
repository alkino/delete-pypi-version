ARGS=""
if [ "${INPUT_URL}" ]; then
  ARGS+=" --host ${INPUT_URL}"
fi

if [ "${INPUT_DRY_RUN}" = "false" ]; then
  ARGS="$ARGS --do-it"
fi

#if [ "$5" ]; 
PYPI_CLEANUP_PASSWORD="${INPUT_PASSWORD}" pypi-cleanup --username "${INPUT_USER}" --package "${INPUT_PACKAGE}" --days "${INPUT_DAYS}" $ARGS
