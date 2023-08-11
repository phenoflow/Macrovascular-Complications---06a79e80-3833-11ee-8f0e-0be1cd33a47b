cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  macrovascular-complications-amputation---primary:
    run: macrovascular-complications-amputation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  macrovascular-complications-ankle---primary:
    run: macrovascular-complications-ankle---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: macrovascular-complications-amputation---primary/output
  macrovascular-complications-specified---primary:
    run: macrovascular-complications-specified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: macrovascular-complications-ankle---primary/output
  macrovascular-complications-myocard---primary:
    run: macrovascular-complications-myocard---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: macrovascular-complications-specified---primary/output
  coronary-macrovascular-complications---primary:
    run: coronary-macrovascular-complications---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: macrovascular-complications-myocard---primary/output
  macrovascular-complications-ruptur---primary:
    run: macrovascular-complications-ruptur---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: coronary-macrovascular-complications---primary/output
  lateral-macrovascular-complications---primary:
    run: lateral-macrovascular-complications---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: macrovascular-complications-ruptur---primary/output
  macrovascular-complications-infarct---primary:
    run: macrovascular-complications-infarct---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: lateral-macrovascular-complications---primary/output
  septal-macrovascular-complications---primary:
    run: septal-macrovascular-complications---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: macrovascular-complications-infarct---primary/output
  macrovascular-complications-posterior---primary:
    run: macrovascular-complications-posterior---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: septal-macrovascular-complications---primary/output
  subendocardial-macrovascular-complications---primary:
    run: subendocardial-macrovascular-complications---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: macrovascular-complications-posterior---primary/output
  macrovascular-complications-elevation---primary:
    run: macrovascular-complications-elevation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: subendocardial-macrovascular-complications---primary/output
  macrovascular-complications-infarctn---primary:
    run: macrovascular-complications-infarctn---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: macrovascular-complications-elevation---primary/output
  macrovascular-complications-unspecif---primary:
    run: macrovascular-complications-unspecif---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: macrovascular-complications-infarctn---primary/output
  macrovascular-complications-muscle---primary:
    run: macrovascular-complications-muscle---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: macrovascular-complications-unspecif---primary/output
  macrovascular-complications-aborted---primary:
    run: macrovascular-complications-aborted---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: macrovascular-complications-muscle---primary/output
  macrovascular-complications-arrest---primary:
    run: macrovascular-complications-arrest---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: macrovascular-complications-aborted---primary/output
  macrovascular-complications-asystole---primary:
    run: macrovascular-complications-asystole---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: macrovascular-complications-arrest---primary/output
  macrovascular-complications-cardiac---primary:
    run: macrovascular-complications-cardiac---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: macrovascular-complications-asystole---primary/output
  macrovascular-complications-cereb---primary:
    run: macrovascular-complications-cereb---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: macrovascular-complications-cardiac---primary/output
  macrovascular-complications-haemorrhage---primary:
    run: macrovascular-complications-haemorrhage---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: macrovascular-complications-cereb---primary/output
  macrovascular-complications-capsule---primary:
    run: macrovascular-complications-capsule---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: macrovascular-complications-haemorrhage---primary/output
  macrovascular-complications-basal---primary:
    run: macrovascular-complications-basal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: macrovascular-complications-capsule---primary/output
  macrovascular-complications-hemisphere---primary:
    run: macrovascular-complications-hemisphere---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: macrovascular-complications-basal---primary/output
  macrovascular-complications-precerebr---primary:
    run: macrovascular-complications-precerebr---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: macrovascular-complications-hemisphere---primary/output
  macrovascular-complications-occlus---primary:
    run: macrovascular-complications-occlus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: macrovascular-complications-precerebr---primary/output
  macrovascular-complications-brainstem---primary:
    run: macrovascular-complications-brainstem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: macrovascular-complications-occlus---primary/output
  macrovascular-complications-lacunar---primary:
    run: macrovascular-complications-lacunar---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: macrovascular-complications-brainstem---primary/output
  macrovascular-complications-sided---primary:
    run: macrovascular-complications-sided---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: macrovascular-complications-lacunar---primary/output
  right-macrovascular-complications---primary:
    run: right-macrovascular-complications---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: macrovascular-complications-sided---primary/output
  macrovascular-complications-generalised---primary:
    run: macrovascular-complications-generalised---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: right-macrovascular-complications---primary/output
  macrovascular-complications-occlusn---primary:
    run: macrovascular-complications-occlusn---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: macrovascular-complications-generalised---primary/output
  macrovascular-complications-atherosclerosis---primary:
    run: macrovascular-complications-atherosclerosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: macrovascular-complications-occlusn---primary/output
  cerebrovascular-macrovascular-complications---primary:
    run: cerebrovascular-macrovascular-complications---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: macrovascular-complications-atherosclerosis---primary/output
  ischaemic-macrovascular-complications---primary:
    run: ischaemic-macrovascular-complications---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: cerebrovascular-macrovascular-complications---primary/output
  macrovascular-complications-claudication---primary:
    run: macrovascular-complications-claudication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: ischaemic-macrovascular-complications---primary/output
  arterial-macrovascular-complications---primary:
    run: arterial-macrovascular-complications---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: macrovascular-complications-claudication---primary/output
  macrovascular-complications-iliac---primary:
    run: macrovascular-complications-iliac---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: arterial-macrovascular-complications---primary/output
  diabetic-macrovascular-complications---primary:
    run: diabetic-macrovascular-complications---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: macrovascular-complications-iliac---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: diabetic-macrovascular-complications---primary/output
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
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
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
