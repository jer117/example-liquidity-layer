
.PHONY: clean
clean:
	rm -rf node_modules
	npm run clean
	cd evm && $(MAKE) clean
	cd solana && $(MAKE) clean
	cd universal/rs && cargo clean

.PHONY: clean-install
clean-install: clean node_modules

node_modules:
	npm ci

.PHONY: build
build: node_modules
	npm run build:universal
# cd evm && npm pack
	cd evm && $(MAKE) build
	cd evm && npm run build
# cd solana && $(MAKE) make
# cd solana && $(MAKE) build
# cd solana && $(MAKE) idl
# cd solana && npm pack
# cd solana && make all
	cd solana && npm run build
	cd universal/ts && npm run build
	cd solver && npm run relayer
# cd universal && npm pack