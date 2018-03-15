(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 9.0' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc. For additional information concerning CDF     *)
(*  licensing and redistribution see:                                    *)
(*                                                                       *)
(*        www.wolfram.com/cdf/adopting-cdf/licensing-options.html        *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1063,         20]
NotebookDataLength[     18256,        397]
NotebookOptionsPosition[     18321,        377]
NotebookOutlinePosition[     18781,        398]
CellTagsIndexPosition[     18738,        395]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[BoxData[{
 RowBox[{"Data1", "=", 
  RowBox[{
  "ReadList", "[", 
   "\"\</Users/jayfman/Documents/School/College/Computational/Classwork/\
Nuclear/out.TOTTH\>\"", "]"}]}], "\[IndentingNewLine]", 
 RowBox[{"Data2", "=", 
  RowBox[{
  "ReadList", "[", 
   "\"\</Users/jayfman/Documents/School/College/Computational/Classwork/\
Nuclear/out.TOTB\>\"", "]"}]}], "\[IndentingNewLine]", 
 RowBox[{"Data3", "=", 
  RowBox[{
  "ReadList", "[", 
   "\"\</Users/jayfman/Documents/School/College/Computational/Classwork/\
Nuclear/out.TOTTR\>\"", "]"}]}], "\[IndentingNewLine]", 
 RowBox[{"Data4", "=", 
  RowBox[{
  "ReadList", "[", 
   "\"\</Users/jayfman/Documents/School/College/Computational/Classwork/\
Nuclear/out.TOTAB\>\"", "]"}]}], "\[IndentingNewLine]", 
 RowBox[{"ListLinePlot", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"Data1", ",", "Data2", ",", "Data3", ",", "Data4"}], "}"}], ",", 
   RowBox[{"PlotLegends", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{
     "\"\<Thermalized\>\"", ",", "\"\<Backscattered\>\"", ",", 
      "\"\<Transmitted\>\"", ",", "\"\<Absorbed\>\""}], "}"}]}]}], 
  "]"}]}], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
  "9.46000004`", ",", "11.6599998`", ",", "14.3000011`", ",", "14.46`", ",", 
   "15.5799999`", ",", "15.8199997`", ",", "16.2000008`", ",", "16.6800003`", 
   ",", "16.1800003`", ",", "15.6000004`", ",", "14.8599997`", ",", 
   "14.6799994`", ",", "14.4400005`", ",", "13.54`", ",", "13.2400007`", ",", 
   "12.8000002`", ",", "11.7399998`", ",", "12.1000004`", ",", "11.2200003`", 
   ",", "10.5999994`", ",", "10.2399998`", ",", "10.1199999`", ",", 
   "8.97999954`", ",", "8.22000027`", ",", "8.35999966`", ",", "8.47999954`", 
   ",", "7.55999994`", ",", "6.5800004`", ",", "6.53999949`", ",", 
   "5.98000002`", ",", "6.44000006`", ",", "5.27999973`", ",", "5.5`", ",", 
   "5.16000032`", ",", "4.5999999`", ",", "4.84000015`", ",", "4.51999998`", 
   ",", "4.30000019`", ",", "3.94000006`", ",", "4.17999983`", ",", 
   "3.86000013`", ",", "3.62000012`", ",", "3.`", ",", "3.5`", ",", 
   "3.15999985`", ",", "3.01999998`", ",", "2.92000008`", ",", "2.58000016`", 
   ",", "3.15999985`", ",", "2.87999988`"}], "}"}]], "Output"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
  "0.25999999`", ",", "0.359999985`", ",", "0.179999992`", ",", "0.25999999`",
    ",", "0.419999987`", ",", "0.439999998`", ",", "0.300000012`", ",", 
   "0.460000008`", ",", "0.400000006`", ",", "0.379999995`", ",", 
   "0.359999985`", ",", "0.519999981`", ",", "0.280000001`", ",", "0.5`", ",",
    "0.219999999`", ",", "0.480000019`", ",", "0.340000004`", ",", 
   "0.419999987`", ",", "0.439999998`", ",", "0.379999995`", ",", 
   "0.400000006`", ",", "0.579999983`", ",", "0.419999987`", ",", 
   "0.25999999`", ",", "0.400000006`", ",", "0.25999999`", ",", 
   "0.480000019`", ",", "0.419999987`", ",", "0.179999992`", ",", 
   "0.379999995`", ",", "0.460000008`", ",", "0.379999995`", ",", "0.5`", ",",
    "0.359999985`", ",", "0.460000008`", ",", "0.540000021`", ",", 
   "0.319999993`", ",", "0.460000008`", ",", "0.319999993`", ",", 
   "0.359999985`", ",", "0.480000019`", ",", "0.359999985`", ",", 
   "0.379999995`", ",", "0.319999993`", ",", "0.419999987`", ",", 
   "0.560000002`", ",", "0.280000001`", ",", "0.439999998`", ",", 
   "0.24000001`", ",", "0.439999998`"}], "}"}]], "Output"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
  "27.1599998`", ",", "25.1800003`", ",", "25.4799995`", ",", "23.7000008`", 
   ",", "23.0599995`", ",", "21.8999996`", ",", "21.539999`", ",", 
   "21.0599995`", ",", "19.8400002`", ",", "18.8600006`", ",", "17.4799995`", 
   ",", "16.7399998`", ",", "16.4599991`", ",", "15.2399998`", ",", 
   "14.7799997`", ",", "13.7799997`", ",", "12.5799999`", ",", "12.8800001`", 
   ",", "11.9200001`", ",", "10.7799997`", ",", "10.8800001`", ",", 
   "10.5599995`", ",", "9.15999985`", ",", "8.34000015`", ",", "8.56000042`", 
   ",", "8.76000023`", ",", "7.63999987`", ",", "6.74000025`", ",", 
   "6.66000032`", ",", "6.05999994`", ",", "6.30000019`", ",", "5.0999999`", 
   ",", "5.33999968`", ",", "5.29999971`", ",", "4.48000002`", ",", 
   "4.53999996`", ",", "4.36000013`", ",", "4.0999999`", ",", "3.75999999`", 
   ",", "4.`", ",", "3.66000009`", ",", "3.46000004`", ",", "2.75999999`", 
   ",", "3.33999991`", ",", "2.92000008`", ",", "2.62000012`", ",", 
   "2.72000003`", ",", "2.46000004`", ",", "3.05999994`", ",", 
   "2.60000014`"}], "}"}]], "Output"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
  "72.5799942`", ",", "74.4599991`", ",", "74.3399963`", ",", "76.0400009`", 
   ",", "76.5200043`", ",", "77.6600037`", ",", "78.1600037`", ",", 
   "78.4799957`", ",", "79.7599945`", ",", "80.7600021`", ",", "82.1600037`", 
   ",", "82.7400055`", ",", "83.2600021`", ",", "84.2600021`", ",", "85.`", 
   ",", "85.7399979`", ",", "87.0800018`", ",", "86.6999969`", ",", 
   "87.6399994`", ",", "88.840004`", ",", "88.7200012`", ",", "88.8600006`", 
   ",", "90.4199982`", ",", "91.3999939`", ",", "91.0400009`", ",", 
   "90.9799957`", ",", "91.8799973`", ",", "92.8399963`", ",", "93.159996`", 
   ",", "93.5599976`", ",", "93.2399979`", ",", "94.5200043`", ",", 
   "94.1600037`", ",", "94.340004`", ",", "95.0600052`", ",", "94.9199982`", 
   ",", "95.3199997`", ",", "95.4400024`", ",", "95.9200058`", ",", 
   "95.6399994`", ",", "95.8600006`", ",", "96.1800003`", ",", "96.8600006`", 
   ",", "96.340004`", ",", "96.6600037`", ",", "96.8199997`", ",", "97.`", 
   ",", "97.0999985`", ",", "96.6999969`", ",", "96.9599991`"}], 
  "}"}]], "Output"],

