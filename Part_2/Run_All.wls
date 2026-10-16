root = DirectoryName[DirectoryName[$InputFileName]];
Get[FileNameJoin[{root,"lib","Companion.wl"}]];
report = LinearAlgebraCompanion`RunExamples[root,2];
path = LinearAlgebraCompanion`SaveReport[report,FileNameJoin[{root,"results","execution_part_2.json"}]];
Print["Examples evaluated: ",report["example_count"]];
Print["Completed without messages: ",report["completed_without_messages"]];
Print["Mathematical checks: ",report["verification_counts"]];
Print["Report: ",path];
If[$FrontEnd === Null,
 Exit[If[report["completed_without_messages"] === report["example_count"] &&
   Count[Lookup[report["results"],"verification"],"Failed"|"SkippedDependency"] === 0,0,1]]];
report
