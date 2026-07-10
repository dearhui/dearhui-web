.PHONY: dev-main dev-clinic dev-trashtruck dev-myfunds dev-twetf build-main build-clinic build-trashtruck build-myfunds build-twetf build-all deploy-twetf

dev-main:
	cd sites/main && npm run dev

dev-clinic:
	cd sites/clinic && npm run dev

dev-trashtruck:
	cd sites/trashtruck && npm run dev

dev-myfunds:
	cd sites/myfunds && npm run dev

dev-twetf:
	cd sites/twetf && npm run dev

build-main:
	cd sites/main && npm run build

build-clinic:
	cd sites/clinic && npm run build

build-trashtruck:
	cd sites/trashtruck && npm run build

build-myfunds:
	cd sites/myfunds && npm run build

build-twetf:
	cd sites/twetf && npm run build

build-all: build-main build-clinic build-trashtruck build-myfunds build-twetf

# twetf 是 direct-upload 專案（其他站為 git-integrated），發布用這個
deploy-twetf: build-twetf
	npx wrangler pages deploy sites/twetf/dist --project-name dearhui-twetf --branch main --commit-dirty=true
