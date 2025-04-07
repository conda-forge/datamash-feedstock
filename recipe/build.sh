#!/bin/bash
set -e

if [[ "${CONDA_BUILD_CROSS_COMPILATION}" == "1" ]]; then
  CROSS_COMPILATION_CONFIGURE_OPTS="ac_cv_func_strcasecmp=yes ac_cv_func_strncasecmp=yes"
else
  CROSS_COMPILATION_CONFIGURE_OPTS=""
fi


./configure --prefix=$PREFIX ${CROSS_COMPILATION_CONFIGURE_OPTS}
make
make install
