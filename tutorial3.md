---
title: "Lab11: Documentation"
output: html_document
---

## Preamble

Please mark the following boxes with an X as appropriate:

```
[ ] Completed the Request for Evaluation by Artem
[ ] Answers assisted with generative AI (please indicate where)

```

Lesson Feedback (2 minutes): Please share your feedback about this lecture to
improve the course, and tailor it to your learning for the next lecture.

Link: https://forms.gle/XXXXXXXXXXXX

## Tutorial Objectives:

```
"happiness only real when shared"
- Christopher McCandless

Like happiness, what we do as scientists only matters if we are able to share
it with those around us. Be it through scientific publications, presentations,
or even code documentation, our ability to explain and teach the next
generation of scientists is equally important to our ability to do the science
in the first place.

Here you will go into the wild and try a web-based bioinforamtics tool. Explore,
play, experiment and learn. You will then take those experiences and create
a "Tutorial" which will teach next-years MGY441's students to do Virus Discovery
better.
```

## The `VIRUSxDISCVRY` Repository

- [VIRUSxDISCVRY GitHub Repo](https://github.com/ababaian/VIRUSxDISCVRY)

We will collectively be building a public Virus Discovery repository which will
collect and curate tutorials for web-tools which could be used as part of the
MGY441 Assignment 3.

As for the previous assignments you're expected to submit your answers by the 
deadline to your MGY441 gitlab repository.

```
# Pull Lab 11
# (remember to replace UTORid with your actual UTORid)
git clone https://gitlab.XXXXXXXXXX/UTORid/Lab11
```

```
# Submitting your work
cd lab11
git commit -a -m "Completed Lab11"
git push
```

I _highly_ encourage you to submit the tutorial you create as part of this
tutorial, and the template markdown file for your Assignment 3 to the public
`VIRUSxDISCOVERY` repository. Although, you are not obliged to do so.

## Question 1 : Software Tutorial `(10 points)` --------------------------------
** Due 10PM Dec 1st. 2024 **

**Q.**: In the `data/toolAssignment.csv` you are assigned a web-based
bioinformatics tool or resource. You are to create a wiki-style Tutorial
for {Insert Your Tool Name}, using as the example the virus from your
Assignment 3. If your tool/virus combination does not work, you may use any
generic sequence/input to write the tutorial wiki.

For this, your audience is your MGY441 peers, who can use your tutorial and
apply it to improve their Assignment 3 answers, and also next years MGY441
students. As such consider the emphasis of these tutorials to be on how
the tools apply to Virus Discovery.

Note: If you wish to write a tutorial for another tool/resource which you have
found useful as part of your project and that tool is not listed in the 
`toolAssignment.csv`, you have until end of day Wednesday to message Artem on
Piazza/email with the name and link of the tool you would like to do.

- Template Tutorial Page: [`toolTemplate.md`](https://github.com/ababaian/VIRUSxDISCVRY/blob/main/tools/toolTemplate.md)
- Example Tutorial Page: [`Serratus.io Explorer`](https://github.com/ababaian/VIRUSxDISCVRY/blob/main/tools/serratusexplorer.md)

`2 points` - Introduction section

`7 points` - Tutorial/walkthrough

`1 point`  - Conclusion and useful links

## Submitting your tool wiki to `VIRUSxDISCVRY` (*OPTIONAL*) -------------------

1. Navigate to https://github.com/ababaian/VIRUSxDISCVRY

2. `Fork` the `VIRUSxDISCVRY`to your own github account.

3. `Clone` your copy of the repository to your local computer

```
# Pull Tutorial Repository
git clone https://github.com/<YOUR_GITHUB_ID>/VIRUSxDISCVRY.git
```

3. Add your tutorial to your local repository.

This means add your `{toolname.md}` to the `tools/` folder and link any data or
image files into `tools/img/{toolname}/figure1.png` etc... as needed.

4. `Commit` and `Push` your local changes to your version of the repository.

```
# Submitting your work
cd VIRUSxDISCVRY
git commit -a -m "Added mytool Tutorial and supporting data"

# This will push to YOUR "fork" of the repository, and you should
# see it online on your github version
git push
```

5. Create `Pull Request` to merge your changes into the common `VIRUSxDISCVRY`

When you're ready to merge your own repository into the main public repository
you will do this by opening a `Pull Request`.

On the GitHub page for _your fork_ of the repository. At the top tabs, click on
`Pull Requests` and then click on the green `Nuew Pull Request` button.

As the `base repository` select `ababaian/VIRUSxDISCVRY` and
as the `head repository` select `<YOURNAME>/VIRUSxDISCVRY` and click "Create
Pull Request".

## Submitting your Virus Report to `VIRUSxDISCVRY` (*OPTIONAL*) --------------
** DUE 10PM Dec 4th, 2024 **

The work you've all done on Tutorial 2 has been *amazing!* I'd love to share
each of these projects year after year and have students build on top of one
another in terms of the class assignment.

For `3 bonus points` on your `Assignment 3`, copy and paste your answers from
`Assignment 3` and `Tutorial 2` as indicated in the [`virTemplate.md`](https://github.com/ababaian/VIRUSxDISCVRY/blob/main/virus/virTemplate.md) file.

Follow the same instructions as above for "Submitting your tool wiki" but instead
submit the parsed version of your `Assignment 3` to the `VIRUSxDISCVRY` repo.

