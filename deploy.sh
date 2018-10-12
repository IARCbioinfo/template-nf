#!/bin/bash
cd ~/project/
commitID=`git log -n 1 --pretty="%h" -- environment.yml`
sed -i '/^# environment.yml/d' Singularity && echo -e "\n# environment.yml commit ID: $commitID\n" >> Singularity
git config --global user.email "delhommet@students.iarc.fr"
git config --global user.name "Circle CI_$CIRCLE_PROJECT_REPONAME_$CIRCLE_BRANCH"
git add .
git status
git commit -m "Generated DAG [skip ci]"
git push origin $CIRCLE_BRANCH

curl -H "Content-Type: application/json" --data "{\"source_type\": \"Branch\", \"source_name\": \"$CIRCLE_BRANCH\"}" -X POST https://registry.hub.docker.com/u/iarcbioinfo/template-nf/trigger/71022421-2df0-4266-9dfa-cacdd9cbf77b/
