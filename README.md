# Buildkite Pipeline Example - Community Pull Request Flow

Sample pipeline exploring a technique to allow whitelisted users/orgs Pull Requests to automatically run pipeline.

## Setup

[![Add to Buildkite](https://buildkite.com/button.svg)](https://buildkite.com/new)

The setup GitHub Webhooks, as documented, for Deployments, Pull Requests, and Pushes.

Optionally, to secure your pipeline from manipulation by third-party pull requests, flatten the pipeline by replacing the single step with the contents of `pipeline.yml`.

1. Click on "Pipeline Settings"
2. Under the "Steps" section, click the button "Convert to YAML Steps"
3. Copy and paste the contents of `.buildkite/pipeline.yml` into the Steps textarea.
4. Update the `PR_WHITELIST` multi-line env var for users and organizations you wish to test for whitelisting.
5. Click "Save Steps" to save.

Setup Github to allow third-party pull requests.

1. Enable "Build pull requests from third-party forked repositories"
2. Enable "Create a status for each job"
3. Enable "Separate statuses for pull requests"
4. Click "Save GitHub Settings"

![github](https://p198.p4.n0.cdn.getcloudapp.com/items/L1ugXppk/buildkite-github-settings-third-party-pull-requests.png?v=22ec8383f69914b5240cc629e2c9ab8b)

## Demonstration

We can explore five different scenarios, which activate four different Pipeline YAML files in the `.buildkite` folder.

The example image below shows how different pipeline flows are generated based on the origin of each build trigger. From bottom to top:

1. a commit to master
1. a commit to a branch on the primary repo, but not yet a Pull Request
1. a new commit to the same branch, but it is now a Pull Request
1. a commit to a third-party Pull Request, from a whitelisted user/org
1. a commit to a third-party Pull Request, from a guest/untrusted user/org

![builds](https://p198.p4.n0.cdn.getcloudapp.com/items/nOuNXelb/buildkite-diff-flows-for-guest-prs-and-local-branches.png?v=2d4191b767ffe7afe51521119c4228f6)
