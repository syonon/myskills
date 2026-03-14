---
name: writing-plans
description: Use when you have a spec or requirements for a multi-step task, before touching code
---

# Writing Plans

## Overview

Write lightweight implementation plans that are easy to read and execute. Focus on the structure of the work: what will change, which files are involved, what each task is responsible for, and which tests prove the behavior. Keep plans concrete, but do not turn them into step-by-step coding transcripts. DRY. YAGNI. TDD.

Assume the engineer is capable and already has normal development context. Give them enough direction to implement safely, but avoid over-explaining obvious coding mechanics.

**Announce at start:** "writing-plans skillを使用して、実装計画を作成します。"

**Context:** This should be run in a dedicated worktree (created by brainstorming skill).

**Save plans to:** `docs/exec-plans/YYYYMMDD-<feature-name>.md`

- (User preferences for plan location override this default)

## Scope Check

If the spec covers multiple independent subsystems, it should have been broken into sub-project specs during brainstorming. If it wasn't, suggest breaking this into separate plans — one per subsystem. Each plan should produce working, testable software on its own.

## File Structure

Before defining tasks, map out which files will be created or modified and what each one is responsible for. This is where decomposition decisions get locked in.

- Design units with clear boundaries and well-defined interfaces. Each file should have one clear responsibility.
- You reason best about code you can hold in context at once, and your edits are more reliable when files are focused. Prefer smaller, focused files over large ones that do too much.
- Files that change together should live together. Split by responsibility, not by technical layer.
- In existing codebases, follow established patterns. If the codebase uses large files, don't unilaterally restructure - but if a file you're modifying has grown unwieldy, including a split in the plan is reasonable.

This structure informs the task decomposition. Each task should produce self-contained changes that make sense independently.

## Bite-Sized Task Granularity

Prefer 4-7 meaningful tasks for a medium-sized feature.

- Tasks should represent coherent units of work, not every keystroke.
- Keep TDD as a rule, but do not enumerate every red-green-refactor substep unless the workflow is unusually fragile.
- Use checklists for execution tracking.

## Plan Document Header

**Every plan MUST start with this header:**

```markdown
# [Feature Name] Implementation Plan

**Goal:** [One sentence describing what this builds]

**Architecture:** [2-3 sentences about approach]

**Tech Stack:** [Key technologies/libraries]

---
```

## Task Structure

```markdown
### Task N: [Component Name]

**Files:**

- Create: `exact/path/to/file.py`
- Modify: `exact/path/to/existing.py`
- Test: `tests/exact/path/to/test.py`

- [ ] [タスクの目的と変更内容を簡潔に書く]
- [ ] [必要なテスト観点を書く]
- [ ] [依存する前提や注意点があれば書く]
```

Do not include full code snippets by default.
Do not include exact shell commands by default unless the command itself is important to the plan.
Do not include expected failure text unless it is essential to avoid ambiguity.

## Remember

- Exact file paths always
- Keep plans lightweight by default
- Describe responsibilities and test coverage, not full implementations
- Include code snippets only when the shape is non-obvious or highly coupled
- Include commands only when they materially help execution
- Reference relevant skills with @ syntax
- DRY, YAGNI, TDD

## Plan Review Loop

After completing each chunk of the plan:

1. Dispatch plan-reviewer subagent
   - Provide: chunk content, path to spec document
2. If ❌ Issues Found:
   - Fix the issues in the chunk
   - Re-dispatch reviewer for that chunk
   - Repeat until ✅ Approved
3. If ✅ Approved: proceed to next chunk (or execution handoff if last chunk)

**Chunk boundaries:** Use `## Chunk N: <name>` headings to delimit chunks. Each chunk should be ≤1000 lines and logically self-contained.

**Review loop guidance:**

- Same agent that wrote the plan fixes it (preserves context)
- If loop exceeds 5 iterations, surface to human for guidance
- Reviewers are advisory - explain disagreements if you believe feedback is incorrect

## Execution Handoff

After saving the plan:

**"実装計画を作成しました。 `docs/exec-plans/<filename>.md`."**

## Output Style

- Always produce the lightweight format.
- Start with a short overview section.
- Include a concise file map grouped by area when helpful.
- Prefer task-level checklists over step-by-step coding transcripts.
- Include testing expectations, but summarize them as coverage points.
- End with clear completion criteria.