Cell[BoxData[
 TemplateBox[{GraphicsBox[{{}, {{}, {}, {
       RGBColor[0.24720000000000014`, 0.24, 0.6], 
       LineBox[CompressedData["
1:eJxd0m9IE3EYB/AjApdFap2ZJts0W+e2pnlW9mfeV6eevYi4MOnFYiNIjF50
9IdgRFNhGULUq2CvdrB3CqNXcRDMMeiNKAhFQr1o9zLPQKhFvTJj39+bDo6H
z/P9Pdw93HXcunft9h5Jkvp273+1dm1rnzcb/Bm3E2xg6d30U9c4SXsQmZ8r
ZrNhuhFbhu3NuMIyPt3sX64qPfRRLD4KSxt54XbMhnNQ1V7aj9D7b2m5INxZ
c0S4i+fFfADF4w8dwz5FK5jOWo4SFw5i7v6Xou6I9wlDLuhOSg7REZQ9oYST
CtK9wOurVjbbTZ/Gx5bfcFJi3z4+X6FV3B045uTNAN0PLdrkU9UT9BnOd9Fn
sbn/iWVGhc8htrKVLlc76AHYmdZK3vTT57G+0F4xbOELPC98EQ+09ZwZ9dKX
8H3xV8412ugoTOu6VVWEB1H7ni20hhelnuTLcisNvPq5qtne5ppnwP4R1iE8
23nr28jLzIdQuvMmMTV1iPkwJhc+7Cjxw8yHEWje/pqSRR5DffKHpqpNzGNo
m02UvJkG5iPct5H5CP4Mzi/rzkHmo/BNPM6VqweYj7LvYR1jFfkYJtwbUkHf
x76OK8HK7v/I8zM61ibTUne8jvk499vLfPy/+ctwlp4no/V1+AtGGb5x
        "]]}, {
       RGBColor[0.6, 0.24, 0.4428931686004542], 
       LineBox[CompressedData["
1:eJxTTMoPSmViYGAwAmIQDQEf7I1XNvy/tviCPVTA4eHqjgRbrutQPoeD0unS
eFuu41C+gAOqehEHU0H5Be4Pb0H5Eg5rZmUe+KpxB8qXcVDcI+pgbHwZyldw
SHVeeH9xwV0oX8lB8B7Xgpkzb0L5Kg4zQw7Uvw68AeWroblHw2GSJBfD9cUP
oHwth1VGp+VbX1+E8nUcIDRMXg/qnjNQvoHDnTOv/wfuuAflGzrsrShJ6D90
Fco3QvOPMZp/TNDcZ4rmfjMHG5+r8jH9j6B8czTzLNDCzxJNvxWavDWae23Q
zLNFix87NPfZo4W3A6p8gwNaeDmihneDI5p+JwcJyYPy69wfQuWdHFzfazo8
rLoClXdGVd/gjCbvgma+C5r/XNHkXdH844ZqXoMbWni4Q9MDzH3uaOnDAzU+
GzwcZq/9xxC04xxU3hMuDwAr1OeY
        "]]}, {
       RGBColor[0.6, 0.5470136627990908, 0.24], 
       LineBox[CompressedData["
1:eJw10m9IE2EAx/GRVjopLU6ziNtpZtu0pTvN/LPut6mbCr0wQgguNoKMetMg
IhjlLsReCHIQ9IfebOSLXghDCGRvzHEhvcggsBJCOqUQ0jdCDXpni/s9B8fx
ue/z3J/nruH6ncs39rlcrmBp/390tl3t67WOpaK3FzyBluVfaSnQTVdg7sWI
tpkSrsGj1gzUN120hKXoE0WvFq5H4dZ8fHyrkz6J2/Z6PDQtrHC8cCP8rz7A
vabSTRibXt3zrgfpZt6/nfZiu+pBNrnYRvuRno8Y1j3hVnw+9hebqQAdwNP3
P2XdPEu30S10O5z399FB1P2ZjJuWsMrnO0N3cP5pupPjhc9jYqYpnJeFu/Cl
p87YGW2kLzjrm1PobvwYKUvk5Qa6B99fVhbkKeFeTCb6FN2U6T48U05lreIJ
OoTHewuetVnhi7irfcokQ/W0Bnfit6aqx2k432dccmwAKdfwhlevZQ9joXLR
o6q0Eca37WplaucIewSX/Bul9TrKHsHDzDt7Nil6P69fw96P5tpdOyUdZh/g
UfQBvA6bSi52iOcHcXNOM6RcFfsg5x9gj+Lq26Q9mnezR/FxLO3y6QfZY/Bc
uZ+xiuXsMcwUziVMaz/7EK9fxj6ErYls6f+qYB/Gqu+5vbJSjn9J68F7
        "]]}, {
       RGBColor[0.24, 0.6, 0.33692049419863584`], 
       LineBox[CompressedData["
1:eJw10jtIW1Ecx/FbrbQYhwwWKlVzUx8EDWKjMT4a789XorZgq9VkkEYUHTLU
Ori4mMUlg6WDQgVfOPhAcFEQh8amWFpwEBRCQDQRLHXSQak42Cr/8wtcDp98
Ezjnf661d7C9P0XTNMfdc7/K58JYdt3O5ha0Q30BfdU893Gafoz1N7HR6ARt
RqLjPPAppUM5E8nPOdteK/0Ur9dsIXeQzhaHaR2WDyfG5gz9HJdL15GFCzof
pqz48ULpO+VC9X/ahgzfI3Sv0UXy+z3aLjZ3KpfICroUV78L9e5B+gW+LR5F
cndoB1rLdiO7q3QZgjmm7as/dDkm9by5qLNL2YninbPRzBK6ApMnl0a6i3bB
8FuRnKIr8f5HauhLnK6SeUbpapnPV7oGgYeOxNtr+qXch9On7Ebw+DDgbqVr
sTJs12J9tCHnbaMh9zWvHIKaL3udnG+CvQ7R0ww99p29Xs6zxV6PjfG0xMgB
ewO6wvv/bIfsDfD9fNCTvGFvVPNkb5R5/WVvwquhG8uYya96k5qnsuaR/T1h
98j+i9i9sp9ydq+sYG9G+NezngEPe7Pct529Rd5/tx//ASmjyBo=
        "]]}}, {}}, 
    AspectRatio -> NCache[GoldenRatio^(-1), 0.6180339887498948], Axes -> True,
     AxesLabel -> {None, None}, AxesOrigin -> {0, 0}, Method -> {}, 
    PlotRange -> {{0, 50.}, {0, 97.0999985}}, PlotRangeClipping -> True, 
    PlotRangePadding -> {{1., 1.}, {1.94199997, 1.94199997}}],
   TemplateBox[{
    "\"Thermalized\"", "\"Backscattered\"", "\"Transmitted\"", 
     "\"Absorbed\""}, "LineLegend", DisplayFunction -> (StyleBox[
      StyleBox[
       PaneBox[
        TagBox[
         GridBox[{{
            TagBox[
             GridBox[{{
                GraphicsBox[{{
                   Directive[
                    EdgeForm[{
                    Opacity[0.3], 
                    GrayLevel[0]}], 
                    RGBColor[0.24720000000000014`, 0.24, 0.6]], {
                    LineBox[{{0, 10}, {20, 10}}]}}, {
                   Directive[
                    EdgeForm[{
                    Opacity[0.3], 
                    GrayLevel[0]}], 
                    RGBColor[0.24720000000000014`, 0.24, 0.6]], {}}}, 
                 AspectRatio -> Full, ImageSize -> {20, 10}, PlotRangePadding -> 
                 None, ImagePadding -> 1, 
                 BaselinePosition -> (Scaled[0.1] -> Baseline)], #}, {
                GraphicsBox[{{
                   Directive[
                    EdgeForm[{
                    Opacity[0.3], 
                    GrayLevel[0]}], 
                    RGBColor[0.6, 0.24, 0.4428931686004542]], {
                    LineBox[{{0, 10}, {20, 10}}]}}, {
                   Directive[
                    EdgeForm[{
                    Opacity[0.3], 
                    GrayLevel[0]}], 
                    RGBColor[0.6, 0.24, 0.4428931686004542]], {}}}, 
                 AspectRatio -> Full, ImageSize -> {20, 10}, PlotRangePadding -> 
                 None, ImagePadding -> 1, 
                 BaselinePosition -> (Scaled[0.1] -> Baseline)], #2}, {
                GraphicsBox[{{
                   Directive[
                    EdgeForm[{
                    Opacity[0.3], 
                    GrayLevel[0]}], 
                    RGBColor[0.6, 0.5470136627990908, 0.24]], {
                    LineBox[{{0, 10}, {20, 10}}]}}, {
                   Directive[
                    EdgeForm[{
                    Opacity[0.3], 
                    GrayLevel[0]}], 
                    RGBColor[0.6, 0.5470136627990908, 0.24]], {}}}, 
                 AspectRatio -> Full, ImageSize -> {20, 10}, PlotRangePadding -> 
                 None, ImagePadding -> 1, 
                 BaselinePosition -> (Scaled[0.1] -> Baseline)], #3}, {
                GraphicsBox[{{
                   Directive[
                    EdgeForm[{
                    Opacity[0.3], 
                    GrayLevel[0]}], 
                    RGBColor[0.24, 0.6, 0.33692049419863584`]], {
                    LineBox[{{0, 10}, {20, 10}}]}}, {
                   Directive[
                    EdgeForm[{
                    Opacity[0.3], 
                    GrayLevel[0]}], 
                    RGBColor[0.24, 0.6, 0.33692049419863584`]], {}}}, 
                 AspectRatio -> Full, ImageSize -> {20, 10}, PlotRangePadding -> 
                 None, ImagePadding -> 1, 
                 BaselinePosition -> (Scaled[0.1] -> Baseline)], #4}}, 
              GridBoxAlignment -> {
               "Columns" -> {Center, Left}, "Rows" -> {{Baseline}}}, 
              AutoDelete -> False, 
              GridBoxDividers -> {
               "Columns" -> {{False}}, "Rows" -> {{False}}}, 
              GridBoxItemSize -> {"Columns" -> {{All}}, "Rows" -> {{All}}}, 
              GridBoxSpacings -> {"Columns" -> {{0.5}}, "Rows" -> {{0.8}}}], 
             "Grid"]}}, 
          GridBoxAlignment -> {"Columns" -> {{Left}}, "Rows" -> {{Top}}}, 
          AutoDelete -> False, 
          GridBoxItemSize -> {
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
          GridBoxSpacings -> {"Columns" -> {{1}}, "Rows" -> {{0}}}], "Grid"], 
        Alignment -> Left, AppearanceElements -> None, 
        ImageMargins -> {{5, 5}, {5, 5}}, ImageSizeAction -> "ResizeToFit"], 
       LineIndent -> 0, StripOnInput -> False], {FontFamily -> "Times"}, 
      Background -> Automatic, StripOnInput -> False]& ), Editable -> True, 
    InterpretationFunction :> (RowBox[{"LineLegend", "[", 
       RowBox[{
         RowBox[{"{", 
           RowBox[{
             RowBox[{"Directive", "[", 
               RowBox[{"RGBColor", "[", 
                 RowBox[{"0.24720000000000014`", ",", "0.24`", ",", "0.6`"}], 
                 "]"}], "]"}], ",", 
             RowBox[{"Directive", "[", 
               RowBox[{"RGBColor", "[", 
                 RowBox[{"0.6`", ",", "0.24`", ",", "0.4428931686004542`"}], 
                 "]"}], "]"}], ",", 
             RowBox[{"Directive", "[", 
               RowBox[{"RGBColor", "[", 
                 RowBox[{"0.6`", ",", "0.5470136627990908`", ",", "0.24`"}], 
                 "]"}], "]"}], ",", 
             RowBox[{"Directive", "[", 
               RowBox[{"RGBColor", "[", 
                 RowBox[{"0.24`", ",", "0.6`", ",", "0.33692049419863584`"}], 
                 "]"}], "]"}]}], "}"}], ",", 
         RowBox[{"{", 
           RowBox[{#, ",", #2, ",", #3, ",", #4}], "}"}], ",", 
         RowBox[{"LegendLayout", "\[Rule]", "\"Column\""}], ",", 
         RowBox[{"LegendMarkers", "\[Rule]", "False"}]}], "]"}]& )]},
  "Legended",
  DisplayFunction->(GridBox[{{
      TagBox[
       ItemBox[
        PaneBox[
         TagBox[#, "SkipImageSizeLevel"], Alignment -> {Center, Baseline}, 
         BaselinePosition -> Baseline], DefaultBaseStyle -> "Labeled"], 
       "SkipImageSizeLevel"], 
      ItemBox[#2, DefaultBaseStyle -> "LabeledLabel"]}}, 
    GridBoxAlignment -> {"Columns" -> {{Center}}, "Rows" -> {{Center}}}, 
    AutoDelete -> False, GridBoxItemSize -> Automatic, 
    BaselinePosition -> {1, 1}]& ),
  Editable->True,
  InterpretationFunction->(RowBox[{"Legended", "[", 
     RowBox[{#, ",", 
       RowBox[{"Placed", "[", 
         RowBox[{#2, ",", "After"}], "]"}]}], "]"}]& )]], "Output"]
}, Open  ]],

Cell["", "WolframAlphaShort"],

Cell[BoxData["'"], "Input"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
  "13.8400002`", ",", "14.2199993`", ",", "16.`", ",", "17.0799999`", ",", 
   "17.5600014`", ",", "18.2399998`", ",", "17.6400013`", ",", "17.6599998`", 
   ",", "15.7199993`", ",", "16.1000004`", ",", "15.5799999`", ",", 
   "14.3000011`", ",", "13.2599993`", ",", "12.5200005`", ",", "11.6800003`", 
   ",", "10.9200001`", ",", "10.8400002`", ",", "9.85999966`", ",", 
   "8.27999973`", ",", "8.03999996`", ",", "7.76000023`", ",", "7.14000034`", 
   ",", "6.85999966`", ",", "6.31999969`", ",", "5.71999979`", ",", 
   "5.64000034`", ",", "5.18000031`", ",", "4.88000011`", ",", "4.80000019`", 
   ",", "4.46000004`", ",", "4.55999994`", ",", "4.15999985`", ",", 
   "4.55999994`", ",", "4.76000023`", ",", "4.65999985`", ",", "4.44000006`", 
   ",", "4.9000001`", ",", "5.03999996`", ",", "5.11999989`", ",", 
   "5.88000011`", ",", "5.64000034`", ",", "5.64000034`", ",", "6.51999998`", 
   ",", "7.24000025`", ",", "7.61999989`", ",", "7.51999998`", ",", 
   "8.53999996`", ",", "8.80000019`", ",", "9.46000004`", ",", 
   "9.70000076`"}], "}"}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
  "13.8400002`", ",", "14.2199993`", ",", "16.`", ",", "17.0799999`", ",", 
   "17.5600014`", ",", "18.2399998`", ",", "17.6400013`", ",", "17.6599998`", 
   ",", "15.7199993`", ",", "16.1000004`", ",", "15.5799999`", ",", 
   "14.3000011`", ",", "13.2599993`", ",", "12.5200005`", ",", "11.6800003`", 
   ",", "10.9200001`", ",", "10.8400002`", ",", "9.85999966`", ",", 
   "8.27999973`", ",", "8.03999996`", ",", "7.76000023`", ",", "7.14000034`", 
   ",", "6.85999966`", ",", "6.31999969`", ",", "5.71999979`", ",", 
   "5.64000034`", ",", "5.18000031`", ",", "4.88000011`", ",", "4.80000019`", 
   ",", "4.46000004`", ",", "4.55999994`", ",", "4.15999985`", ",", 
   "4.55999994`", ",", "4.76000023`", ",", "4.65999985`", ",", "4.44000006`", 
   ",", "4.9000001`", ",", "5.03999996`", ",", "5.11999989`", ",", 
   "5.88000011`", ",", "5.64000034`", ",", "5.64000034`", ",", "6.51999998`", 
   ",", "7.24000025`", ",", "7.61999989`", ",", "7.51999998`", ",", 
   "8.53999996`", ",", "8.80000019`", ",", "9.46000004`", ",", 
   "9.70000076`"}], "}"}]], "Output"]
}, Open  ]],

Cell[BoxData[""], "Input"]
},
WindowSize->{740, 756},
Visible->True,
ScrollingOptions->{"VerticalScrollRange"->Fit},
ShowCellBracket->False,
Deployed->True,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"9.0 for Mac OS X x86 (32-bit, 64-bit Kernel) (January 25, \
2013)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1485, 35, 1116, 30, 318, "Input"],
Cell[2604, 67, 1074, 16, 80, "Output"],
Cell[3681, 85, 1145, 18, 80, "Output"],
Cell[4829, 105, 1101, 17, 80, "Output"],
Cell[5933, 124, 1093, 17, 97, "Output"],
Cell[7029, 143, 8938, 184, 245, "Output"]
}, Open  ]],
Cell[15982, 330, 29, 0, 33, "WolframAlphaShort"],
Cell[16014, 332, 27, 0, 28, "Input"],
Cell[CellGroupData[{
Cell[16066, 336, 1103, 17, 165, "Input"],
Cell[17172, 355, 1104, 17, 80, "Output"]
}, Open  ]],
Cell[18291, 375, 26, 0, 28, "Input"]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature rwDvUI9Jq4YQcA1X249UxOFC *)
