---
description: "Build Trigger & Regression Tests - Automatically runs regression tests when new checks are reported on the repository"
on:
  check_run:
    types: [created, completed]
permissions:
  contents: read
  checks: read
  pull-requests: read
tools:
  github:
    toolsets: [default]
safe-outputs:
  add-comment:
    max: 5
  create-issue:
    max: 2
---

# Build Trigger & Regression Tests Workflow

When a new check run is completed in the repository, automatically trigger regression tests and report the results.

## Your Task

1. **Identify the completed check**: Read the check run details to understand what triggered this workflow.

2. **Run regression tests**: Execute the regression test suite for this C++ project. Use appropriate commands:
   - First, check what build/test scripts are available in the repository (look for Makefile, CMakeLists.txt, build scripts, or test directories)
   - Run the regression tests with the appropriate command
   - Capture the test results and any failures

3. **Report results**: 
   - If all regression tests pass: Post a comment on the related PR summarizing the test results
   - If regression tests fail: Create a detailed issue documenting the failures and suggesting next steps
   - Always include a link to the check run that triggered this workflow

4. **Context information**:
   - Check name from the triggering event
   - Check conclusion (success/failure)
   - Head branch
   - Commit SHA

## Important Guidelines

- Use the GitHub MCP tools to search for any open PRs related to the current branch
- If tests fail, create an issue with the tag "regression-test-failure" for tracking
- If no regressions are found, use the noop safe output to signal successful completion
- Keep comments concise and actionable
- Link back to the triggering check run in all communications
