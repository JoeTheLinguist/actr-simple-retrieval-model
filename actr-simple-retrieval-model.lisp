(clear-all)

(define-model simple-retrieval

    (chunk-type goal state cue1 cue2)
    (chunk-type memory-item category number name)

    (add-dm
        (item1 isa memory-item category noun number singular name cat)
        (item2 isa memory-item category noun number plural   name dogs)
        (item3 isa memory-item category verb number singular name runs)
        (item4 isa memory-item category noun number singular name dog)
        (item5 isa memory-item category verb number plural   name run)
        (g1 isa goal state start cue1 verb cue2 plural)
    )

    (goal-focus g1)

    (p request-item
        =goal>
            isa goal
            state start
            cue1 =cat
            cue2 =num
        ==>
        =goal>
            state retrieving
        +retrieval>
            isa memory-item
            category =cat
            number =num
    )

    (p retrieval-success
        =goal>
            isa goal
            state retrieving
        =retrieval>
            isa memory-item
            category =cat
            number =num
            name =name
        ==>
        !output! (Retrieved-item =name category =cat number =num)
        =goal>
            state done
    )

    (p retrieval-failure
        =goal>
            isa goal
            state retrieving
        ?retrieval>
            buffer failure
        ==>
        !output! (Retrieval-failed)
        =goal>
            state done
    )

)