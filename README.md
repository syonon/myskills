# README.md

利用している[Agent Skills](https://agentskills.io/)の管理を行うリポジトリ。

## 使い方

### インストール

vercel-labsのskillsを利用する。 サイトから直接コピペできる　`npx skills add` を利用するため、ディレクトリ構造は `skills`ではなく、 `.agents/skills` を採用。

ホーム配下の`$HOME/.agents/skills`へコピーする場合:

```bash
./scripts/copy-skills-to-home.sh
```

### 日本語ドキュメント

`SKILL.md` ファイルは消費するトークンの都合上英語で運用を行いたい。日本語にした内容は `docs/skills-ja` で管理する。

## リンク

[skills.sh](https://skills.sh/)
[vercel-labs/skills - GitHub](https://github.com/vercel-labs/skills/)

[superpowers](https://github.com/obra/superpowers)
[everything-claude-code](https://github.com/affaan-m/everything-claude-code)