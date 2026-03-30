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
2. Load the run script, either via the GUI or using the ```load``` command, e.g. (load "run.lisp")
- The run script will:
-- Load the model
-- Run it for up to 5 seconds of simulated time
-- Write the output to ```output.txt``` (see this file for example output from a full run)

## Notes

- This is a minimal demonstration model.
- It does not yet include activation dynamics or partial matching, nor does it explicitly define atomic chunks but instead relies on the ACT-R interpreter to do so.
- It is intended as a foundation that can be augmented and modified to create more complex psychiolinguistic models.
- It is also a first step toward modeling cue-based sentence processing in ACT-R.

## Author
Joe Marulli