## 開発ワークフロー

| フェーズ | Skill | 成果物 |
| --- | --- | --- |
| やりたいことの共有と PR 分割 | `feature-breakdown` | `docs/work/features/` の機能スペック |
| PR ごとの仕様・設計・テスト設計 | `implementation-plans` → `grill-me`, `writing-plans`, `test-design`, `architecture-decision-records` | `docs/work/exec-plans/` の計画書 |
| 実装 | `tdd-implementation` | タスク単位のコミット |
| 仕上げ | `code-simplify`, `codex-review`, `docs-feature-specification` | `docs/specs/` の機能仕様書 |
| PR 作成 | `writing-pr-description` | PR。計画書を Issue に転記して削除 |

1 PR で収まる変更は `implementation-plans` から始める。`docs/work/` は作業用で、PR 作成前に Issue へ転記して削除する。

設計、実装、デバッグの判断は `principles` を参照する。原則の索引と本文 20 個をまとめたもので、各ワークフロー Skill から場面ごとに参照する。原則は [cursor/plugins の pstack](https://github.com/cursor/plugins/tree/main/pstack)（MIT License）を日本語に訳したもの。

## skillのインストール

```bash
gh skill install syonon/myskills skills/<skill name>
```

## skillのアップデート

```bash
gh skill update <skill name>
```

## skillの削除

gh skillコマンドでは非対応のため、`rm`または`trash`で対応

```bash

```
