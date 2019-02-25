module github.com/endurio/ndrw

replace (
	github.com/endurio/ndrd => ../ndrd
	github.com/endurio/ndrd/chainutil => ../ndrd/chainutil
	github.com/endurio/ndrw => ./
	github.com/endurio/neutrino => ../neutrino
)

require (
	github.com/btcsuite/btclog v0.0.0-20170628155309-84c8d2346e9f
	github.com/btcsuite/golangcrypto v0.0.0-20150304025918-53f62d9b43e8
	github.com/btcsuite/websocket v0.0.0-20150119174127-31079b680792
	github.com/coreos/bbolt v1.3.2
	github.com/davecgh/go-spew v1.1.1
	github.com/endurio/ndrd v0.0.0-20190213025234-306aecffea32
	github.com/endurio/ndrd/chainutil v0.0.0-20180706230648-ab6388e0c60ae4834a1f57511e20c17b5f78be4b
	github.com/endurio/neutrino v0.0.0-20181205073459-30b359e8a641
	github.com/golang/protobuf v1.2.0
	github.com/jessevdk/go-flags v1.4.0
	github.com/jrick/logrotate v1.0.0
	github.com/lightninglabs/gozmq v0.0.0-20180324010646-462a8a753885
	golang.org/x/crypto v0.0.0-20190211182817-74369b46fc67
	golang.org/x/net v0.0.0-20190206173232-65e2d4e15006
	google.golang.org/grpc v1.18.0
)
