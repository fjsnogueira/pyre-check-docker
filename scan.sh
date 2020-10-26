#!/bin/bash

cd /data/source
pyre analyze --save-results-to /data/results
sapp --database-name /data/results/results.db analyze /data/results/taint-output.json