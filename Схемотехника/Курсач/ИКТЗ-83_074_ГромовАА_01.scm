scm:
  MajorVersion: 5
  MinorVersion: 1
  General:
    Scale: 87
    HPos: 1648
    VPos: 1588
    SWidth: 3000
    SHeight: 3000
  Special:
    LangVersion: 2
  Scheme:
    MajorSchVer: 3
    MinorSchVer: 0
    Objects:
      - ID: 16
        Type: 2010  # U
        Name: E0
        X: 1832
        Y: 1552
        Rot: 3
        FlipV: 0
        FlipH: 1
        active_property_page: 0
        Params:
          ST: 1
          DC:
            U0: 9
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
      - ID: 4
        Type: 1000  # R
        Name: R3
        X: 1460
        Y: 1444
        Rot: 1
        FlipV: 0
        FlipH: 0
        active_property_page: 0
        Params:
          R: 62k
      - ID: 5
        Type: 1000  # R
        Name: R4
        X: 1460
        Y: 1620
        Rot: 1
        FlipV: 0
        FlipH: 0
        active_property_page: 0
        Params:
          R: 6.2k
      - ID: 7
        Type: 1000  # R
        Name: R5
        X: 1720
        Y: 1432
        Rot: 1
        FlipV: 0
        FlipH: 0
        active_property_page: 0
        Params:
          R: 3.9к
      - ID: 8
        Type: 1000  # R
        Name: R6
        X: 1664
        Y: 1660
        Rot: 1
        FlipV: 0
        FlipH: 0
        active_property_page: 0
        Params:
          R: 2.7k
      - ID: 14
        Type: 1100  # NLR
        Name: NLR1
        X: 1632
        Y: 1492
        Rot: 0
        FlipV: 0
        FlipH: 0
        active_property_page: 0
        Params:
          fn:
            x:
              - "-1.5"
              - "-1.25"
              - "-1"
              - "-0.75"
              - "-0.5"
              - "-0.25"
              - 0
            y:
              - 0
              - 0.00017999999999999998
              - 0.00060000000000000006
              - 0.0015
              - 0.0027000000000000001
              - 0.0040999999999999995
              - 0.0060000000000000001
      - ID: 20
        Type: 200  # GND
        Name: GND20
        X: 1664
        Y: 1736
        Rot: 0
        FlipV: 0
        FlipH: 0
        active_property_page: 0
      - ID: 22
        Type: 300  # CON
        Name: CON22
        X: 1664
        Y: 1712
        Rot: 0
        FlipV: 0
        FlipH: 0
        active_property_page: 0
      - ID: 24
        Type: 6001  # ИНУН
        Name: ИНУН1
        X: 1576
        Y: 1544
        Rot: 0
        FlipV: 0
        FlipH: 0
        active_property_page: 0
        Params:
          k: 1
      - ID: 32
        Type: 6002  # ИТУТ
        Name: ИТУТ1
        X: 1712
        Y: 1540
        Rot: 0
        FlipV: 0
        FlipH: 0
        active_property_page: 0
        Params:
          h: "-1"
      - ID: 39
        Type: 300  # CON
        Name: CON39
        X: 1720
        Y: 1392
        Rot: 0
        FlipV: 0
        FlipH: 0
        active_property_page: 0
      - ID: 41
        Type: 300  # CON
        Name: CON41
        X: 1460
        Y: 1512
        Rot: 0
        FlipV: 0
        FlipH: 0
        active_property_page: 0
      - ID: 42
        Type: 300  # CON
        Name: CON42
        X: 1584
        Y: 1600
        Rot: 0
        FlipV: 0
        FlipH: 0
        active_property_page: 0
      - ID: 43
        Type: 300  # CON
        Name: CON43
        X: 1696
        Y: 1600
        Rot: 0
        FlipV: 0
        FlipH: 0
        active_property_page: 0
      - ID: 44
        Type: 300  # CON
        Name: CON44
        X: 1664
        Y: 1600
        Rot: 0
        FlipV: 0
        FlipH: 0
        active_property_page: 0
    Wires:
      - obj1:
          ID: 5
          pin: 2
        obj2:
          ID: 22
          pin: 1
      - obj1:
          ID: 8
          pin: 2
        obj2:
          ID: 22
          pin: 2
      - obj1:
          ID: 20
          pin: 1
        obj2:
          ID: 22
          pin: 4
      - obj1:
          ID: 16
          pin: 1
        obj2:
          ID: 22
          pin: 3
      - obj1:
          ID: 32
          pin: 3
        obj2:
          ID: 7
          pin: 2
      - obj1:
          ID: 16
          pin: 2
        obj2:
          ID: 39
          pin: 3
      - obj1:
          ID: 7
          pin: 1
        obj2:
          ID: 39
          pin: 4
      - obj1:
          ID: 4
          pin: 1
        obj2:
          ID: 39
          pin: 1
      - obj1:
          ID: 32
          pin: 1
        obj2:
          ID: 14
          pin: 2
      - obj1:
          ID: 14
          pin: 1
        obj2:
          ID: 24
          pin: 3
      - obj1:
          ID: 4
          pin: 2
        obj2:
          ID: 41
          pin: 2
      - obj1:
          ID: 5
          pin: 1
        obj2:
          ID: 41
          pin: 4
      - obj1:
          ID: 41
          pin: 3
        obj2:
          ID: 24
          pin: 1
      - obj1:
          ID: 24
          pin: 4
        obj2:
          ID: 42
          pin: 2
      - obj1:
          ID: 24
          pin: 2
        obj2:
          ID: 42
          pin: 1
      - obj1:
          ID: 32
          pin: 2
        obj2:
          ID: 43
          pin: 2
      - obj1:
          ID: 32
          pin: 4
        obj2:
          ID: 43
          pin: 3
      - obj1:
          ID: 43
          pin: 1
        obj2:
          ID: 44
          pin: 3
      - obj1:
          ID: 42
          pin: 3
        obj2:
          ID: 44
          pin: 1
      - obj1:
          ID: 8
          pin: 1
        obj2:
          ID: 44
          pin: 4
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
    Digit: 3