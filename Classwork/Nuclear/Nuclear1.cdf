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
NotebookDataLength[     15816,        348]
NotebookOptionsPosition[     16086,        334]
NotebookOutlinePosition[     16546,        355]
CellTagsIndexPosition[     16503,        352]
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
  "0.`", ",", "14.309691623141909`", ",", "0.140000001`", ",", "0.219999999`",
    ",", "0.460000008`", ",", "0.560000002`", ",", "0.860000014`", ",", 
   "0.960000038`", ",", "1.30000007`", ",", "1.4000001`", ",", "1.94000006`", 
   ",", "2.24000001`", ",", "2.5`", ",", "2.67999983`", ",", "2.72000003`", 
   ",", "2.77999997`", ",", "3.07999992`", ",", "3.42000008`", ",", 
   "4.01999998`", ",", "3.77999997`", ",", "4.80000019`", ",", "4.5`", ",", 
   "4.4000001`", ",", "4.74000025`", ",", "5.35999966`", ",", "5.86000013`", 
   ",", "5.82000017`", ",", "5.65999985`", ",", "6.5`", ",", "6.42000008`", 
   ",", "5.73999977`", ",", "6.85999966`", ",", "6.5`", ",", "7.61999989`", 
   ",", "7.03999996`", ",", "7.76000023`", ",", "7.44000006`", ",", 
   "8.29999924`", ",", "7.84000015`", ",", "8.64000034`", ",", "7.90000057`", 
   ",", "9.`", ",", "8.92000008`", ",", "9.27999973`", ",", "9.76000023`", 
   ",", "9.27999973`", ",", "10.`", ",", "9.52000046`", ",", "10.6799994`", 
   ",", "9.57999992`"}], "}"}]], "Output"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
  "13.7399998`", ",", "14.3000011`", ",", "13.7399998`", ",", "13.9400005`", 
   ",", "13.9400005`", ",", "13.5600004`", ",", "15.1400003`", ",", 
   "13.7600002`", ",", "14.54`", ",", "14.96`", ",", "13.9400005`", ",", 
   "15.0999994`", ",", "14.3199997`", ",", "14.7599993`", ",", "14.2000008`", 
   ",", "15.6800003`", ",", "14.1200008`", ",", "14.1599998`", ",", "14.`", 
   ",", "14.1399994`", ",", "13.4800005`", ",", "14.7400007`", ",", 
   "15.0800009`", ",", "14.3800001`", ",", "14.1200008`", ",", "14.`", ",", 
   "14.3800001`", ",", "14.9399996`", ",", "13.7399998`", ",", "14.920001`", 
   ",", "14.1399994`", ",", "14.5799999`", ",", "14.3600006`", ",", 
   "13.1999998`", ",", "14.8800001`", ",", "14.2000008`", ",", "14.`", ",", 
   "14.2600002`", ",", "14.4800005`", ",", "14.2000008`", ",", "14.1800003`", 
   ",", "13.04`", ",", "13.420001`", ",", "13.54`", ",", "13.8600006`", ",", 
   "14.2600002`", ",", "14.4200001`", ",", "13.5199995`", ",", "13.6999998`", 
   ",", "13.1199999`"}], "}"}]], "Output"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
  "69.6600037`", ",", "59.2000008`", ",", "45.5400009`", ",", "37.0999985`", 
   ",", "33.6199989`", ",", "30.5400009`", ",", "28.`", ",", "26.3999996`", 
   ",", "26.3799992`", ",", "24.8600006`", ",", "26.1599979`", ",", 
   "25.4599991`", ",", "25.8600006`", ",", "26.6999989`", ",", "27.4200001`", 
   ",", "27.0599995`", ",", "27.1400013`", ",", "29.0799999`", ",", 
   "29.7600002`", ",", "30.2800007`", ",", "31.9799995`", ",", "32.`", ",", 
   "31.2200012`", ",", "31.9799995`", ",", "34.1599998`", ",", "33.3999977`", 
   ",", "35.2400017`", ",", "35.0200005`", ",", "36.579998`", ",", 
   "37.0599976`", ",", "37.079998`", ",", "37.8800011`", ",", "39.7000008`", 
   ",", "39.9199982`", ",", "40.2000008`", ",", "40.7200012`", ",", 
   "41.0400009`", ",", "41.6800003`", ",", "41.8600006`", ",", "44.1399994`", 
   ",", "42.7199974`", ",", "44.9600029`", ",", "44.1800003`", ",", 
   "44.8400002`", ",", "46.2599983`", ",", "46.0399971`", ",", "46.2999992`", 
   ",", "47.1199989`", ",", "48.2000008`", ",", "48.1000023`"}], 
  "}"}]], "Output"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
  "16.5999985`", ",", "26.4999981`", ",", "40.7200012`", ",", "48.9599991`", 
   ",", "52.4399986`", ",", "55.9000015`", ",", "56.8600006`", ",", 
   "59.8400002`", ",", "59.079998`", ",", "60.1800041`", ",", "59.8999977`", 
   ",", "59.4399986`", ",", "59.8200035`", ",", "58.5399971`", ",", 
   "58.3800011`", ",", "57.2600021`", ",", "58.7400017`", ",", "56.7600021`", 
   ",", "56.2399979`", ",", "55.5800018`", ",", "54.5400009`", ",", 
   "53.2599983`", ",", "53.7000008`", ",", "53.6400032`", ",", "51.7200012`", 
   ",", "52.6000023`", ",", "50.3799973`", ",", "50.0400009`", ",", 
   "49.6800003`", ",", "48.0200005`", ",", "48.7799988`", ",", "47.5400009`", 
   ",", "45.9399986`", ",", "46.8800011`", ",", "44.920002`", ",", 
   "45.0800018`", ",", "44.9600029`", ",", "44.0600014`", ",", "43.6599998`", 
   ",", "41.6599998`", ",", "43.0999985`", ",", "42.`", ",", "42.3999977`", 
   ",", "41.6200027`", ",", "39.8799973`", ",", "39.7000008`", ",", 
   "39.2799988`", ",", "39.3600006`", ",", "38.1000023`", ",", 
   "38.7800026`"}], "}"}]], "Output"],

