#!/usr/bin/env bash
for i in {1..20}; do
  curl -s -o /dev/null -w "%{http_code}\n" "http://localhost/login?u=admin&p=bad$i"
done
