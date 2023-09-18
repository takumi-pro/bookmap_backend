# BookMap Backend

- [コーディングルール](#coding-rules)
- [開発構成の概要](#system-configuration)
- [開発環境の構築](#environment-building)
- [使用技術について](#technology-used)
- [各種リポジトリのリンク](#repository)

<h2 id="coding-rules">コーディングルール</h2>
`CONTRIBUTING.md` に記載予定

<h2 id="system-configuration">開発構成の概要</h2>
<img alt="system-configuration" src="https://github.com/takumi-pro/bookmap_backend/assets/65642316/69bd56ea-2a76-430e-9907-5fdc08b0734b">

<h2 id="environment-building">開発環境の構築</h2>

### サーバ起動
```bash
go run main.go
```

### OpenAPIからコード自動生成
```bash
oapi-codegen -package bookmap -generate server reference/bookmap.yaml > src/gen/bookmap.gen.go
```

### DB起動
### DB停止

<h2 id="technology-used">使用技術について</h2>

### 言語・フレームワーク
- Golang 1.19
- Echo 4.11.1

### ORM
- gorm

### OpenAPI Code Generator
- oapi-codegen


<h2 id="repository">各種リポジトリのリンク</h2>

- [バックエンド(api)](https://github.com/takumi-pro/bookmap_backend)
- [フロントエンド](https://github.com/takumi-pro/bookmap_frontend)
- [インフラ（IaC）](https://github.com/takumi-pro/bookmap_infra)
