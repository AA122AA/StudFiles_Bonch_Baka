scm:
  MajorVersion: 5
  MinorVersion: 1
  General:
    Scale: 100
    HPos: 1500
    VPos: 1563
    SWidth: 3000
    SHeight: 3000
  Special:
    LangVersion: 2
  Scheme:
    MajorSchVer: 3
    MinorSchVer: 0
    Objects:
      - ID: 6
        Type: 1000  # R
        Name: R10
        X: 1648
        Y: 1400
        Rot: 1
        FlipV: 0
        FlipH: 0
        active_property_page: 0
        Params:
          R: 4300
      - ID: 8
        Type: 1000  # R
        Name: R11
        X: 1648
        Y: 1616
        Rot: 1
        FlipV: 0
        FlipH: 0
        active_property_page: 0
        Params:
          R: 1100
      - ID: 4
        Type: 1000  # R
        Name: H113
        X: 1380
        Y: 1456
        Rot: 0
        FlipV: 0
        FlipH: 0
        active_property_page: 0
        Params:
          R: 276k
      - ID: 5
        Type: 1000  # R
        Name: H114
        X: 1572
        Y: 1452
        Rot: 0
        FlipV: 0
        FlipH: 0
        active_property_page: 0
        Params:
          R: 246k
      - ID: 7
        Type: 1000  # R
        Name: R9
        X: 1488
        Y: 1604
        Rot: 1
        FlipV: 0
        FlipH: 0
        active_property_page: 0
        Params:
          R: 2200
      - ID: 3
        Type: 1000  # R
        Name: R8
        X: 1292
        Y: 1552
        Rot: 1
        FlipV: 0
        FlipH: 0
        active_property_page: 0
        Params:
          R: 91k
      - ID: 2
        Type: 1000  # R
        Name: R7
        X: 1292
        Y: 1396
        Rot: 1
        FlipV: 0
        FlipH: 0
        active_property_page: 0
        Params:
          R: 270k
      - ID: 10
        Type: 200  # GND
        Name: GND10
        X: 1488
        Y: 1696
        Rot: 0
        FlipV: 0
        FlipH: 0
        active_property_page: 0
      - ID: 12
        Type: 2010  # U
        Name: U1
        X: 1756
        Y: 1496
        Rot: 3
        FlipV: 0
        FlipH: 1
        active_property_page: 0
        Params:
          ST: 1
          DC:
            U0: 10
            Delay: 0
            TFR: 1n
          AC:
            U0: 1
            F: 1k
            PHI0: 0
            FD: 0
            NP: 1
            Delay: 0
          PULSE:
            F: 1k
            K: 50
            UMAX: 1
            UMIN: 0
            TFR: 1n
            Delay: 0
          TRIANG:
            F: 1k
            K: 50
            UMAX: 1
            UMIN: 0
            Delay: 0
          USER:
            ScaleT: 1
            ScaleU: 1
            OffsetU: 0
            Delay: 0
            PER: 0
            NP: 1
            U:
              x:
                - 0
                - 0.050000000000000003
                - 0.5
                - 0.55000000000000004
                - 1
              y:
                - 0
                - 1
                - 1
                - 0
                - 0
      - ID: 14
        Type: 6002  # ИТУТ
        Name: ИТУТ1
        X: 1480
        Y: 1504
        Rot: 0
        FlipV: 0
        FlipH: 0
        active_property_page: 0
        Params:
          h: "-316.227"
      - ID: 15
        Type: 6002  # ИТУТ
        Name: ИТУТ2
        X: 1640
        Y: 1504
        Rot: 0
        FlipV: 0
        FlipH: 0
        active_property_page: 0
        Params:
          h: "-316.227"
      - ID: 17
        Type: 300  # CON
        Name: CON17
        X: 1488
        Y: 1556
        Rot: 0
        FlipV: 0
        FlipH: 0
        active_property_page: 0
      - ID: 18
        Type: 300  # CON
        Name: CON18
        X: 1292
        Y: 1456
        Rot: 0
        FlipV: 0
        FlipH: 0
        active_property_page: 0
      - ID: 19
        Type: 300  # CON
        Name: CON19
        X: 1488
        Y: 1356
        Rot: 0
        FlipV: 0
        FlipH: 0
        active_property_page: 0
      - ID: 20
        Type: 300  # CON
        Name: CON20
        X: 1648
        Y: 1560
        Rot: 0
        FlipV: 0
        FlipH: 0
        active_property_page: 0
      - ID: 21
        Type: 300  # CON
        Name: CON21
        X: 1488
        Y: 1648
        Rot: 0
        FlipV: 0
        FlipH: 0
        active_property_page: 0
      - ID: 22
        Type: 300  # CON
        Name: CON22
        X: 1648
        Y: 1356
        Rot: 0
        FlipV: 0
        FlipH: 0
        active_property_page: 0
      - ID: 23
        Type: 300  # CON
        Name: CON23
        X: 1648
        Y: 1648
        Rot: 0
        FlipV: 0
        FlipH: 0
        active_property_page: 0
    Wires:
      - obj1:
          ID: 14
          pin: 1
        obj2:
          ID: 4
          pin: 2
      - obj1:
          ID: 14
          pin: 4
        obj2:
          ID: 17
          pin: 2
      - obj1:
          ID: 7
          pin: 1
        obj2:
          ID: 17
          pin: 4
      - obj1:
          ID: 14
          pin: 2
        obj2:
          ID: 17
          pin: 1
      - obj1:
          ID: 3
          pin: 1
        obj2:
          ID: 18
          pin: 4
      - obj1:
          ID: 2
          pin: 2
        obj2:
          ID: 18
          pin: 2
      - obj1:
          ID: 4
          pin: 1
        obj2:
          ID: 18
          pin: 3
      - obj1:
          ID: 5
          pin: 1
        obj2:
          ID: 17
          pin: 3
      - obj1:
          ID: 2
          pin: 1
        obj2:
          ID: 19
          pin: 1
      - obj1:
          ID: 14
          pin: 3
        obj2:
          ID: 19
          pin: 4
      - obj1:
          ID: 6
          pin: 2
        obj2:
          ID: 15
          pin: 3
      - obj1:
          ID: 15
          pin: 1
        obj2:
          ID: 5
          pin: 2
      - obj1:
          ID: 8
          pin: 1
        obj2:
          ID: 20
          pin: 4
      - obj1:
          ID: 15
          pin: 4
        obj2:
          ID: 20
          pin: 2
      - obj1:
          ID: 15
          pin: 2
        obj2:
          ID: 20
          pin: 1
      - obj1:
          ID: 3
          pin: 2
        obj2:
          ID: 21
          pin: 1
      - obj1:
          ID: 7
          pin: 2
        obj2:
          ID: 21
          pin: 2
      - obj1:
          ID: 10
          pin: 1
        obj2:
          ID: 21
          pin: 4
      - obj1:
          ID: 6
          pin: 1
        obj2:
          ID: 22
          pin: 4
      - obj1:
          ID: 19
          pin: 3
        obj2:
          ID: 22
          pin: 1
      - obj1:
          ID: 12
          pin: 2
        obj2:
          ID: 22
          pin: 3
      - obj1:
          ID: 8
          pin: 2
        obj2:
          ID: 23
          pin: 2
      - obj1:
          ID: 21
          pin: 3
        obj2:
          ID: 23
          pin: 1
      - obj1:
          ID: 12
          pin: 1
        obj2:
          ID: 23
          pin: 3
  TD:
    Expressions:
      - plot: 1
        x: t
        y: U(1)
      - plot: 1
        x: t
        y: U(2)
      - plot: 
        x: t
        y: 
      - plot: 
        x: t
        y: 
      - plot: 
        x: t
        y: 
      - plot: 
        x: t
        y: 
      - plot: 
        x: t
        y: 
    ExprRowOffset: 0
    IPNum: 1
    IP:
      - StartTime: 0
        EndTime: 1m
        TimeStep: tmax/100
        NumPts: 100
        PtsStepFl: 2
        EPS: 0.001
        GraphType: 1
    IC: 0
    SVD:
      IC: 0
      ICReadFileName: data.sv
      SVWriteFlag: 0
      SVWriteFileName: data.sv
      SV2SchemeFlag: 0
      SVPredictFlag: 0
    ParamSweep: 0
    PSD:
      - Component: 
        ParamIndex: 0
        StartVal: 0
        EndVal: 0
        NumPts: 10
        SweepType: 1
        On: 1
      - Component: 
        ParamIndex: 0
        StartVal: 0
        EndVal: 0
        NumPts: 10
        SweepType: 1
        On: 0
      - Component: 
        ParamIndex: 0
        StartVal: 0
        EndVal: 0
        NumPts: 10
        SweepType: 1
        On: 0
      - Component: 
        ParamIndex: 0
        StartVal: 0
        EndVal: 0
        NumPts: 10
        SweepType: 1
        On: 0
      - Component: 
        ParamIndex: 0
        StartVal: 0
        EndVal: 0
        NumPts: 10
        SweepType: 1
        On: 0
    FFT: 0
    FFTD:
      StartVal: "-1"
      EndVal: "-1"
      PointNum: 100
      GraphType: 3
      ShowPointNum: 100
      window_type: 0
  FD:
    StartFreq: 1
    EndFreq: 1М
    NumPts: 100
    ScaleX: 2
    ScaleY: 1
    AvailScaleX: 3
    AvailScaleY: 3
    Expressions:
      - plot: 1
        x: f
        y: mag(U(2)/U(1))
      - plot: 2
        x: f
        y: phs(U(2)/U(1))
      - plot: 
        x: f
        y: 
      - plot: 
        x: f
        y: 
      - plot: 
        x: f
        y: 
      - plot: 
        x: f
        y: 
      - plot: 
        x: f
        y: 
    ExprRowOffset: 0
    ParamSweep: 0
    PSD:
      - Component: 
        ParamIndex: 0
        StartVal: 0
        EndVal: 0
        NumPts: 10
        SweepType: 1
        On: 1
      - Component: 
        ParamIndex: 0
        StartVal: 0
        EndVal: 0
        NumPts: 10
        SweepType: 1
        On: 0
      - Component: 
        ParamIndex: 0
        StartVal: 0
        EndVal: 0
        NumPts: 10
        SweepType: 1
        On: 0
      - Component: 
        ParamIndex: 0
        StartVal: 0
        EndVal: 0
        NumPts: 10
        SweepType: 1
        On: 0
      - Component: 
        ParamIndex: 0
        StartVal: 0
        EndVal: 0
        NumPts: 10
        SweepType: 1
        On: 0
    FFT: 0
    FFTD:
      StartVal: "-1"
      EndVal: "-1"
      PointNum: 100
      GraphType: 3
      ShowPointNum: 100
      window_type: 0
  AOD:
    DrawGraph: 1
    AvailMemory: 536870912
    ShowTransStat: 0
    EPS_ME: EPS
    R_PD: 1e10
  SOD:
    ShowID: 1
    ShowParam: 1
    ShowNodes: 1
    FontID:
      lfHeight: 100
      lfWidth: 0
      lfEscapement: 0
      lfOrientation: 0
      lfWeight: 400
      lfItalic: 0
      lfUnderline: 0
      lfStrikeOut: 0
      lfCharSet: 1
      lfOutPrecision: 0
      lfClipPrecision: 0
      lfQuality: 0
      lfPitchAndFamily: 0
      lfFaceName: "Times New Roman"
    FontParam:
      lfHeight: 100
      lfWidth: 0
      lfEscapement: 0
      lfOrientation: 0
      lfWeight: 400
      lfItalic: 0
      lfUnderline: 0
      lfStrikeOut: 0
      lfCharSet: 204
      lfOutPrecision: 0
      lfClipPrecision: 0
      lfQuality: 0
      lfPitchAndFamily: 0
      lfFaceName: Arial
    FontNodes:
      lfHeight: 120
      lfWidth: 0
      lfEscapement: 0
      lfOrientation: 0
      lfWeight: 400
      lfItalic: 0
      lfUnderline: 0
      lfStrikeOut: 0
      lfCharSet: 1
      lfOutPrecision: 0
      lfClipPrecision: 0
      lfQuality: 0
      lfPitchAndFamily: 0
      lfFaceName: Arial
    ColorID: 00FF0000
    ColorParam: 00FF0000
    ColorNodes: 00008000
    Uh: 5
    Ul: 0
    Uh2l: 2.5
    Ul2h: 2.5
  DCOP:
    CountNV: 1
    CountSV: 0
    CountUR: 1
    CountIR: 1
    CountUI: 0
    CountIU: 0
    Digit: 4