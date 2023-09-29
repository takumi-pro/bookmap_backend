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

### docker network構築
まずはdocker networkを構築する
```bash
docker create network dev_bookmap
```

### docker network削除
```bash
docker delete network dev_bookmap
```

### DB起動
```bash
make up-db
```

### DB停止
```bash
make down-db
```




### DBドキュメントの確認
SchemaSpyを使用して開発環境のDBからER図やテーブル、カラム一覧情報を出力する
にアクセスすることで出力されたドキュメントを確認できる
- http://localhost:8080

起動コマンド
```bash
make up-spy
```

停止コマンド
```bash
make down-spy
```

### Dev Containerのインストール
今回は`Dev Containers（VSCode拡張機能）`を使用してコンテナ内で開発するため、インストールする

### Golang Appコンテナ起動
VSCode左下の`><`アイコンから`コンテナで再度開く`を選択

コンテナの起動に成功したら以下にアクセス可能となる
- http://localhost:8000

### OpenAPIからコード自動生成
OpenAPI仕様書に変更が加わった際にはコードにも変更を反映するためコードを生成する
```bash
oapi-codegen -package bookmap -generate server reference/bookmap.yaml > src/gen/bookmap.gen.go
```

<h2 id="technology-used">使用技術について（仮）</h2>

### 言語・フレームワーク
- Golang 1.19
- Echo 4.11.1

### OpenAPI Code Generator
- oapi-codegen


<h2 id="repository">各種リポジトリのリンク</h2>

- [バックエンド(api)](https://github.com/takumi-pro/bookmap_backend)
- [フロントエンド](https://github.com/takumi-pro/bookmap_frontend)
- [インフラ（IaC）](https://github.com/takumi-pro/bookmap_infra)
