---
layout: default
---

# Welcome
This website contains the basic information about the Graduate Course *Preuve assistée par ordinateur dans Lean* for the *École Doctorale Info-Math de Lyon*, in Spring 2026.

The teacher is [Filippo A. E. Nuccio](https://perso.univ-st-etienne.fr/nf51454h/) and all material is in English: classes will be in French or in English according to participants.

For every lecture, there is a `.md` file (exported also as a `.pdf`), that you find below and that contains all material discussed in class; alongside these files, there is also a `.lean` file shown during class, whose solutions are posted the day following the lecture, in general.

The Mathlib `commit` upon which this project is build is [32d2424](https://github.com/leanprover-community/mathlib4/commits/32d24245c7a12ded17325299fd41d412022cd3fe): the documentation for the Mathlib version used in this project is available [here](https://faenuccio-teaching.github.io/GradCourse26/docs/index.html). 
## Agenda
Classes take place from 14h00 to 17h00 at the "site Monod" of the École Normale Supérieure, in room 301 on the third floor (accessible from the coffee corner). **WARNING: First class on Friday 13th is exceptionally at 13h30-16h30**

| Date      | Lecture         | Ancillary Files | Notes
|-----------|---------------|---------------|---------------
| Fri, March 13th | Tactics and Types | | **Warning** Class at 13h30.
| Wed, March 18th | More  on Types | |
| Fri, March 20th | Algebra | |
| Wed, April 1st | Topology | |
| Fri, April 3rd | Analysis | |


## References

There aren't many books detailing how `Lean` works, but the beautiful
* [Mathematical Components](https://math-comp.github.io/mcb/), by A. Mahboubi and E. Tassi, 

    tailored around the proof assistant [`Rocq`](https://rocq-prover.org/), is an excellent introduction to what the formalisation of mathematics is. The third chapter contains a nice introduction to the "type theory" that we use.

Another survey of what is needed type-theoretically can be found in the first chapter "Type theory" of the
* [Homotopy Type Theory (a.k.a. "HoTT book")](https://homotopytypetheory.org/book/)

A more complete source, extremely well written and a really pleasant read is
* [Lectures on the Curry–Howard Isomorphism](https://www.sciencedirect.com/bookseries/studies-in-logic-and-the-foundations-of-mathematics/vol/149/suppl/C), by M. H. Sørensen et P. Urzyczyn.

 The two `Lean`-oriented references
* [Theorem Proving in Lean 4](https://leanprover.github.io/theorem_proving_in_lean4/), by J. Avigad, L. de Moura, S. Kong et S. Ullrich
* [Mathematics in Lean](https://leanprover-community.github.io/mathematics_in_lean/), by J. Avigad et P. Massot

    also contain a lot of material relevant to our course.

## Lean and GitHub prerequisites

Before the beginning of the course (on Friday, March 13th 2026), make sure to:
* have a working internet connection once at ENS, ideally through Eduroam;
* have a working `git` installation: in case you need help, you can try to have a look at the [excellent tutorial](https://www.imo.universite-paris-saclay.fr/~patrick.massot/misc/git.html) maintained by Patrick Massot;
* have a an account on [GitHub](https://github.com) to be able to upload your work;
* have a working installation of Lean on your laptop, by following the [offical instructions](https://lean-lang.org/install/). Shall you run into problems, don't panic: we'll discuss everything during the first lecture;
* have downloaded (through `git clone`) the repository of this course, available at [https://github.com/faenuccio-teaching/GradCourse26.git](https://github.com/faenuccio-teaching/GradCourse26.git);
* have disabled all `Chat AI Features` from VSCode: for this, go to `Settings → Features → Chat` and select `Disable AI Features`. 