Cell[BoxData[
 TemplateBox[{GraphicsBox[{{}, {{}, {}, {
       RGBColor[0.24720000000000014`, 0.24, 0.6], 
       LineBox[CompressedData["
1:eJxdkV9IU2Echo9iohNqtc1/6c7RmRxl+GfT0nKeV6duUSF2IQgTRNDyqoF4
MxCPwm6C2J1xvNDFrrTwxi6CiK11VwsCUUHUNQQvXIVg83Yt9p4L/eDw8pzn
/Ti/7zt1ky+eThUKguDIPf8zv84U4fLC+8DSSWjVjjyWYMZ0JAXTn9kz4t3K
TCwjJ8hmTLnfJCP+Q3IlNhzfxGA6Ra7BR+Nu1BpMkyUcJNLZkQ9/yPXYbnqd
TCT+khtQMNa7OD19QW5ER2FUdRmyZBn7pzdy8xRwvmZmEdOOsKU7FvFfI7fg
Vax1IhTXuQ2zyo81v6uY3A7nuprdjZSQHfg+uiA0+crITjRazpIBs5Hcwf3X
yZ0wTJwrTqeJfJd5i3kPWB4Oa9pNcheWJVs4ntF9N+e1kO9jfu1L7j4ryA/Q
Nncsbnp07sHGnF3Yi5STXcxqZi+evVVU82YVWYH766+FeEbvg9+7nWcVV/b3
YfzRY6QCVvo+PGn+Gc3INfT9+NRpyv0Pkb6f91tL78ZvpUrVNInejdGX21nZ
x74wwPPU0Q+gVtqPapruB5n19IPY2hFh2GNfGII3cCL6QrofwtFKacwatNF7
rngP3zcwvZyffdWL51o4Jfvu0D/keW34B9R7tKY=
        "]]}, {
       RGBColor[0.6, 0.24, 0.4428931686004542], 
       LineBox[CompressedData["
1:eJxTTMoPSmViYGAwAmIQDQEf7K+I/3B4WKXtABVw0Gtv2jdzpg6Uz+GAKi/g
0FR0e5/7QxhfBI0v4ZBTFx6/Qw7Gl3FwutMtt85dD8pXcNB5wb5frhUmr+Qg
ss79YZWILpSv4vAmcIdc62sYXw3NfA0He1tBeWNjmHlaDqtKdRiuL4a5V8fB
7vuVBXKtMP16DoyRdo1paTB5A4ewrsv/NWL0oXxDhxt/1u0rsIXJGzms3p1R
9zoQxjeGmwuhTRxCXkcwrHOH8U0dpikoLzj0VQvKN3M4xKEd/7AKZr+5g7jv
oQdfNWDutXAQ+9Ic338Ipt8SzX4rNPus0dTbOExpXLHA/SHMfFu0+LFzkJj8
L47rOkzeHs29Dg7XYk32f9WAyjc4OKwRWf4/cAdM3tHhQOaG+LQ0qH8aHKH2
w8xzQg3PBic09zpD4xcm7wwNH5i8C5p+F2h8wORdoekBZr8r1D+w8HWDykP9
2+AGdT/M/+5o9rs7aC067cB1HWa+h0PW/Tvxtlww/R5Q/8L0ezq84q5ZUGCr
5QAAIoC+tw==
        "]]}, {
       RGBColor[0.6, 0.5470136627990908, 0.24], 
       LineBox[CompressedData["
1:eJxTTMoPSmViYGAwAmIQDQEf7H3WazTYZgU6QAUcHKb5L5g50xfK53A4uPze
frmjblC+gIPIZPMDZ3qcoHwRB6323fIx5x2gfAmHRv+99bZddlC+DJS2gdIK
DgcyN8SnpVlB+UoOUxpXLHBPhPFVHMK6Lv/XuGMB5as57HsbPP+rBkxew6F+
g1PDoVJLKF8Lqh7G13HI3LNPwXgzTL2eg+jFVIXWbGso38Bhv9skhRh+GN/Q
4dBTHoXryjC+kcNrvVn3q0RsoXxjB7EvzfH9h2B8E4fsaEuFde4w/5k6rJ7h
Zf/wlz2Ub+YAC0YIbe6wRmT5/0ALmLwFmnpLqH2OUL6Vw5U/z+WNN8P0Wzsw
2ukl7JgHk7dxWL05KqG/Cca3dci6fyfe1ssJyrdzCHkdwbCuHca3h8h3wfgO
DtcqXB4s/gDlNzhA4vumM1TeERK+X6H8BkeIvKQLVN4JEt4xUH6DEyR9tMLk
nR2mPfpiz3UdJu/soH30Zb3IO5i8i8NVK7GG14LQ9NTg4mAn9fm+RowrVN7V
IfwEY8LDKpi8K8Q8cVj6c4PGJ0zezeH/wYvz3RXdofLuDivN/82XY4XyG9wh
6U0NJu8BSa/9MHkPqP88oPKeDjrMEg/O8Hg4AABGHse4
        "]]}, {
       RGBColor[0.24, 0.6, 0.33692049419863584`], 
       LineBox[CompressedData["
1:eJxTTMoPSmViYGAwAmIQDQEf7DXV8htmzjRwgAo4vOiXf/C/3grK53AI67r8
XyPGBcoXcLCPUHR4WOUB5Ys4TF1y7H6ghReUL+HwJueEvfFnbyhfxkH76Mt6
kTwfKF/BQfRiqkLra18oX8kh6/6deNsuGF/FYW3Q1XgucT8oX83hyp/n8saf
YfIaEPt2wPhaDk29r+9/fQHj6zisNP83X84VxtdzuFbh8mCxAYxv4CButGm/
+0KYewwdGO30EnbEweSNIPKJMHljh5dnfR12yMH4Jg6N/nvrbU/B/GfqcHD5
vf1yrjC+mcP/gxfnuy+EhYe5g8M0/wUzb8L4Fg5vV32b//oijG8JCd87nlC+
lYMOs8SDMz4weWuHfRwpBxYbwORtIPaxwvi2DtMefbHnug6LDzuH1ZujEvqZ
YHx7h1WlOgzXk2F8B4j+o+4QfoMDJDx/uEHlHSHhVQCTd3SYpqC84FApTN4J
4v8uKL/BySH8BGPCwyqYvLNDdrSlwjp2mLyzw2u9WferrrhC5V2gfGh6anBx
EJlsfuBMD0wejW5whcS/MUzczcHp+2z7mPMw/W6Q8PngDJV3h4Y3lN/gDvH/
Ypi8ByQ9roPJe0DCmwcm7+lw6CmPwvVkZwcAaSHTMg==
        "]]}}, {}}, AspectRatio -> 
    NCache[GoldenRatio^(-1), 0.6180339887498948], Axes -> True, 
    AxesLabel -> {None, None}, AxesOrigin -> {0, 0}, Method -> {}, 
    PlotRange -> {{0, 50.}, {0, 69.6600037}}, PlotRangeClipping -> True, 
    PlotRangePadding -> {{1., 1.}, {1.3932000740000001`, 
     1.3932000740000001`}}],
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
Cell[2604, 67, 1069, 16, 80, "Output"],
Cell[3676, 85, 1065, 16, 97, "Output"],
Cell[4744, 103, 1095, 17, 97, "Output"],
Cell[5842, 122, 1103, 17, 97, "Output"],
Cell[6948, 141, 9093, 188, 247, "Output"]
}, Open  ]],
Cell[16056, 332, 26, 0, 28, "Input"]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature 8vpKeT5h4Owa8C1498UHHMyv *)
