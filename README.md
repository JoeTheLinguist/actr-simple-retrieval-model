# ACT-R Simple Retrieval Model

This repository contains a minimal ACT-R model demonstrating cue-based retrieval from declarative memory.

## Overview

The model:
- Stores several items in declarative memory
- Issues a retrieval request based on cues
- Retrieves the best matching chunk
- Demonstrates the basic mechanism behind cue-based parsing models (e.g. Lewis & Vasisth, 2005)

## Model Structure

- `goal` buffer: holds retrieval cues
- `retrieval` buffer: receives retrieved chunks
- `memory-item` chunks: represent stored items

## Example Behavior

The model retrieves a chunk matching:
- category: noun
- number: singular

Example output:
`RETRIEVED-ITEM DOG CATEGORY NOUN NUMBER SINGULAR`

## How to Run

1. Start ACT-R (see [ACT-R Reference Manual](https://act-r.psy.cmu.edu/actr7.x/reference-manual.pdf) for instructions)
2. Load the model, either via the GUI or using the ```load``` command, e.g. (load "actr-simple-retrieval-model.lisp")
3. Run the model, again either via the GUI or using the ```run``` command, e.g. (run 5)

## Notes

- This is a minimal demonstration model
- It does not yet include activation dynamics or partial matching
- It is intended as a foundation for more complex psychiolinguistic models

## Author
Joe Marulli