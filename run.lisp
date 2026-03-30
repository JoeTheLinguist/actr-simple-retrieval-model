(let*
    (
        (here (make-pathname :name nil :type nil :defaults *load-truename*))
        (model-file (merge-pathnames "actr-simple-retrieval-model.lisp" here))
        (output-file (merge-pathnames "output.txt" here))
    )

    (load model-file)
    (with-open-file
        (out output-file
            :direction :output
            :if-exists :supersede
            :if-does-not-exist :create
        )

        ;; Receive lots of information from the trace
        (sgp :trace-detail high)

        ;; Redirect ACT-R traces to the output file stream
        (sgp-fct (list :v output-file))

        ;; Uncomment below to redirect ACT-R command output to the output file stream
        ;; (sgp :cmdt output-file)

        (run 5) ; run with an upper time limit of 5 seconds (intentionally high)

        ;; Close output file cleanly
        (sgp :v nil :cmdt nil)
    )
)