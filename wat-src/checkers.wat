(module
    (global $BLACK (i32.const 1))
    (global $WHITE (i32.const 2))
    (global $CROWN (i32.const 4))

    (memory $mem 1)
    (func $indexForPosition (param $x i32)(param $y i32)(result i32)
        (i32.add
            (i32.mul 
                (i32.const 8)
                (get_local $y)
            )
            (get_local $x)
        )
    ) 
    
    ;; Offset = (x + 8y) * 4
    (func $offsetForPosition  (param $x i32)(param $y i32)(result i32)
        (i32.mul
            call $indexForPosition
            (
                (get_local $x)
                (get_local $y)
            )
            (i32.const 4)
        )
    )

    ;; Determine if a piece has been crowned​ 
    (func $isCrowned (param $piece i32) (result i32)
    ​   (i32.eq​     
            (i32.and 
                (get_local $piece) 
                (get_global $CROWN)
            )​     
            (get_global $CROWN)​   
        )​
    )

)
