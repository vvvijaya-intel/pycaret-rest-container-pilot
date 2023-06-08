# How to Contribute

To help maintaining high quality standards of code in the repository,
please follow the guidelines and regulations.

The source code can be downloaded from
[GitLab](https://gitlab.devtools.intel.com/syssim/python_boilerplate).

## Unit-testing

We use [pytest](https://docs.pytest.org/en/latest/) unit tests which can be
invoked with `make test`. It also checks code coverage calculated by
[coverage.py](https://bitbucket.org/ned/coveragepy).

If `make test` is invoked with a `TEST=filename` command line option, then the
list of test files will be overridden to include only the filename specified on
the command line -- this provides an easy way to run just one test file:

    make test TEST=python_boilerplate/tests/test_example.py

## Continuous Integration

To ensure consistency in testing and aid investigation of issues, we use
[GitLab CI system](https://gitlab.devtools.intel.com/syssim/python_boilerplate/pipelines).
 
## Code Review

### Coding Guidelines
We use [PEP8](https://www.python.org/dev/peps/pep-0008) as our style guide for
Python and [numpydoc](https://numpydoc.readthedocs.io/en/latest/format.html)
docstring syntax for Spike. These guidelines are enforced by
[pylint](https://www.pylint.org),
[flake8](https://pypi.python.org/pypi/flake8),
[YAPF](https://github.com/google/yapf),
[isort](https://github.com/timothycrosley/isort), and
[pydocstyle](http://www.pydocstyle.org).

All linters are invoked with:

    make lint

Or you can run linters individually:

    make yapf
    make isort
    make pylint
    make flake8
    make pydocstyle

### Descriptive Commit Messages
You must create a descriptive commit message for every change. A commit message
starts with a single subject line of not more than 60 characters separated from
the rest of the commit message by a blank line. Following the subject line
should be a more detailed set of sentences/paragraphs that describe the change
more completely. These lines should be manually wrapped at no more than 80
characters. See <http://chris.beams.io/posts/git-commit/> for details.

### Submitting Patches
This is a brief guide on how to create a merge request. For more detailed
information, check the [merge requests documentation](https://docs.gitlab.com/ee/gitlab-basics/add-merge-request.html),
or you can watch our [GitLab Flow video](https://www.youtube.com/watch?v=InKNIvky2KE)
for a quick overview of working with merge requests.

  1. Create a branch

     `git checkout -b (feature|hotfix)/<branch-name>`

  1. And push your changes to GitLab
 
     `git push origin (feature|hotfix)/<branch-name>`

  1. Follow the link on your screen to create a merge request
  1. Check "Delete source branch when merge request is accepted". Optionally,
     select a user to review your merge request in the "Assignee" menu
  1. When ready, click on the "Submit merge request" button.

### Squashing Patches
In some cases, it may be desirable to do an interactive rebase and squash
together several related commits. When this happens either preserve the entire
combined git history, or rewrite the commit message to be updated with the
contents of the later patches in the series. See Nick Quaranto's
[article](http://gitready.com/advanced/2009/02/10/squashing-commits-with-rebase.html)
for details.

### Approvals
It is the merge request author's responsibility to ensure that the proper
reviews are done. Before a request gets merged, perform the following reviews
on the patch:
 * The patch must be tested by CI automatically triggered when the patch is
   submitted. Once this takes place, CI will mark the patch as `passed`.
 * Finally, the reviewer gives their approval review and merges the merge
   request.
