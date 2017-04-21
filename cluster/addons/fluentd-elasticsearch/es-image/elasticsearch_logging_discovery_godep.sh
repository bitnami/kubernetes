#!/bin/bash

for i in github.com/tools/godep \
  golang.org/x/sync/errgroup \
  github.com/gogo/protobuf/proto \
  github.com/golang/protobuf/proto \
  github.com/davecgh/go-spew/spew \
  github.com/golang/glog \
  github.com/google/gofuzz \
  github.com/PuerkitoBio/purell \
  github.com/blang/semver \
  github.com/spf13/pflag \
  github.com/docker/distribution \
  github.com/ugorji/go/codec \
  github.com/emicklei/go-restful \
  github.com/ghodss/yaml \
  github.com/go-openapi/jsonpointer \
  github.com/go-openapi/jsonreference \
  github.com/go-openapi/spec \
  github.com/juju/ratelimit \
  github.com/pborman/uuid \
  github.com/googleapis/gax-go \
  github.com/coreos/go-oidc/http \
  github.com/coreos/pkg/health \
  github.com/jonboulle/clockwork \
  golang.org/x/oauth2 \
  google.golang.org/appengine \
  gopkg.in/inf.v0 \
  cloud.google.com/go/compute/metadata \
  k8s.io/kubernetes/pkg/api ; do
    go get $i
done
cd /go/src/github.com/docker/distribution && git checkout release/2.6 &&
cd /go/src/github.com/emicklei/go-restful && git checkout 1.0.0
cd /go/src/k8s.io/kubernetes && git checkout v1.5.6 &&
cd /go/src/elasticsearch_logging_discovery &&
/go/bin/godep save
