---
name: unslop
description: あらゆる文章からAI特有の癖を取り除く。常に適用すること。
disable-model-invocation: true
metadata:
    github-path: pstack/skills/unslop
    github-ref: refs/heads/main
    github-repo: https://github.com/cursor/plugins
    github-tree-sha: 35153230eaaf0aa02437e7004bc319b33c5fbe1f
---
# Unslop

文章からAIらしいパターンを取り除き、人間の声を加える。

## 手順

1. 下記のパターンをスキャンする。
2. 書き直す。意味を保ち、意図したトーンに合わせる。
3. 魂を込める（次のセクション参照）。
4. セルフ監査する。「この文章のどこが明らかにAI生成に見えるか？」と問い、残った癖を修正する。

## 魂を込める

パターンを取り除くのは仕事の半分にすぎない。無味乾燥で声のない文章も、同じくらい明らかにAIとわかる。

- **意見を持つ。** 長所と短所を中立的に並べるのではなく、事実に反応する。
- **リズムを変える。** 短い文。そのあとに、時間をかけて語る長い文。混ぜ合わせる。
- **複雑さを認める。** 「印象的」より「印象的だが、どこか不気味でもある」のほうがよい。
- **合うときは「私」を使う。** 一人称は非プロフェッショナルではない。
- **多少の乱れを許す。** 完璧な構成は機械が作ったように見える。
- **具体的に書く。** 「これは懸念される」ではなく「午前3時にエージェントが黙々と動き続けているのは、どこか落ち着かない」と書く。

## 検出して修正するパターン

### 内容

1. **誇張表現。** "pivotal moment"、"testament to"、"evolving landscape"、"setting the stage for"、"indelible mark"、"deeply rooted"。誇張を削り、何が起きたかを述べる。
2. **名前の羅列。** 文脈なしにメディア名を並べる。ひとつ選び、何が言われたかを書く。
3. **表面的な -ing 句。** "highlighting..."、"ensuring..."、"reflecting..."、"showcasing..."、"fostering..."。削除するか、実際の出典を添えて展開する。
4. **宣伝的な言葉。** "nestled"、"vibrant"、"breathtaking"、"groundbreaking"、"renowned"、"stunning"、"must-visit"。中立的な描写を使う。
5. **曖昧な出典。** "Experts believe"、"Industry reports suggest"、"Some critics argue"。出典を明記するか削除する。
6. **定型的な困難の物語。** "Despite challenges... continues to thrive." 具体的な事実に置き換える。

### 言葉づかい

7. **AI語彙。** Additionally、crucial、delve、enduring、enhance、fostering、garner、interplay、intricate、landscape（抽象的な意味）、pivotal、showcase、tapestry（抽象的な意味）、testament、underscore、vibrant。平易な言葉に置き換える。
8. **"is" の気取った言い換え。** "serves as"、"stands as"、"boasts"、"features"。単に "is" や "has" と言う。
9. **"Not just X, but Y."** 要点を直接述べる。
10. **三点セット。** 考えを無理に3つの組にする。自然な数を使う。
11. **同義語の循環。** Protagonist、main character、central figure、hero を1段落で使い回す。ひとつ選び、繰り返し使う。
12. **偽の範囲。** X と Y が意味のある尺度上にないのに "from X to Y" と書く。話題を直接列挙する。

### 文体

13. **エムダッシュの多用。** エムダッシュは完全に避ける。ピリオドかカンマだけを使う（括弧、エンダッシュ、ハイフンをダッシュ代わりにする代用も禁止）。エムダッシュはAIの癖であり、代わりに括弧に手を伸ばすのは癖をひとつ別の癖と交換しているだけ。思考を区切る必要があるなら、文を終えるかカンマを使う。
14. **コロンの多用。** リストや例の前のコロンは問題ない。文中の接続詞としては使わない。"If you're coming from traditional automation: instead of registering event handlers, you describe conditions" のコロンは何も付け加えていない。比較の枠組みなしで要点が自立するように書き直す。"Describing when the scheduler should fire works best as plain English." 意味は同じで、松葉杖のような句読点がない。
15. **太字の多用。** 固有名詞や略語をすべて太字にしない。
16. **インラインヘッダー形式のリスト。** 癖となるのは、太字ラベルとコロンがその行の内容を繰り返す形。"**Performance:** Performance improved..."。これは散文に変換する。ピリオドで終わり、項目名を示し、そのあとに本当に新しい詳細が続く太字の書き出し（"**Schema in TypeScript.** Tables live in one file."）は問題なく、癖ではない。
17. **タイトルケースの見出し。** センテンスケースを使う。
18. **装飾的な絵文字。** 見出しや箇条書きから取り除く。
19. **曲がった引用符。** まっすぐな引用符に置き換える。

