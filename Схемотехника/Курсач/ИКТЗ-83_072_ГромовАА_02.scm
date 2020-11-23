scm:
  MajorVersion: 5
  MinorVersion: 1
  General:
    Scale: 93
    HPos: 1351
    VPos: 1431
    SWidth: 3000
    SHeight: 3000
  Special:
    LangVersion: 2
  Scheme:
    MajorSchVer: 3
    MinorSchVer: 0
    Objects:
      - ID: 26
        Type: 1000  # R
        Name: Rвх
        X: 1464
        Y: 1408
        Rot: 0
        FlipV: 0
        FlipH: 0
        active_property_page: 0
        Params:
          R: 8.2к
      - ID: 25
        Type: 1000  # R
        Name: Rвх1
        X: 1208
        Y: 1408
        Rot: 0
        FlipV: 0
        FlipH: 0
        active_property_page: 0
        Params:
          R: 8.2k
      - ID: 7
        Type: 1000  # R
        Name: R7
        X: 1116
        Y: 1328
        Rot: 1
        FlipV: 0
        FlipH: 0
        active_property_page: 0
        Params:
          R: 9100
      - ID: 11
        Type: 1000  # R
        Name: R8
        X: 1116
        Y: 1484
        Rot: 1
        FlipV: 0
        FlipH: 0
        active_property_page: 0
        Params:
          R: 3000
      - ID: 12
        Type: 1000  # R
        Name: R9
        X: 1292
        Y: 1528
        Rot: 1
        FlipV: 0
        FlipH: 0
        active_property_page: 0
        Params:
          R: 360
      - ID: 13
        Type: 1000  # R
        Name: R10
        X: 1540
        Y: 1328
        Rot: 1
        FlipV: 0
        FlipH: 0
        active_property_page: 0
        Params:
          R: 910
      - ID: 15
        Type: 1000  # R
        Name: R11
        X: 1540
        Y: 1532
        Rot: 1
        FlipV: 0
        FlipH: 0
        active_property_page: 0
        Params:
          R: 220
      - ID: 28
        Type: 2010  # U
        Name: U1
        X: 1644
        Y: 1420
        Rot: 3
        FlipV: 0
        FlipH: 1
        active_property_page: 0
        Params:
          ST: 1
          DC:
            U0: 11
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
      - ID: 31
        Type: 6002  # ИТУТ
        Name: ИТУТ1
        X: 1284
        Y: 1440
        Rot: 0
        FlipV: 0
        FlipH: 0
        active_property_page: 0
        Params:
          h: "-60"
      - ID: 33
        Type: 300  # CON
        Name: CON33
        X: 1116
        Y: 1408
        Rot: 0
        FlipV: 0
        FlipH: 0
        active_property_page: 0
      - ID: 34
        Type: 300  # CON
        Name: CON34
        X: 1292
        Y: 1488
        Rot: 0
        FlipV: 0
        FlipH: 0
        active_property_page: 0
      - ID: 36
        Type: 200  # GND
        Name: GND36
        X: 1292
        Y: 1600
        Rot: 0
        FlipV: 0
        FlipH: 0
        active_property_page: 0
      - ID: 38
        Type: 300  # CON
        Name: CON38
        X: 1292
        Y: 1576
        Rot: 0
        FlipV: 0
        FlipH: 0
        active_property_page: 0
      - ID: 39
        Type: 6002  # ИТУТ
        Name: ИТУТ2
        X: 1532
        Y: 1440
        Rot: 0
        FlipV: 0
        FlipH: 0
        active_property_page: 0
        Params:
          h: "-60"
      - ID: 41
        Type: 300  # CON
        Name: CON41
        X: 1540
        Y: 1488
        Rot: 0
        FlipV: 0
        FlipH: 0
        active_property_page: 0
      - ID: 42
        Type: 300  # CON
        Name: CON42
        X: 1292
        Y: 1292
        Rot: 0
        FlipV: 0
        FlipH: 0
        active_property_page: 0
      - ID: 43
        Type: 300  # CON
        Name: CON43
        X: 1540
        Y: 1292
        Rot: 0
        FlipV: 0
        FlipH: 0
        active_property_page: 0
      - ID: 44
        Type: 300  # CON
        Name: CON44
        X: 1540
        Y: 1576
        Rot: 0
        FlipV: 0
        FlipH: 0
        active_property_page: 0
    Wires:
      - obj1:
          ID: 7
          pin: 2
        obj2:
          ID: 33
          pin: 2
      - obj1:
          ID: 11
          pin: 1
        obj2:
          ID: 33
          pin: 4
      - obj1:
          ID: 25
          pin: 1
        obj2:
          ID: 33
          pin: 3
      - obj1:
          ID: 25
          pin: 2
        obj2:
          ID: 31
          pin: 1
      - obj1:
          ID: 31
          pin: 4
        obj2:
          ID: 34
          pin: 2
      - obj1:
          ID: 12
          pin: 1
        obj2:
          ID: 34
          pin: 4
      - obj1:
          ID: 31
          pin: 2
        obj2:
          ID: 34
          pin: 1
      - obj1:
          ID: 12
          pin: 2
        obj2:
          ID: 38
          pin: 2
      - obj1:
          ID: 36
          pin: 1
        obj2:
          ID: 38
          pin: 4
      - obj1:
          ID: 11
          pin: 2
        obj2:
          ID: 38
          pin: 1
      - obj1:
          ID: 34
          pin: 3
        obj2:
          ID: 26
          pin: 1
      - obj1:
          ID: 26
          pin: 2
        obj2:
          ID: 39
          pin: 1
      - obj1:
          ID: 39
          pin: 4
        obj2:
          ID: 41
          pin: 2
      - obj1:
          ID: 39
          pin: 2
        obj2:
          ID: 41
          pin: 1
      - obj1:
          ID: 41
          pin: 4
        obj2:
          ID: 15
          pin: 1
      - obj1:
          ID: 13
          pin: 2
        obj2:
          ID: 39
          pin: 3
      - obj1:
          ID: 7
          pin: 1
        obj2:
          ID: 42
          pin: 1
      - obj1:
          ID: 31
          pin: 3
        obj2:
          ID: 42
          pin: 4
      - obj1:
          ID: 13
          pin: 1
        obj2:
          ID: 43
          pin: 4
      - obj1:
          ID: 42
          pin: 3
        obj2:
          ID: 43
          pin: 1
      - obj1:
          ID: 28
          pin: 2
        obj2:
          ID: 43
          pin: 3
      - obj1:
          ID: 38
          pin: 3
        obj2:
          ID: 44
          pin: 1
      - obj1:
          ID: 15
          pin: 2
        obj2:
          ID: 44
          pin: 2
      - obj1:
          ID: 28
          pin: 1
        obj2:
          ID: 44
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
    TIME_THD: 0
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
    CountUR: 0
    CountIR: 1
    CountUI: 0
    CountIU: 0
    Digit: 4