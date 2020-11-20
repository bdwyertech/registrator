package main

import (
	_ "github.com/bdwyertech/registrator/consul"
	_ "github.com/bdwyertech/registrator/consulkv"
	_ "github.com/bdwyertech/registrator/etcd"
	_ "github.com/bdwyertech/registrator/skydns2"
	_ "github.com/bdwyertech/registrator/zookeeper"
)
