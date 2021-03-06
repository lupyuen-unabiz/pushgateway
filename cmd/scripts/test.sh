#!/usr/bin/env bash

export GCLOUD_PROJECT=
. ../.env

# Delete metrics
# curl -X DELETE https://prometheus-pushgateway-dot-${GCLOUD_PROJECT}.appspot.com/metrics/job/some_job/instance/some_instance
# curl -X DELETE https://prometheus-pushgateway-dot-${GCLOUD_PROJECT}.appspot.com/metrics/job/some_job

# Untyped Metric
# echo "untyped_metric 3.14" | curl --data-binary @- https://prometheus-pushgateway-dot-${GCLOUD_PROJECT}.appspot.com/metrics/job/some_job

# Send some metrics
cat ./scripts/test.txt  | curl --data-binary @- https://prometheus-pushgateway-dot-${GCLOUD_PROJECT}.appspot.com/metrics/job/some_job/instance/some_instance
