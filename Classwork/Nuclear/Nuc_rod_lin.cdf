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
NotebookDataLength[     17998,        393]
NotebookOptionsPosition[     18113,        374]
NotebookOutlinePosition[     18573,        395]
CellTagsIndexPosition[     18530,        392]
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
  "0.400000006`", ",", "0.879999995`", ",", "1.25999999`", ",", "1.86000001`",
    ",", "1.92000008`", ",", "2.72000003`", ",", "3.27999997`", ",", 
   "4.07999992`", ",", "4.17999983`", ",", "4.23999977`", ",", "4.25999975`", 
   ",", "4.46000004`", ",", "4.78000021`", ",", "5.11999989`", ",", 
   "4.9000001`", ",", "5.29999971`", ",", "4.9000001`", ",", "5.55999994`", 
   ",", "5.9000001`", ",", "5.64000034`", ",", "5.24000025`", ",", 
   "5.22000027`", ",", "5.96000004`", ",", "4.92000008`", ",", "5.24000025`", 
   ",", "4.44000006`", ",", "4.67999983`", ",", "5.62000036`", ",", 
   "4.65999985`", ",", "4.69999981`", ",", "4.88000011`", ",", "4.28000021`", 
   ",", "4.06000042`", ",", "4.0999999`", ",", "4.32000017`", ",", 
   "3.86000013`", ",", "3.70000005`", ",", "3.88000011`", ",", "3.3599999`", 
   ",", "3.33999991`", ",", "3.81999993`", ",", "3.51999998`", ",", 
   "3.51999998`", ",", "3.44000006`", ",", "2.67999983`", ",", "3.`", ",", 
   "3.11999989`", ",", "3.11999989`", ",", "2.63999987`", ",", 
   "2.82000017`"}], "}"}]], "Output"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
  "3.4365635481868173`", ",", "8.873127069190817`", ",", "0.`", ",", 
   "3.4365635481868173`", ",", "3.4365635481868173`", ",", "0.`", ",", 
   "14.309691623141909`", ",", "3.4365635481868173`", ",", 
   "3.4365635481868173`", ",", "8.873127069190817`", ",", 
   "3.4365635481868173`", ",", "8.873127069190817`", ",", 
   "8.873127069190817`", ",", "8.873127069190817`", ",", "0.`", ",", "0.`", 
   ",", "3.4365635481868173`", ",", "8.873127069190817`", ",", 
   "3.4365635481868173`", ",", "3.4365635481868173`", ",", "0.`", ",", 
   "3.4365635481868173`", ",", "8.873127069190817`", ",", "0.`", ",", 
   "8.873127069190817`", ",", "0.`", ",", "3.4365635481868173`", ",", 
   "3.4365635481868173`", ",", "0.`", ",", "0.`", ",", "14.309691623141909`", 
   ",", "3.4365635481868173`", ",", "8.873127069190817`", ",", 
   "3.4365635481868173`", ",", "3.4365635481868173`", ",", 
   "3.4365635481868173`", ",", "8.873127069190817`", ",", 
   "3.4365635481868173`", ",", "0.`", ",", "3.4365635481868173`", ",", 
   "3.4365635481868173`", ",", "3.4365635481868173`", ",", 
   "3.4365635481868173`", ",", "8.873127069190817`", ",", "0.`", ",", 
   "8.873127069190817`", ",", "3.4365635481868173`", ",", 
   "3.4365635481868173`", ",", "0.`", ",", "3.4365635481868173`"}], 
  "}"}]], "Output"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
  "12.04`", ",", "7.61999989`", ",", "5.94000006`", ",", "7.`", ",", 
   "5.51999998`", ",", "5.98000002`", ",", "6.5`", ",", "7.14000034`", ",", 
   "6.51999998`", ",", "6.42000008`", ",", "6.48000002`", ",", "6.42000008`", 
   ",", "6.62000036`", ",", "6.88000011`", ",", "6.5999999`", ",", 
   "6.89999962`", ",", "6.03999996`", ",", "6.5999999`", ",", "6.97999954`", 
   ",", "6.48000002`", ",", "6.11999989`", ",", "6.11999989`", ",", 
   "6.51999998`", ",", "5.67999983`", ",", "5.64000034`", ",", "4.84000015`", 
   ",", "5.05999994`", ",", "6.19999981`", ",", "5.16000032`", ",", 
   "5.0999999`", ",", "5.16000032`", ",", "4.55999994`", ",", "4.36000013`", 
   ",", "4.38000011`", ",", "4.5`", ",", "4.0999999`", ",", "3.84000015`", 
   ",", "4.01999998`", ",", "3.53999996`", ",", "3.48000002`", ",", 
   "3.94000006`", ",", "3.66000009`", ",", "3.68000007`", ",", "3.48000002`", 
   ",", "2.72000003`", ",", "3.01999998`", ",", "3.18000031`", ",", 
   "3.20000005`", ",", "2.74000001`", ",", "3.`"}], "}"}]], "Output"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
  "87.9400024`", ",", "92.3399963`", ",", "94.0599976`", ",", "92.9799957`", 
   ",", "94.4599991`", ",", "94.0199966`", ",", "93.4400024`", ",", 
   "92.8399963`", ",", "93.4599991`", ",", "93.5400009`", ",", "93.5`", ",", 
   "93.5400009`", ",", "93.3399963`", ",", "93.0800018`", ",", "93.4000015`", 
   ",", "93.0999985`", ",", "93.9400024`", ",", "93.3600006`", ",", "93.`", 
   ",", "93.5`", ",", "93.8799973`", ",", "93.8600006`", ",", "93.4400024`", 
   ",", "94.3199997`", ",", "94.3199997`", ",", "95.1600037`", ",", 
   "94.9199982`", ",", "93.7799988`", ",", "94.840004`", ",", "94.9000015`", 
   ",", "94.7799988`", ",", "95.4200058`", ",", "95.5999985`", ",", 
   "95.5999985`", ",", "95.4800034`", ",", "95.8800049`", ",", "96.1200027`", 
   ",", "95.9599991`", ",", "96.4599991`", ",", "96.5`", ",", "96.0400009`", 
   ",", "96.3199997`", ",", "96.3000031`", ",", "96.4800034`", ",", 
   "97.2799988`", ",", "96.9400024`", ",", "96.8000031`", ",", "96.7799988`", 
   ",", "97.2599945`", ",", "96.9799957`"}], "}"}]], "Output"],

