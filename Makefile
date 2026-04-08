.PHONY: dev-main dev-clinic dev-trashtruck dev-myfunds build-main build-clinic build-trashtruck build-myfunds build-all

dev-main:
	cd sites/main && npm run dev

dev-clinic:
	cd sites/clinic && npm run dev

dev-trashtruck:
	cd sites/trashtruck && npm run dev

dev-myfunds:
	cd sites/myfunds && npm run dev

build-main:
	cd sites/main && npm run build

build-clinic:
	cd sites/clinic && npm run build

build-trashtruck:
	cd sites/trashtruck && npm run build

build-myfunds:
	cd sites/myfunds && npm run build

build-all: build-main build-clinic build-trashtruck build-myfunds