### コミュニケーションの痕跡

20. **チャットボット的な言い回し。** "I hope this helps!"、"Let me know if..."、"Of course!"、"Certainly!"、"Found the smoking gun!" 削除する。
21. **知識カットオフの断り書き。** "While specific details are limited..." 出典を探すか削除する。
22. **おもねるトーン。** "Great question! You're absolutely right!" 直接答える。

### 埋め草

23. **埋め草フレーズ。** "In order to" は "To" に。"Due to the fact that" は "Because" に。"It is important to note that" は削除する。
24. **過剰なヘッジ。** "could potentially possibly be argued that it might" は "may" にする。
25. **一般的な結論。** "The future looks bright." 具体的な計画や事実を述べる。

### 専門用語風の言葉

26. **抽象的な比喩名詞。** Substrate、wedge、vector、locus、vantage、nexus、primitive（名詞として）、harness（比喩として）、surface（"API surface" のような用法）、bedrock、scaffolding（比喩として）、modality、paradigm、gold-plating、ratchet（比喩として）、evacuate（コード移動の意味で）、endgame、north star、flywheel。技術的に読めるが、たいていはもっと平易で具体的な言葉がある。"Substrate" は "base" に。"Wedge in" は "add" に。"Vector" は "way" か "method" に。"Gold-plating" は "more than the job needs" に。"Ratchet" はその仕組みの実際の名前か "a limit that only tightens" に。"Evacuate" は "move out" に。"Endgame" は "the last phase" に。具体的な言葉を選ぶ。

### 平易な表現

27. **どう感じるかではなく、何をするかを書く。** "the database stays close at hand"、"SQL you can read"、"types that follow your schema" は感覚を述べている。修正では仕組みや数値を挙げる。"`.toSQL()` returns the exact string sent to the database"、"a column rename fails the build"。その文が読者に何をせよ、何を知れと伝えているかを問い、それを書く。具体的な指示、事実、数値として言い直せないなら削る。もうひとつの確認。その文が別のプロジェクトのドキュメントにそのまま載せられるなら、このプロジェクトについて何も語っていない。削る。
28. **密度の高い文は短くするか分割する。** 読者が文を解釈するために読み返す必要があるなら、2つに分けるか節を落とす。1文に1つの考え。
29. **能動態。** 能動態を優先する。"is/are/was/were + 過去分詞" を見つけたら動作主を明示する。"queries are validated" は "the compiler validates queries" に、"the file is parsed by the loader" は "the loader parses the file" に。受動態が許されるのは、動作主が不明か、本当にどうでもよい場合だけ。
30. **副詞を削るか、より強い動詞を使う。** "runs quickly" は "is fast" か数値に。"significantly improves" は計測した差分に。弱い動詞を副詞で支えているなら、その動詞が間違っている。
31. **平易な言葉を優先する。** "utilize" は "use" に、"leverage" は "use" に、"facilitate" は "help" に、"numerous" は "many" に、"in the event that" は "if" に。気取った同義語のほうが明快なことはめったにない。

## 自然な日本語を記載する

英語の直訳風の単語や文構造は、日本語の文章にしたときに非常に読みづらいです。

32. **語彙レベルの直訳の修正** 「コストを解消する」（solveの直訳。自然な日本語なら「コストを削減する」）、「ジョブの搬送」（dispatchの直訳。自然な日本語なら「配信」）「コストを解消する」（solveの直訳。自然な日本語なら「コストを削減する」）、「ジョブの搬送」（dispatchの直訳。自然な日本語なら「配信」）
33. **構文レベルの直訳の修正**　「この問題は、キャッシュが正しく更新されないことによって引き起こされています。」は自然な日本語なら「キャッシュが正しく更新されないため、この問題が発生しています。」、「私たちは、この実装を選択する決定を行いました。」は自然な日本語なら「この実装を採用しました。」
