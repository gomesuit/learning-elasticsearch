# larning-elasticsearch

- 参考
  - https://qiita.com/Esfahan/items/963225cd2d2b6b219c05

```bash
# 動作確認
curl http://192.168.33.10:9200

# インデックス作成
curl -X PUT "http://192.168.33.10:9200/sample_index"

# インデックス一覧
curl http://192.168.33.10:9200/_aliases?pretty

# インデックスの詳細確認
curl http://192.168.33.10:9200/sample_index/_settings?pretty

# データの投入（マッピングも生成される）
curl -X PUT "http://192.168.33.10:9200/sample_index/doc01/1" -d '{
    "title" : "Sample No.1",
    "description" : "This is a sample data",
    "amount" : 20
}'
# curl -XPOST 'http://192.168.33.10:9200/sample_index/sample/_bulk?pretty' --data-binary "@sample.json"

# マッピングの確認
curl "http://192.168.33.10:9200/sample_index/_mapping/doc01?pretty"

# データの確認
curl "http://192.168.33.10:9200/sample_index/doc01/1?pretty"

# データの検索
curl "http://192.168.33.10:9200/sample_index/doc01/_search?q=description:sample&pretty=true"

# シャードの確認
curl "http://192.168.33.11:9200/_cat/shards?v
```

```
curator_cli --host 192.168.33.10 show_indices
```

