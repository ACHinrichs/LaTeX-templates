CONTRIBUTING
============

Report Bugs
-----------
If you encounter any bugs, please Report them on the
[Issuetracker](https://github.com/ACHinrichs/LaTeX-templates/issues).

To make it easier to verify and fix them, please provide a
minimal-*not*_-working-example, the error-message and information
about your OS and LaTeX distribution.

Before you submit any bugreports, please make sure to test the latest
`CTAN` version of the desired Class/Package.

When creating the Issue, please start the title with `[BUG]
template-abbreviation: ` (see section issuetracker for abbreviations)

Feature-requests
----------------

If you think you know any way to improve one of the templates feel
free to author an issue or contribute your own implementation to the
repository (see below for contributing code) If you plan to implement
a feature, it would be good to inform me, so that no one else tries to
implement the same feature.

When submitting a feature-request please  please start the title with `[FEATURE]
template-abbreviation: `. Depending on the importance of the Feature,
I will assign one of the labels `ToDo` or `Feature Request`

Issuetracker
------------

Please start every Issue-title with `[BUG]` or `[Feature-Request]` (if
applicable), followed by the abbreviation of the package/class the
issue corresponds to. Abbreviations are: 

|Abbrev.|Class-/Packagename|
----------------------------
| HWA | homeworkassignment |
| CS  | cheatsheet         |


I will add labels to the issues as soon when I read/confirmed
them. Feature-Requests will get the label `Feature-Request` or `ToDo`,
depending on importance. `ToDo` also marks issues which are no
feature-requests but proposals but things I should do (like `Upload a
new version to CTAN`, for example).

ToDos
-----
All ToDos are stored in `/todos.org` on the repository-root. The ToDos
must have a description/specification. I will prioritize
them. Important todos will be added to milestones.

ToDos which are done, shall be marked as done. They will be removed
once the feature is merged into master.

Contributing Code
-----------------
If you want to contribute features, fetch the repository,
implement your stuff and create a new pull-request. (IMPORTANT: read
the section branching before doing anything!) 

People, whose contributions are most valuable will gain direct
push-access to my repository.

When implementing a new feature or changing the behaviour of an
existing one, please update the documentation.

Branching
---------
The branches are ordered by stability, the upper most are the most
stable, but also the slowest
### CTAN
Holds the packages like they are on CTAN.

Should be equal to master, but most of the time I will »forget« to
upload releases to CTAN.

### master
Hold release Versions.

To this branch requires approved pull--requests (mainly to stop me
from pushing »simple bugfixes« directly to master)

### dev-X
Where X is the abbreviation of the package/class.

The Implementation is done _here_ and nowhere else!

You may also create a branch `dev-X-FEATURE` and merge them once your
feature is complete. When working on a fork, this should not be required.
