#!/bin/sh

oc delete is/hostinfo-base is/hostinfo-s2i is/hostinfo
oc delete bc/hostinfo-base bc/hostinfo-s2i bc/hostinfo
oc delete dc/hostinfo svc/hostinfo route/hostinfo
