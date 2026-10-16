(* Shared execution support. No network downloads or external packages. *)
BeginPackage["LinearAlgebraCompanion`"];
RunExamples::usage = "RunExamples[root, part, chapter] evaluates the selected book examples. Use All for part or chapter.";
SaveReport::usage = "SaveReport[report,path] writes an execution report in RawJSON format.";
Begin["`Private`"];

RunExamples[root_String, part_:All, chapter_:All] := Module[
 {manifest, items, runID, context, records, prior, item, value, checked,
  messages, elapsed, output, complete, verification, dependencyOK},
 manifest = Import[FileNameJoin[{root,"examples.json"}],"RawJSON"];
 items = Select[manifest["examples"],
   (part === All || #["part"] === part) &&
   (chapter === All || #["chapter"] === chapter) &];
 runID = "Run" <> StringReplace[CreateUUID[],"-"->""];
 prior = <||>;
 records = Table[
  item = current;
  dependencyOK = And @@ (TrueQ[Lookup[prior,#,False]] & /@ item["depends_on"]);
  context = "LinearAlgebraCompanionExecution`" <> runID <> "`" <>
    StringReplace[item["execution_group"],"-"->""] <> "`";
  If[!dependencyOK,
   AssociateTo[prior,item["id"]->False];
   <|"id"->item["id"],"part"->item["part"],"chapter"->item["chapter"],
     "section"->item["section"],"completed_without_messages"->False,
     "verification"->"SkippedDependency","messages"->{},
     "output_input_form"->"","elapsed_seconds"->0.|>,
   elapsed = AbsoluteTiming[
    Block[{$Context=context,$ContextPath={context,"System`"},$MessageList={}},
     value = TimeConstrained[Quiet[Check[ToExpression[item["code"],InputForm],$Failed]],120,$Aborted];
     messages = ToString[#,InputForm] & /@ $MessageList;
     complete = value =!= $Failed && value =!= $Aborted && messages === {};
     verification = If[!complete,"NotRun",
       If[item["verification_expression"] === "","NotSpecified",
        checked = TimeConstrained[Quiet[Check[
          ToExpression[item["verification_expression"],InputForm],False]],120,False];
        If[TrueQ[checked],"Passed","Failed"]]];
     output = ToString[value,InputForm,PageWidth->Infinity];
    ]
   ][[1]];
   AssociateTo[prior,item["id"]->(complete && verification =!= "Failed")];
   <|"id"->item["id"],"part"->item["part"],"chapter"->item["chapter"],
     "section"->item["section"],"completed_without_messages"->complete,
     "verification"->verification,"messages"->messages,
     "output_input_form"->output,"elapsed_seconds"->elapsed|>
  ], {current,items}];
 <|"companion_version"->"1.0.0","wolfram_version"->$Version,
   "system_id"->$SystemID,"evaluated_at"->DateString[Now,"ISODateTime"],
   "example_count"->Length[records],
   "completed_without_messages"->Count[Lookup[records,"completed_without_messages"],True],
   "verification_counts"->Counts[Lookup[records,"verification"]],
   "results"->records|>
];

SaveReport[report_Association,path_String] := Module[{directory=DirectoryName[path]},
 If[!DirectoryQ[directory],CreateDirectory[directory,CreateIntermediateDirectories->True]];
 Export[path,report,"RawJSON"]
];
End[];
EndPackage[];
