#!/bin/bash
curl -H "Content-Type: application/json" --data "{\"source_type\": \"Branch\", \"source_name\": \"$CIRCLE_BRANCH\"}" -X POST https://registry.hub.docker.com/u/iarcbioinfo/template-nf/trigger/71022421-2df0-4266-9dfa-cacdd9cbf77b/
