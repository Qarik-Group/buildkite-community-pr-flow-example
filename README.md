# Buildkite Pipeline Example - Community Pull Request Flow

Sample pipeline exploring a technique to allow whitelisted users/orgs Pull Requests to automatically run pipeline.

[![Add to Buildkite](https://buildkite.com/button.svg)](https://buildkite.com/new)

## Demonstration

The example image below shows how different pipeline flows are generated based on the origin of each build trigger. From bottom to top:

25. a commit to master
26. a commit to a branch on the primary repo, but not yet a PR
27. same branch, but now a PR, with a new commit
28. PR from a community member or third-party org

Notice that three different pipelines are generated for the 3 different scenarios above (builds 27 and 28 are the same scenario and generate the same Pipeline).

![builds](https://p198.p4.n0.cdn.getcloudapp.com/items/yAuvkYe5/buildkite-diff-pipeline-for-diff-gitflow.png?v=ea3d36cacec3d445657a925ba50695d8)