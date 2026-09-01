# ga-hello

Minimal repo: a tiny shell app plus a GitHub Actions workflow.

## App

```sh
./app.sh            # -> hello, world!
./app.sh there      # -> hello, there!
```

## Workflow

`.github/workflows/example.yml` runs on every `push` and can also be started
by hand from the **Actions** tab (`workflow_dispatch`). It checks out the repo,
echoes `hello`, and runs `app.sh`.