Cell[BoxData[
 TemplateBox[{GraphicsBox[{{}, {{}, {}, {
       RGBColor[0.24720000000000014`, 0.24, 0.6], 
       LineBox[CompressedData["
1:eJxTTMoPSmViYGAwAmIQDQEf7AXvcS2YOfOmPVTAwVfrwf6vGm+gfA4o/wuU
L+AwX/1GXP+hv1C+iMPstf8Ygnb8g/IlHHoP6Cf0H2J1gPBlHIrtL8wvsOWC
8hUcZoYcqH8dKADlKzlc6JJ5ELgDxldxcD71pv7QVxhfzSHr/p14Wy5BKF/D
YfNVeQeu6zC+lsNjL+aEHXLCUL6OQ6y3j8PDKhEoX8/BYZo/0H8weQOHbZx7
5Y2NRaF8QzR5I6h7xaB8Y6i8OJRv4pDw6ph9TD9M3tRhmoLygkNfYfaZORRw
Gx9wfwjjm0PdC9Nv4ZC+2r5BZB3MPks0/VbQ8IP5zxoaPkJQvo2D5dVr8Q+r
YPbbOqwq1WG4vhgmb+fwbT7PgTNnYHx7h8VbNu+Xa4XZ5wANL6j5DQ4Ox6ay
HSiwhYW3o8OBzA3xaWlQfoOjg0HpY/l17jD3ODn8tGvf7/6QDyrvBA0fXqi8
s4NbZnq9LRc/VN7ZYUrjigXuD2Hx7+IQua/gfuAOKL/BxYFnygT5mH6oeQyu
0PTGA5VH4zO4OUg1xh+Qa+WGyrs5LBC1PLC4AJbe3KE0B1Te3WHXtBkNh75C
+QweqPwGDwf2gxUOO+Rg+j2h8cvmAAB59sZ6
        "]]}, {
       RGBColor[0.6, 0.24, 0.4428931686004542], 
       LineBox[CompressedData["
1:eJxdkL0KwjAURoOLoouDgoODFRGRIlr/fxtbbevqIwiuujtI6QuoL+BTdPc9
HBydfQQVg5ATCOHk3PvdEGOzX28TQgjrs7/nb73sXXxO5o8ZqS7k5f6I0jdD
cUoKbWWlXp8DF1BflPEhep6uprovob4MrmB+Fb4GXweb4Abe0wS3kG+hvw3f
AXeR14PvI2+A+iH8CH6MvAl4ivoZ2Mb/S70/lJg/hwcLB95Bvwvv4j0LeLBY
woOFp88LPeT78D76A+QH6F/9/Rt245Py
        "]]}, {
       RGBColor[0.6, 0.5470136627990908, 0.24], 
       LineBox[CompressedData["
1:eJxdkksoRFEYx29KjffremsMSdMk7/fr/sfrEtJIVjSTQrIwZTclVxkLpdlI
3dWoIQuaFMlubpSVhRJiY2ZrUhbYDvI/m3vr9vU7v+/7Ouc7p2JuZXI+SZKk
xt//L/5/H4ocVmM+2Q4uYHZ0DDGflWzBjlHnCVwVkrMZyxhlVOd/vPrkAnIR
Xt6ybP54oSmvhNEGz9uNMhMQ65WsF74Ki8eKJoeLydXsJ9hu8g50PDy6Yz5R
X4PQ+VnE6i8l18JYOnUvLAhfj3elWNN14Rsw7ohGvuxF5EZTfhO2dp8Tm3GR
32zaTwvnJepbTdxmOl877rbLoq5LMa8OzkNwJ6a37xP2mTxyF1aVu6C3RyZ3
4zuYbtzeiv492EpclD+FhO/l/gUrJg/2y/1nDVgLXr+GvDn0Ts6PrDm5znyp
j/35DrQ+nMhHCddlJn0/zyt8P/QpYz3uSqcfwNlDOVKf0ugHULLhNqz+LPpB
HDkDtrCaQT+Iz+WVaMhLloZM9UN8n8n0Ku/TQq9CvTqUDrwp9MPA3sS+rpO1
Yd6nqB9htOAH70i9Ew==
        "]]}, {
       RGBColor[0.24, 0.6, 0.33692049419863584`], 
       LineBox[CompressedData["
1:eJxTTMoPSmViYGAwAmIQDQEf7MO6Lv/X+BPqABVw2BJwvf6QaDiUz+GwqlSH
4XozjC/gIJ/3yH6HHYwv4qCwRmBBwVwYX8Lh/8GL890bYXwZB7D5MTC+AsR8
UxhfCaI/FsZXcXgQ/D6+PwnGV4PQCTC+Bpq8FsS8UBhfx+Hg8nv75VxhfD2H
MrMn82dGwvgGDl0npRPS3GB8Q4j7amB8I4dpj77Yc4XD+MYQ2gHGN0Fzj6lD
PIvRg8AKGN8Mor8cxjdH87+Fw9Y+1gdVU2B8SzS+lYPPeo0G21MwvrWDfYSi
w8NdML6Nw1UrsYbXhTC+rcM0BeUFh7bC+HYQ/+6E8e0h6jfC+A4O4ScYEx7e
gvIbHCDh8Qwm74jKb3B0YLTTS9hxDybv5FBeIsQQ9AMm7+Sw8PdZ+XXsEVB5
Z0h8/oXJQ/myMHkXCK0A5Te4QOKTCSbvCgkPEZi8q8O2M8YOxsIweTeIe+Rg
8m4Q/wXC5N0h4W0Dk3eH6DeGyXtA1BvC5D0cvqz4sX9xAEzeE5q+IxwA/bnE
2w==
        "]]}}, {}}, AspectRatio -> 
    NCache[GoldenRatio^(-1), 0.6180339887498948], Axes -> True, 
    AxesLabel -> {None, None}, AxesOrigin -> {0, 0}, Method -> {}, 
    PlotRange -> {{0, 50.}, {0, 97.2799988}}, PlotRangeClipping -> True, 
    PlotRangePadding -> {{1., 1.}, {1.945599976, 1.945599976}}],
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
Cell[2604, 67, 1101, 17, 80, "Output"],
Cell[3708, 86, 1327, 22, 97, "Output"],
Cell[5038, 110, 1069, 16, 80, "Output"],
Cell[6110, 128, 1082, 16, 97, "Output"],
Cell[7195, 146, 8596, 180, 245, "Output"]
}, Open  ]],
Cell[15806, 329, 27, 0, 28, "Input"],
Cell[CellGroupData[{
Cell[15858, 333, 1103, 17, 165, "Input"],
Cell[16964, 352, 1104, 17, 80, "Output"]
}, Open  ]],
Cell[18083, 372, 26, 0, 28, "Input"]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature rv05TM#Y5o1q0D1ENhj1M00N *)
