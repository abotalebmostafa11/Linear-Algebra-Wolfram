(* Mathematical checks evaluate the actual source blocks from examples.json. *)

companionRoot = DirectoryName[DirectoryName[$InputFileName]];

Get[FileNameJoin[{companionRoot,"lib","Companion.wl"}]];

companionReport = LinearAlgebraCompanion`RunExamples[companionRoot];

companionRows = Association[(#["id"]->#)& /@ companionReport["results"]];

VerificationTest[
 With[{row=companionRows["P1-C08-E001"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P1-C08-E001"
]

VerificationTest[
 With[{row=companionRows["P1-C08-E002"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P1-C08-E002"
]

VerificationTest[
 With[{row=companionRows["P1-C08-E003"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P1-C08-E003"
]

VerificationTest[
 With[{row=companionRows["P1-C08-E004"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P1-C08-E004"
]

VerificationTest[
 With[{row=companionRows["P1-C08-E005"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P1-C08-E005"
]

VerificationTest[
 With[{row=companionRows["P1-C08-E006"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P1-C08-E006"
]

VerificationTest[
 With[{row=companionRows["P1-C08-E007"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P1-C08-E007"
]

VerificationTest[
 With[{row=companionRows["P1-C08-E008"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P1-C08-E008"
]

VerificationTest[
 With[{row=companionRows["P1-C08-E009"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P1-C08-E009"
]

VerificationTest[
 With[{row=companionRows["P1-C08-E010"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P1-C08-E010"
]

VerificationTest[
 With[{row=companionRows["P1-C08-E011"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P1-C08-E011"
]

VerificationTest[
 With[{row=companionRows["P1-C08-E012"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P1-C08-E012"
]

VerificationTest[
 With[{row=companionRows["P1-C08-E013"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P1-C08-E013"
]

VerificationTest[
 With[{row=companionRows["P1-C08-E014"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P1-C08-E014"
]

VerificationTest[
 With[{row=companionRows["P1-C08-E015"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P1-C08-E015"
]

VerificationTest[
 With[{row=companionRows["P1-C08-E016"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P1-C08-E016"
]

VerificationTest[
 With[{row=companionRows["P1-C08-E017"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P1-C08-E017"
]

VerificationTest[
 With[{row=companionRows["P1-C08-E018"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P1-C08-E018"
]

VerificationTest[
 With[{row=companionRows["P1-C08-E019"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P1-C08-E019"
]

VerificationTest[
 With[{row=companionRows["P1-C08-E020"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P1-C08-E020"
]

VerificationTest[
 With[{row=companionRows["P1-C08-E021"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P1-C08-E021"
]

VerificationTest[
 With[{row=companionRows["P1-C08-E022"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P1-C08-E022"
]

VerificationTest[
 With[{row=companionRows["P1-C08-E023"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P1-C08-E023"
]

VerificationTest[
 With[{row=companionRows["P1-C08-E024"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P1-C08-E024"
]

VerificationTest[
 With[{row=companionRows["P1-C08-E025"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P1-C08-E025"
]

VerificationTest[
 With[{row=companionRows["P1-C08-E026"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P1-C08-E026"
]

VerificationTest[
 With[{row=companionRows["P1-C08-E027"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P1-C08-E027"
]

VerificationTest[
 With[{row=companionRows["P1-C08-E028"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P1-C08-E028"
]

VerificationTest[
 With[{row=companionRows["P1-C08-E029"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P1-C08-E029"
]

VerificationTest[
 With[{row=companionRows["P1-C08-E030"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P1-C08-E030"
]

VerificationTest[
 With[{row=companionRows["P1-C08-E031"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P1-C08-E031"
]

VerificationTest[
 With[{row=companionRows["P1-C08-E032"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P1-C08-E032"
]

VerificationTest[
 With[{row=companionRows["P1-C08-E033"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P1-C08-E033"
]

VerificationTest[
 With[{row=companionRows["P1-C08-E034"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P1-C08-E034"
]

VerificationTest[
 With[{row=companionRows["P1-C08-E035"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P1-C08-E035"
]

VerificationTest[
 With[{row=companionRows["P1-C08-E036"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P1-C08-E036"
]

VerificationTest[
 With[{row=companionRows["P1-C08-E037"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P1-C08-E037"
]

VerificationTest[
 With[{row=companionRows["P1-C08-E038"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P1-C08-E038"
]

VerificationTest[
 With[{row=companionRows["P1-C08-E039"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P1-C08-E039"
]

VerificationTest[
 With[{row=companionRows["P1-C08-E040"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P1-C08-E040"
]

VerificationTest[
 With[{row=companionRows["P1-C08-E041"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P1-C08-E041"
]

VerificationTest[
 With[{row=companionRows["P1-C08-E042"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P1-C08-E042"
]

VerificationTest[
 With[{row=companionRows["P1-C08-E043"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P1-C08-E043"
]

VerificationTest[
 With[{row=companionRows["P1-C08-E044"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P1-C08-E044"
]

VerificationTest[
 With[{row=companionRows["P1-C08-E045"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P1-C08-E045"
]

VerificationTest[
 With[{row=companionRows["P1-C08-E046"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P1-C08-E046"
]

VerificationTest[
 With[{row=companionRows["P1-C08-E047"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P1-C08-E047"
]

VerificationTest[
 With[{row=companionRows["P1-C08-E048"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P1-C08-E048"
]

VerificationTest[
 With[{row=companionRows["P2-C07-E001"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P2-C07-E001"
]

VerificationTest[
 With[{row=companionRows["P2-C07-E002"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P2-C07-E002"
]

VerificationTest[
 With[{row=companionRows["P2-C07-E003"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P2-C07-E003"
]

VerificationTest[
 With[{row=companionRows["P2-C07-E004"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P2-C07-E004"
]

VerificationTest[
 With[{row=companionRows["P2-C07-E005"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P2-C07-E005"
]

VerificationTest[
 With[{row=companionRows["P2-C07-E006"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P2-C07-E006"
]

VerificationTest[
 With[{row=companionRows["P2-C07-E007"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P2-C07-E007"
]

VerificationTest[
 With[{row=companionRows["P2-C07-E008"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P2-C07-E008"
]

VerificationTest[
 With[{row=companionRows["P2-C07-E009"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P2-C07-E009"
]

VerificationTest[
 With[{row=companionRows["P2-C07-E010"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P2-C07-E010"
]

VerificationTest[
 With[{row=companionRows["P2-C07-E011"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P2-C07-E011"
]

VerificationTest[
 With[{row=companionRows["P2-C07-E012"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P2-C07-E012"
]

VerificationTest[
 With[{row=companionRows["P2-C07-E013"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P2-C07-E013"
]

VerificationTest[
 With[{row=companionRows["P2-C07-E014"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P2-C07-E014"
]

VerificationTest[
 With[{row=companionRows["P2-C07-E015"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P2-C07-E015"
]

VerificationTest[
 With[{row=companionRows["P2-C07-E016"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P2-C07-E016"
]

VerificationTest[
 With[{row=companionRows["P2-C07-E017"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P2-C07-E017"
]

VerificationTest[
 With[{row=companionRows["P2-C07-E018"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P2-C07-E018"
]

VerificationTest[
 With[{row=companionRows["P2-C07-E019"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P2-C07-E019"
]

VerificationTest[
 With[{row=companionRows["P2-C07-E020"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P2-C07-E020"
]

VerificationTest[
 With[{row=companionRows["P2-C07-E021"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P2-C07-E021"
]

VerificationTest[
 With[{row=companionRows["P2-C07-E022"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P2-C07-E022"
]

VerificationTest[
 With[{row=companionRows["P2-C07-E023"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P2-C07-E023"
]

VerificationTest[
 With[{row=companionRows["P2-C07-E024"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P2-C07-E024"
]

VerificationTest[
 With[{row=companionRows["P2-C07-E025"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P2-C07-E025"
]

VerificationTest[
 With[{row=companionRows["P2-C07-E026"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P2-C07-E026"
]

VerificationTest[
 With[{row=companionRows["P2-C07-E027"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P2-C07-E027"
]

VerificationTest[
 With[{row=companionRows["P2-C07-E028"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P2-C07-E028"
]

VerificationTest[
 With[{row=companionRows["P2-C07-E029"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P2-C07-E029"
]

VerificationTest[
 With[{row=companionRows["P2-C07-E030"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P2-C07-E030"
]

VerificationTest[
 With[{row=companionRows["P2-C07-E031"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P2-C07-E031"
]

VerificationTest[
 With[{row=companionRows["P2-C07-E032"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P2-C07-E032"
]

VerificationTest[
 With[{row=companionRows["P2-C07-E033"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P2-C07-E033"
]

VerificationTest[
 With[{row=companionRows["P2-C07-E034"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P2-C07-E034"
]

VerificationTest[
 With[{row=companionRows["P2-C07-E035"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P2-C07-E035"
]

VerificationTest[
 With[{row=companionRows["P2-C07-E036"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P2-C07-E036"
]

VerificationTest[
 With[{row=companionRows["P2-C07-E037"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P2-C07-E037"
]

VerificationTest[
 With[{row=companionRows["P2-C07-E038"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P2-C07-E038"
]

VerificationTest[
 With[{row=companionRows["P2-C07-E039"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P2-C07-E039"
]

VerificationTest[
 With[{row=companionRows["P2-C07-E040"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P2-C07-E040"
]

VerificationTest[
 With[{row=companionRows["P2-C07-E041"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P2-C07-E041"
]

VerificationTest[
 With[{row=companionRows["P2-C07-E042"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P2-C07-E042"
]

VerificationTest[
 With[{row=companionRows["P2-C07-E043"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P2-C07-E043"
]

VerificationTest[
 With[{row=companionRows["P2-C07-E044"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P2-C07-E044"
]

VerificationTest[
 With[{row=companionRows["P2-C07-E045"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P2-C07-E045"
]

VerificationTest[
 With[{row=companionRows["P2-C07-E046"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P2-C07-E046"
]

VerificationTest[
 With[{row=companionRows["P2-C07-E047"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P2-C07-E047"
]

VerificationTest[
 With[{row=companionRows["P2-C07-E048"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P2-C07-E048"
]

VerificationTest[
 With[{row=companionRows["P3-C03-E001"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P3-C03-E001"
]

VerificationTest[
 With[{row=companionRows["P3-C03-E002"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P3-C03-E002"
]

VerificationTest[
 With[{row=companionRows["P3-C03-E003"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P3-C03-E003"
]

VerificationTest[
 With[{row=companionRows["P3-C03-E004"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P3-C03-E004"
]

VerificationTest[
 With[{row=companionRows["P3-C03-E005"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P3-C03-E005"
]

VerificationTest[
 With[{row=companionRows["P3-C03-E006"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P3-C03-E006"
]

VerificationTest[
 With[{row=companionRows["P3-C03-E007"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P3-C03-E007"
]

VerificationTest[
 With[{row=companionRows["P3-C03-E008"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P3-C03-E008"
]

VerificationTest[
 With[{row=companionRows["P3-C03-E009"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P3-C03-E009"
]

VerificationTest[
 With[{row=companionRows["P3-C03-E010"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P3-C03-E010"
]

VerificationTest[
 With[{row=companionRows["P3-C03-E011"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P3-C03-E011"
]

VerificationTest[
 With[{row=companionRows["P3-C03-E012"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P3-C03-E012"
]

VerificationTest[
 With[{row=companionRows["P3-C03-E013"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P3-C03-E013"
]

VerificationTest[
 With[{row=companionRows["P3-C03-E014"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P3-C03-E014"
]

VerificationTest[
 With[{row=companionRows["P3-C03-E015"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P3-C03-E015"
]

VerificationTest[
 With[{row=companionRows["P3-C03-E016"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P3-C03-E016"
]

VerificationTest[
 With[{row=companionRows["P3-C03-E017"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P3-C03-E017"
]

VerificationTest[
 With[{row=companionRows["P3-C03-E018"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P3-C03-E018"
]

VerificationTest[
 With[{row=companionRows["P3-C03-E019"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P3-C03-E019"
]

VerificationTest[
 With[{row=companionRows["P3-C03-E020"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P3-C03-E020"
]

VerificationTest[
 With[{row=companionRows["P3-C03-E021"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P3-C03-E021"
]

VerificationTest[
 With[{row=companionRows["P3-C03-E022"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P3-C03-E022"
]

VerificationTest[
 With[{row=companionRows["P3-C03-E023"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P3-C03-E023"
]

VerificationTest[
 With[{row=companionRows["P3-C03-E024"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P3-C03-E024"
]

VerificationTest[
 With[{row=companionRows["P3-C03-E025"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P3-C03-E025"
]

VerificationTest[
 With[{row=companionRows["P3-C03-E026"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P3-C03-E026"
]

VerificationTest[
 With[{row=companionRows["P3-C03-E027"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P3-C03-E027"
]

VerificationTest[
 With[{row=companionRows["P3-C03-E028"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P3-C03-E028"
]

VerificationTest[
 With[{row=companionRows["P3-C03-E029"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P3-C03-E029"
]

VerificationTest[
 With[{row=companionRows["P3-C03-E030"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P3-C03-E030"
]

VerificationTest[
 With[{row=companionRows["P3-C03-E031"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P3-C03-E031"
]

VerificationTest[
 With[{row=companionRows["P3-C03-E032"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P3-C03-E032"
]

VerificationTest[
 With[{row=companionRows["P3-C03-E033"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P3-C03-E033"
]

VerificationTest[
 With[{row=companionRows["P3-C03-E034"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P3-C03-E034"
]

VerificationTest[
 With[{row=companionRows["P3-C03-E035"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P3-C03-E035"
]

VerificationTest[
 With[{row=companionRows["P3-C03-E036"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P3-C03-E036"
]

VerificationTest[
 With[{row=companionRows["P3-C03-E037"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P3-C03-E037"
]

VerificationTest[
 With[{row=companionRows["P3-C03-E038"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P3-C03-E038"
]

VerificationTest[
 With[{row=companionRows["P3-C03-E039"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P3-C03-E039"
]

VerificationTest[
 With[{row=companionRows["P3-C03-E040"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P3-C03-E040"
]

VerificationTest[
 With[{row=companionRows["P3-C03-E041"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P3-C03-E041"
]

VerificationTest[
 With[{row=companionRows["P3-C03-E042"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P3-C03-E042"
]

VerificationTest[
 With[{row=companionRows["P3-C03-E043"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P3-C03-E043"
]

VerificationTest[
 With[{row=companionRows["P3-C03-E044"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P3-C03-E044"
]

VerificationTest[
 With[{row=companionRows["P3-C03-E045"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P3-C03-E045"
]

VerificationTest[
 With[{row=companionRows["P3-C03-E046"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P3-C03-E046"
]

VerificationTest[
 With[{row=companionRows["P3-C03-E047"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P3-C03-E047"
]

VerificationTest[
 With[{row=companionRows["P3-C03-E048"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P3-C03-E048"
]

VerificationTest[
 With[{row=companionRows["P3-C03-E049"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P3-C03-E049"
]

VerificationTest[
 With[{row=companionRows["P3-C03-E050"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P3-C03-E050"
]

VerificationTest[
 With[{row=companionRows["P3-C03-E051"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P3-C03-E051"
]

VerificationTest[
 With[{row=companionRows["P3-C03-E052"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P3-C03-E052"
]

VerificationTest[
 With[{row=companionRows["P3-C03-E053"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P3-C03-E053"
]

VerificationTest[
 With[{row=companionRows["P3-C03-E054"]},
  TrueQ[row["completed_without_messages"]] && row["verification"] === "Passed"],
 True,TestID->"P3-C03-E054"
]
