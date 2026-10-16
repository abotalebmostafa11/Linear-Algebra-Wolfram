(* Get["Part_3/Load_Cars.wl"] returns the local project data. *)
Module[{table=Import[FileNameJoin[{DirectoryName[$InputFileName],"data","cars.csv"}],"CSV"], rows},
 rows=Rest[table];
 If[First[table] =!= {"speed_mph","distance_ft"} || Length[rows] =!= 50 ||
    !TrueQ[And @@ (Length[#] === 2 & /@ rows)], Return[$Failed]];
 <|"Speed"->rows[[All,1]],"Distance"->rows[[All,2]],
   "SpeedUnit"->"mile/hour","DistanceUnit"->"foot","Count"->Length[rows]|>
]
