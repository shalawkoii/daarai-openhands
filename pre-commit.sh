#!/bin/bash
# Run linting checks
cd frontend && npm run lint
if [ $? -ne 0 ]; then
  echo "Frontend linting failed. Please fix the issues before committing."
  exit 1
fi

# Run tests
cd backend && pytest tests/unit
if [ $? -ne 0 ]; then
  echo "Backend tests failed. Please fix the issues before committing."
  exit 1
fi

exit 0
