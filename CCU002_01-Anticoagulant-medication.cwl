cwlVersion: v1.0
steps:
  read-potential-cases-fhir:
    run: read-potential-cases-fhir.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  ccu002_01-anticoagulant-medication-110mg---primary:
    run: ccu002_01-anticoagulant-medication-110mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-fhir/output
  ccu002_01-anticoagulant-medication-eliqui---primary:
    run: ccu002_01-anticoagulant-medication-eliqui---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: ccu002_01-anticoagulant-medication-110mg---primary/output
  ccu002_01-anticoagulant-medication-marevan---primary:
    run: ccu002_01-anticoagulant-medication-marevan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: ccu002_01-anticoagulant-medication-eliqui---primary/output
  ccu002_01-anticoagulant-medication-phenindione---primary:
    run: ccu002_01-anticoagulant-medication-phenindione---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: ccu002_01-anticoagulant-medication-marevan---primary/output
  ccu002_01-anticoagulant-medication-warfarin---primary:
    run: ccu002_01-anticoagulant-medication-warfarin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: ccu002_01-anticoagulant-medication-phenindione---primary/output
  ccu002_01-anticoagulant-medication-rivaroxaban---primary:
    run: ccu002_01-anticoagulant-medication-rivaroxaban---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: ccu002_01-anticoagulant-medication-warfarin---primary/output
  ccu002_01-anticoagulant-medication-500microgram---primary:
    run: ccu002_01-anticoagulant-medication-500microgram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: ccu002_01-anticoagulant-medication-rivaroxaban---primary/output
  ccu002_01-anticoagulant-medication-lixiana---primary:
    run: ccu002_01-anticoagulant-medication-lixiana---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: ccu002_01-anticoagulant-medication-500microgram---primary/output
  ccu002_01-anticoagulant-medication-xarelto---primary:
    run: ccu002_01-anticoagulant-medication-xarelto---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: ccu002_01-anticoagulant-medication-lixiana---primary/output
  ccu002_01-anticoagulant-medication-edoxaban---primary:
    run: ccu002_01-anticoagulant-medication-edoxaban---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: ccu002_01-anticoagulant-medication-xarelto---primary/output
  ccu002_01-anticoagulant-medication-150mg---primary:
    run: ccu002_01-anticoagulant-medication-150mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: ccu002_01-anticoagulant-medication-edoxaban---primary/output
  ccu002_01-anticoagulant-medication-tablet---primary:
    run: ccu002_01-anticoagulant-medication-tablet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: ccu002_01-anticoagulant-medication-150mg---primary/output
  ccu002_01-anticoagulant-medication-etexilate---primary:
    run: ccu002_01-anticoagulant-medication-etexilate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: ccu002_01-anticoagulant-medication-tablet---primary/output
  ccu002_01-anticoagulant-medication-pradaxa---primary:
    run: ccu002_01-anticoagulant-medication-pradaxa---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: ccu002_01-anticoagulant-medication-etexilate---primary/output
  ccu002_01-anticoagulant-medication-apixaban---primary:
    run: ccu002_01-anticoagulant-medication-apixaban---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: ccu002_01-anticoagulant-medication-pradaxa---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: ccu002_01-anticoagulant-medication-apixaban---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
