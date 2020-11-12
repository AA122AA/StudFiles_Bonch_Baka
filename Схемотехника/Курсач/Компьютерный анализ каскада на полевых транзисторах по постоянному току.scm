scm:
  MajorVersion: 5
  MinorVersion: 1
  General:
    Scale: 123
    HPos: 1500
    VPos: 1384
    SWidth: 3000
    SHeight: 3000
  Special:
    LangVersion: 2
  Scheme:
    MajorSchVer: 3
    MinorSchVer: 0
    Objects:
      - ID: 3
        Type: 6001  # ИНУН
        Name: ИНУН1
        X: 1384
        Y: 1428
        Rot: 0
        FlipV: 0
        FlipH: 0
        active_property_page: 0
        Params:
          k: 1
      - ID: 5
        Type: 6002  # ИТУТ
        Name: ИТУТ1
        X: 1528
        Y: 1424
        Rot: 0
        FlipV: 0
        FlipH: 0
        active_property_page: 0
        Params:
          h: "-1"
      - ID: 9
        Type: 200  # GND
        Name: GND1
        X: 1376
        Y: 1600
        Rot: 0
        FlipV: 0
        FlipH: 0
        active_property_page: 0
      - ID: 11
        Type: 300  # CON
        Name: CON1
        X: 1424
        Y: 1468
        Rot: 0
        FlipV: 0
        FlipH: 0
        active_property_page: 0
      - ID: 12
        Type: 300  # CON
        Name: CON2
        X: 1332
        Y: 1468
        Rot: 0
        FlipV: 0
        FlipH: 0
        active_property_page: 0
      - ID: 14
        Type: 300  # CON
        Name: CON3
        X: 1376
        Y: 1480
        Rot: 0
        FlipV: 0
        FlipH: 0
        active_property_page: 0
      - ID: 15
        Type: 300  # CON
        Name: CON4
        X: 1512
        Y: 1468
        Rot: 0
        FlipV: 0
        FlipH: 0
        active_property_page: 0
      - ID: 18
        Type: 1000  # R
        Name: Rс
        X: 1536
        Y: 1332
        Rot: 3
        FlipV: 0
        FlipH: 0
        active_property_page: 0
        Params:
          R: 1k
      - ID: 28
        Type: 300  # CON
        Name: CON7
        X: 1376
        Y: 1572
        Rot: 0
        FlipV: 0
        FlipH: 0
        active_property_page: 0
      - ID: 29
        Type: 300  # CON
        Name: CON8
        X: 1536
        Y: 1272
        Rot: 0
        FlipV: 0
        FlipH: 0
        active_property_page: 0
      - ID: 30
        Type: 2010  # U
        Name: Uп
        X: 1640
        Y: 1272
        Rot: 2
        FlipV: 1
        FlipH: 0
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
      - ID: 35
        Type: 1000  # R
        Name: Rи
        X: 1376
        Y: 1528
        Rot: 1
        FlipV: 0
        FlipH: 0
        active_property_page: 0
        Params:
          R: 0.5k
      - ID: 37
        Type: 1100  # NLR
        Name: NLR1
        X: 1452
        Y: 1380
        Rot: 0
        FlipV: 0
        FlipH: 0
        active_property_page: 0
        Params:
          fn:
            x:
              - "-9.2788459999999997"
              - "-6.8269229999999999"
              - "-5.2403849999999998"
              - "-3.9423080000000001"
              - "-2.9326919999999999"
              - "-1.9230769999999999"
              - "-1.2019230000000001"
              - 0.024038460000000001
            y:
              - 0.001428571
              - 0.0071428570000000007
              - 0.02
              - 0.040000000000000001
              - 0.061428570000000002
              - 0.088571430000000007
              - 0.1114286
              - 0.1535714
      - ID: 39
        Type: 900  # ТЕКСТ
        Name: ТЕКСТ1
        X: 1300
        Y: 1364
        Rot: 0
        FlipV: 0
        FlipH: 0
        active_property_page: 0
        Params:
          Text: з
          Color: 000000FF
          Font:
            lfHeight: "-24"
            lfWidth: 0
            lfEscapement: 0
            lfOrientation: 0
            lfWeight: 400
            lfItalic: 0
            lfUnderline: 0
            lfStrikeOut: 0
            lfCharSet: 204
            lfOutPrecision: 3
            lfClipPrecision: 2
            lfQuality: 1
            lfPitchAndFamily: 49
            lfFaceName: "Courier New"
      - ID: 41
        Type: 900  # ТЕКСТ
        Name: ТЕКСТ2
        X: 1548
        Y: 1392
        Rot: 0
        FlipV: 0
        FlipH: 0
        active_property_page: 0
        Params:
          Text: с
          Color: 000000FF
          Font:
            lfHeight: "-21"
            lfWidth: 0
            lfEscapement: 0
            lfOrientation: 0
            lfWeight: 400
            lfItalic: 0
            lfUnderline: 0
            lfStrikeOut: 0
            lfCharSet: 204
            lfOutPrecision: 3
            lfClipPrecision: 2
            lfQuality: 1
            lfPitchAndFamily: 49
            lfFaceName: "Courier New"
      - ID: 43
        Type: 300  # CON
        Name: CON5
        X: 1536
        Y: 1376
        Rot: 0
        FlipV: 0
        FlipH: 0
        active_property_page: 0
      - ID: 45
        Type: 900  # ТЕКСТ
        Name: ТЕКСТ3
        X: 1392
        Y: 1492
        Rot: 0
        FlipV: 0
        FlipH: 0
        active_property_page: 0
        Params:
          Text: и
          Color: 000000FF
          Font:
            lfHeight: "-21"
            lfWidth: 0
            lfEscapement: 0
            lfOrientation: 0
            lfWeight: 400
            lfItalic: 0
            lfUnderline: 0
            lfStrikeOut: 0
            lfCharSet: 204
            lfOutPrecision: 3
            lfClipPrecision: 2
            lfQuality: 1
            lfPitchAndFamily: 49
            lfFaceName: "Courier New"
      - ID: 47
        Type: 900  # ТЕКСТ
        Name: ТЕКСТ4
        X: 1484
        Y: 1184
        Rot: 0
        FlipV: 0
        FlipH: 0
        active_property_page: 0
        Params:
          Text: "Нелинейная модель полевого транзистора \r\n      по постоянному току"
          Color: 00808000
          Font:
            lfHeight: "-24"
            lfWidth: 0
            lfEscapement: 0
            lfOrientation: 0
            lfWeight: 400
            lfItalic: 0
            lfUnderline: 0
            lfStrikeOut: 0
            lfCharSet: 204
            lfOutPrecision: 3
            lfClipPrecision: 2
            lfQuality: 1
            lfPitchAndFamily: 49
            lfFaceName: "Courier New"
      - ID: 53
        Type: 200  # GND
        Name: GND2
        X: 1696
        Y: 1292
        Rot: 0
        FlipV: 0
        FlipH: 0
        active_property_page: 0
      - ID: 58
        Type: 200  # GND
        Name: GND3
        X: 1704
        Y: 1604
        Rot: 0
        FlipV: 0
        FlipH: 0
        active_property_page: 0
      - ID: 59
        Type: 300  # CON
        Name: CON6
        X: 1308
        Y: 1384
        Rot: 0
        FlipV: 0
        FlipH: 0
        active_property_page: 0
      - ID: 61
        Type: 1000  # R
        Name: R2
        X: 1704
        Y: 1484
        Rot: 1
        FlipV: 0
        FlipH: 0
        active_property_page: 0
        Params:
          R: 1k
      - ID: 63
        Type: 1000  # R
        Name: Rз1
        X: 1280
        Y: 1328
        Rot: 1
        FlipV: 0
        FlipH: 0
        active_property_page: 0
        Params:
          R: 7k
      - ID: 65
        Type: 1000  # R
        Name: Rз2
        X: 1280
        Y: 1476
        Rot: 1
        FlipV: 0
        FlipH: 0
        active_property_page: 0
        Params:
          R: 10k
      - ID: 67
        Type: 300  # CON
        Name: CON9
        X: 1280
        Y: 1384
        Rot: 0
        FlipV: 0
        FlipH: 0
        active_property_page: 0
    Wires:
      - obj1:
          ID: 3
          pin: 4
        obj2:
          ID: 11
          pin: 1
      - obj1:
          ID: 3
          pin: 2
        obj2:
          ID: 12
          pin: 3
      - obj1:
          ID: 11
          pin: 4
        obj2:
          ID: 14
          pin: 3
      - obj1:
          ID: 12
          pin: 4
        obj2:
          ID: 14
          pin: 1
      - obj1:
          ID: 5
          pin: 2
        obj2:
          ID: 15
          pin: 2
      - obj1:
          ID: 11
          pin: 3
        obj2:
          ID: 15
          pin: 1
      - obj1:
          ID: 9
          pin: 1
        obj2:
          ID: 28
          pin: 4
      - obj1:
          ID: 18
          pin: 2
        obj2:
          ID: 29
          pin: 4
      - obj1:
          ID: 30
          pin: 2
        obj2:
          ID: 29
          pin: 3
      - obj1:
          ID: 14
          pin: 4
        obj2:
          ID: 35
          pin: 1
      - obj1:
          ID: 28
          pin: 2
        obj2:
          ID: 35
          pin: 2
      - obj1:
          ID: 37
          pin: 1
        obj2:
          ID: 3
          pin: 3
      - obj1:
          ID: 37
          pin: 2
        obj2:
          ID: 5
          pin: 1
      - obj1:
          ID: 5
          pin: 4
        obj2:
          ID: 15
          pin: 3
      - obj1:
          ID: 53
          pin: 1
        obj2:
          ID: 30
          pin: 1
      - obj1:
          ID: 18
          pin: 1
        obj2:
          ID: 43
          pin: 2
      - obj1:
          ID: 5
          pin: 3
        obj2:
          ID: 43
          pin: 4
      - obj1:
          ID: 58
          pin: 1
        obj2:
          ID: 61
          pin: 2
      - obj1:
          ID: 61
          pin: 1
        obj2:
          ID: 43
          pin: 3
      - obj1:
          ID: 63
          pin: 1
        obj2:
          ID: 29
          pin: 1
      - obj1:
          ID: 63
          pin: 2
        obj2:
          ID: 67
          pin: 2
      - obj1:
          ID: 59
          pin: 1
        obj2:
          ID: 67
          pin: 3
      - obj1:
          ID: 65
          pin: 1
        obj2:
          ID: 67
          pin: 4
      - obj1:
          ID: 3
          pin: 1
        obj2:
          ID: 59
          pin: 3
      - obj1:
          ID: 65
          pin: 2
        obj2:
          ID: 28
          pin: 1
  TD:
    Expressions:
      - plot: 
        x: t
        y: U(8)
      - plot: 1
        x: t
        y: U(2)
    ExprRowOffset: 0
    IPNum: 1
    IP:
      - StartTime: 0
        EndTime: 130м
        TimeStep: tmax/(10000)
        NumPts: 10000
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
    ScaleX: 1
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
    AvailMemory: 527433728
    ShowTransStat: 0
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