---
name: principles
description: 設計、実装、デバッグ、テスト、リファクタリング、完了判定の判断を支える原則集の索引。コードを書く前のデータ構造の選択、差分の大きさ、検証やテストの妥当性、根本原因の追跡などで判断するときに参照し、該当する原則の本文を読んで適用する。
---

# 原則の索引

各原則の本文は `references/` にある。下の「いつ適用するか」に当てはまったら、その原則のファイルを全文読んでから適用する。索引の要約だけで適用しない。

## 引用ルール

- 返答では、判断に影響した原則の名前と、それによって変わった具体的な判断を書く。
- 引用してよいのは、このセッションで本文を読んだ原則だけ。
- 判断の変化を示さずに名前だけ挙げるのは適用ではない。

## 基本

| 原則 | いつ適用するか | 本文 |
| --- | --- | --- |
| 怠惰のプロトコル | リファクタリング、差分の大きさの判断、抽象化・レイヤー・シグナルの受け渡しを足したくなったとき。削除と最小の変更を優先する | [laziness-protocol.md](references/laziness-protocol.md) |
| 土台から考える | ロジックを書く前。中心となる型とデータ構造、土台と機能の順序、並行する主体が何を共有するかを決める | [foundational-thinking.md](references/foundational-thinking.md) |
| 第一原理から再設計する | 既存の設計に新しい要件を組み込むとき。最初からその要件があった前提で設計し直す | [redesign-from-first-principles.md](references/redesign-from-first-principles.md) |
| 前提を疑う | 同じ前提に立った修正が 2 回以上同じ検査で失敗したとき。次の修正の前に偏りの分布を調べ、前提そのものを疑う | [attack-the-premise.md](references/attack-the-premise.md) |
| 足す前に引く | 追加、リファクタリング、書き直しの順序を決めるとき。不要なものを先に消し、単純になった土台の上に作る | [subtract-before-you-add.md](references/subtract-before-you-add.md) |
| 読み手の負荷を最小にする | 追いにくいコードをレビューまたは整理するとき。レイヤーと隠れた状態を数え、呼び出し元が 1 つのラッパーを畳み、可変状態の範囲を狭める | [minimize-reader-load.md](references/minimize-reader-load.md) |
| 結果志向で進める | 段階の区切りが明確な計画的な書き直しや移行。一時的な互換状態を守らず、目標の構成に収束させる | [outcome-oriented-execution.md](references/outcome-oriented-execution.md) |
| 体験を優先する | プロダクト、UX、機能範囲のトレードオフ。実装の都合より使う人の体験を選ぶ | [experience-first.md](references/experience-first.md) |
| てこを作る | 自明でない作業全般。手作業ではなく、作業を行うか正しさを示すツール（codemod、スクリプト、生成器）を作る | [build-the-lever.md](references/build-the-lever.md) |

## 設計

| 原則 | いつ適用するか | 本文 |
| --- | --- | --- |
| ドメインをモデル化する | 状態を持つロジック、分岐の多いコード、同じ形の前提が複数ファイルに散らばるコードを書くとき。条件分岐を散らさず構造で表す | [model-the-domain.md](references/model-the-domain.md) |
| 境界の規律 | 検証、エラー処理、フレームワークとの接続を書くとき。検査は境界に集め、内部の型は信頼し、業務ロジックは純粋関数に置く | [boundary-discipline.md](references/boundary-discipline.md) |
| 型システムの規律 | 型や関数シグネチャを設計するとき。不正な状態を表現できなくし、意味の違うプリミティブを区別し、外部データは境界でパースする | [type-system-discipline.md](references/type-system-discipline.md) |
| 操作を冪等にする | クラッシュや再試行の中で動くコマンド、ライフサイクル処理、ループを設計するとき。何度実行しても同じ最終状態に収束させる | [make-operations-idempotent.md](references/make-operations-idempotent.md) |
| 呼び出し元を移行してから旧 API を消す | 旧い呼び出し元が残る状態で新しい内部 API を入れるとき。移行と削除を同じ段階で行う | [migrate-callers-then-delete-legacy-apis.md](references/migrate-callers-then-delete-legacy-apis.md) |
| 直列化する前に分離する | 並行する主体が同じファイル、ブランチ、キー、オブジェクトに書き込みうるとき。まず共有をなくす | [separate-before-serializing-shared-state.md](references/separate-before-serializing-shared-state.md) |

## 検証

| 原則 | いつ適用するか | 本文 |
| --- | --- | --- |
| 動くことを証明する | 作業を終えて完了を宣言する前。代わりの指標や「コンパイルが通った」ではなく、実物で確かめる | [prove-it-works.md](references/prove-it-works.md) |
| 根本原因を直す | デバッグ。まず再現し、原因に届くまで「なぜ」を繰り返し、そこで直す | [fix-root-causes.md](references/fix-root-causes.md) |
| 検証できる単位に分けて進める | 一括修正、移行、同種の編集の連続、コミットと PR の積み方。各単位を確認で終え、確認してから次へ進む | [sequence-verifiable-units.md](references/sequence-verifiable-units.md) |
| 実装ではなく振る舞いをテストする | テストを書く、変える、残すとき。使う側と同じ呼び方をし、結果をリテラルの期待値と比べる。import した関数がすべて `undefined` を返しても通るテストは、書き直すか消す | [test-behavior-not-implementation.md](references/test-behavior-not-implementation.md) |

## メタ

| 原則 | いつ適用するか | 本文 |
| --- | --- | --- |
| 教訓を構造に埋め込む | 同じ指示を 2 回書いていると気づいたとき。文章を足さず、lint、メタデータ、実行時チェック、スクリプトにする | [encode-lessons-in-structure.md](references/encode-lessons-in-structure.md) |
