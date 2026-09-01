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

### Debugging with tmate

The last step opens an SSH/web shell into the runner via
[`mxschmitt/action-tmate`](https://github.com/mxschmitt/action-tmate). It only
runs when:

- a step **fails**, or
- you start the workflow by hand with **Run debug session** (`debug_enabled`) checked.

`limit-access-to-actor: true` restricts the session to the GitHub user who
triggered the run. Connect with the SSH command printed in the step log; the
run continues once you type `touch /continue` (or `exit` / the step times out).
