# Rancher-Action

Github Action for using the Rancher CLI to manage resources with Rancher during an action.
Commands will be executed using the following syntax: `rancher {Supplied-Command}`

## Usage

### Example Workflow file

A simple workflow file for simply listing the pods in a context is given below:

```yaml
jobs:
  rancher_job:
    runs-on: ubuntu-latest
    steps:
      - name: Rancher CLI Action
        uses: roulianinc/Rancher-CLI@v1.0.8
        with:
          command: kubectl get pods -n warlock --insecure-skip-tls-verify
          token: ${{ secrets.RANCHER_TOKEN }}
          context: ${{ secrets.RANCHER_CONTEXT }}
          url: ${{ secrets.RANCHER_URL }}
```

## Inputs

- `token`: Rancher Token for logging in.
- `context`: Context of the project to access. (AKA Project ID)
- `url`: URL of the Rancher instance.
- `command`: Command you want to run.

## License

Scripts and documentation in this project are released under the MIT license.
