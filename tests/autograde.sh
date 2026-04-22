#!/bin/bash

# Exit on any failure
set -e

echo "Running Autograding Checks..."

# 1. Check if ai-agent.yml has the correct trigger
echo "Checking Mission 2: AI Agent Workflow trigger..."
if grep -q "types: \[labeled\]" .github/workflows/ai-agent.yml || grep -q "types:.*labeled" .github/workflows/ai-agent.yml; then
    echo "✅ Mission 2: Correct trigger found."
else
    echo "❌ Mission 2: Trigger 'types: [labeled]' not found in .github/workflows/ai-agent.yml"
    exit 1
fi

# 2. Check if CSS variables are being used in Mission 3
echo "Checking Mission 3: CSS Variable refactoring..."
if grep -q ":root" tasks/style-refactor.css && grep -q "\-\-" tasks/style-refactor.css; then
    echo "✅ Mission 3: CSS variables detected."
else
    echo "❌ Mission 3: CSS variables not found in tasks/style-refactor.css"
    exit 1
fi

# 3. Check if PR_LINK.md has been modified (assuming student replaces the placeholder)
echo "Checking PR_LINK.md update..."
if grep -q "https://github.com/.*/pull/" PR_LINK.md; then
    echo "✅ PR link detected."
else
    echo "⚠️  PR link not found in PR_LINK.md (This might be okay if student hasn't reached this step yet)"
fi

echo "All mandatory checks passed!"
exit 0
