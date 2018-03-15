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
NotebookDataLength[     24181,        526]
NotebookOptionsPosition[     24405,        511]
NotebookOutlinePosition[     24865,        532]
CellTagsIndexPosition[     24822,        529]
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
  "]"}], "\[IndentingNewLine]", 
 RowBox[{"ListLinePlot", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"Data1", ",", "Data2", ",", "Data3"}], "}"}], ",", 
   RowBox[{"PlotLegends", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{
     "\"\<Thermalized\>\"", ",", "\"\<Backscattered\>\"", ",", 
      "\"\<Transmitted\>\""}], "}"}]}]}], "]"}]}], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
  "0.`", ",", "7.8731265527172685`", ",", "18.746253132617355`", ",", 
   "2.4365632763586342`", ",", "24.18281768656845`", ",", 
   "7.8731265527172685`", ",", "24.18281768656845`", ",", 
   "1.261938221333672`", ",", "1.261938221333672`", ",", "1.261938221333672`",
    ",", "1.261938221333672`", ",", "2.349250626523471`", ",", 
   "5.067532889907608`", ",", "3.4365635481868173`", ",", 
   "9.416783516431078`", ",", "7.242157700287207`", ",", 
   "3.4365635481868173`", ",", "3.9802199954270803`", ",", 
   "3.4365635481868173`", ",", "2.8929075902372823`", ",", 
   "7.242157700287207`", ",", "2.349250626523471`", ",", "7.242157700287207`",
    ",", "8.32947162771483`", ",", "7.785815180474565`", ",", 
   "14.309691623141909`", ",", "11.591409332574953`", ",", 
   "7.242157700287207`", ",", "12.678721248474023`", ",", 
   "6.154845811570954`", ",", "12.135065806998037`", ",", 
   "9.416783516431078`", ",", "13.222378701478565`", ",", 
   "11.047752885334688`", ",", "13.222378701478565`", ",", 
   "15.940659959098426`", ",", "12.678721248474023`", ",", 
   "14.853347064617896`", ",", "12.678721248474023`", ",", 
   "11.047752885334688`", ",", "17.02797288076177`", ",", 
   "14.853347064617896`", ",", "16.484315400574413`", ",", 
   "15.397002506093884`", ",", "11.591409332574953`", ",", 
   "15.940659959098426`", ",", "14.309691623141909`", ",", 
   "17.57163036094913`", ",", "18.65894325542966`", ",", 
   "13.222378701478565`"}], "}"}]], "Output"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
  "13.9259996`", ",", "14.4659996`", ",", "14.0180006`", ",", "14.1980009`", 
   ",", "14.5199995`", ",", "13.868`", ",", "14.5439997`", ",", "14.0039997`",
    ",", "14.2059994`", ",", "14.5180006`", ",", "13.8760004`", ",", 
   "14.5060005`", ",", "14.1220007`", ",", "14.092`", ",", "14.4679995`", ",",
    "13.8540001`", ",", "14.4499998`", ",", "14.3299999`", ",", "14.0740004`",
    ",", "14.4659996`", ",", "13.8699989`", ",", "14.2639999`", ",", 
   "14.4860001`", ",", "13.9200001`", ",", "14.4720001`", ",", "14.0579996`", 
   ",", "14.1880007`", ",", "14.5`", ",", "13.8239994`", ",", "14.618`", ",", 
   "13.9699993`", ",", "14.1299992`", ",", "14.5559998`", ",", "13.776`", ",",
    "14.5119991`", ",", "14.2220001`", ",", "14.1140003`", ",", "14.4559994`",
    ",", "13.894001`", ",", "14.3059998`", ",", "14.4339991`", ",", 
   "13.9879999`", ",", "14.4920006`", ",", "13.9860001`", ",", "14.2220001`", 
   ",", "14.5459995`", ",", "13.8799992`", ",", "14.5`", ",", "14.0279989`", 
   ",", "14.158`"}], "}"}]], "Output"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
  "2.56999993`", ",", "1.03799999`", ",", "0.527999997`", ",", "0.356000006`",
    ",", "0.236000001`", ",", "0.202000007`", ",", "0.127999991`", ",", 
   "0.127999991`", ",", "24.63916325085674`", ",", "22.46453539600149`", ",", 
   "21.920879954525507`", ",", "18.65894325542966`", ",", 
   "19.202598696905643`", ",", "21.920879954525507`", ",", "0.107999995`", 
   ",", "20.833567060044977`", ",", "19.202598696905643`", ",", 
   "16.484315400574413`", ",", "21.377222501520965`", ",", 
   "19.746254138381634`", ",", "21.920879954525507`", ",", 
   "15.940659959098426`", ",", "20.289911618568993`", ",", 
   "22.46453539600149`", ",", "21.920879954525507`", ",", 
   "24.095505770669376`", ",", "0.104000002`", ",", "17.02797288076177`", ",",
    "0.101999998`", ",", "17.57163036094913`", ",", "0.107999995`", ",", 
   "18.65894325542966`", ",", "0.106000006`", ",", "0.100000001`", ",", 
   "22.46453539600149`", ",", "23.55184831766484`", ",", 
   "24.095505770669376`", ",", "24.095505770669376`", ",", 
   "20.833567060044977`", ",", "23.00819287618885`", ",", "0.118000001`", ",",
    "0.113999993`", ",", "0.115999997`", ",", "0.109999999`", ",", 
   "22.46453539600149`", ",", "0.112000003`", ",", "23.55184831766484`", ",", 
   "0.127999991`", ",", "0.115999997`", ",", "0.100000001`"}], 
  "}"}]], "Output"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
  "83.5039978`", ",", "84.4959946`", ",", "85.4540024`", ",", "85.4459991`", 
   ",", "85.2440033`", ",", "85.9300003`", ",", "85.3280029`", ",", 
   "85.8680038`", ",", "85.6959991`", ",", "85.3919983`", ",", "86.0360031`", 
   ",", "85.4179993`", ",", "85.7999954`", ",", "85.8199997`", ",", 
   "85.4240036`", ",", "86.0620041`", ",", "85.4720001`", ",", "85.6019974`", 
   ",", "85.8399963`", ",", "85.4540024`", ",", "86.0419998`", ",", 
   "85.6699982`", ",", "85.4319992`", ",", "85.9899979`", ",", "85.4399948`", 
   ",", "85.8460007`", ",", "85.7080002`", ",", "85.4300003`", ",", 
   "86.0739975`", ",", "85.3099976`", ",", "85.9220047`", ",", "85.7939987`", 
   ",", "85.3380051`", ",", "86.1240005`", ",", "85.3980026`", ",", 
   "85.6839981`", ",", "85.7900009`", ",", "85.4480057`", ",", "86.0220032`", 
   ",", "85.6019974`", ",", "85.4480057`", ",", "85.8980026`", ",", 
   "85.3919983`", ",", "85.9039993`", ",", "85.6880035`", ",", "85.3420029`", 
   ",", "86.026001`", ",", "85.3720016`", ",", "85.8560028`", ",", 
   "85.7420044`"}], "}"}]], "Output"],

Cell[BoxData[
 TemplateBox[{GraphicsBox[{{}, {{}, {}, {
       RGBColor[0.24720000000000014`, 0.24, 0.6], 
       LineBox[CompressedData["
1:eJxTTMoPSmViYGAwAmIQDQEf7BlQgUPRIZHHInXyDhAuhwOP4v9Crv1GUL4A
VJ4ZyhdxkPt4QfmsngWUL4GmXwZNXsEhwfSx4jODL1B7ldD4Kmh8NTS+hsMD
kxkvnU8zQc3Tcnhr1Rau7ioC5es45G2ZwC5axw3l6zms09JclnJVCco3cJC7
qmPw47sMlG+Ipt7I4dmXnVNqr/ND+cZo8iYOO6KE96xRYYfyTdHMM0Nznzma
vIVD9d/gxg0rFKB8S6h5sPCycthS1fSsf54OlG/tcP6VtclZPXUo3wbNPFuH
VdN/RTZGa0L5dlD9ElC+vcPUXfkR6q4aUL4Dang0ODhcimKZf7tQCyrv6LBh
1keBYgk1qLwjmryTA8ePhXrzHupD5Z3Q7Hd2OBXO++LlFl2ovDOavAua+S4O
X7kFrDXZDaHyrmj6XR36s8Qk/lQbQOXdoOGrB5V3QwsfdzT3uaOFp4dDzFrO
uLBJUPsaPKDxAUvfnnD/AgCIAsk0
        "]]}, {
       RGBColor[0.6, 0.24, 0.4428931686004542], 
       LineBox[CompressedData["
1:eJxTTMoPSmViYGAwAmIQDQEf7G+Zz5knc0vbASrg8O7p4/rp73SgfA6HJ3Nf
xJtzwvgCDlYae+ITUmF8EYes+3fibbl0oXwJB+XbP+uy9sDMk3EIEPyo0C4G
k1dwsE5eac/DBNOv5HDo7+0DFZkwvgrUPph6NYfbE27JNx+Amafh8LElrl6I
GSav5TBf1/BBmR1Mv47DybJ986X0YXw9h61iaQvnvofxDRz29Hs02G+FmWfo
cCBzQ3zaM5i8kcO1WJP9X1fA+MYOaieSEx+rwvgmaOFj6rBS5l1dwV6YeWYO
6d4b/2m1w+TNHWZu8WO8+gPGt3DQWnTages6TL2lw/0sp/8rP8LkrRy2xyyS
3yQL41s78DlsWeCYAOPbQGmY/20dnt64av94Kcw8O0j428Dk7R00PXv3L/4A
k3dw0GAOdOx3gprX4ODgrFXNuEYGpt7RISrF+r5/L1R9g6PDJs0/+1TYYPJO
EPcWwvQ7ObwoD7CPs4K5zxkSny9h8s4O+/QO1+86CbPfBWLfHJi8i8PiP56K
pvdg+l0deJ+Xyt/+CbPf1aHLcm3D898weTdoeMLk3VDdw+DucMRZwr5XHOre
BneIfw/B7PdADb8GD4cHS/Xvh/LB9Hs6mHc6JjwN0HEAAMYHxwY=
        "]]}, {
       RGBColor[0.6, 0.5470136627990908, 0.24], 
       LineBox[CompressedData["
1:eJxTTMoPSmViYGAwAmIQDQEf7HmmTJCP6WdxgAo4fD665MHS2R/sIVwOB71n
b+wTnj6A8gUcboactN9y4hqUL+LwNEi43t70HJQv4bB21dv7SrdPQvkyDtPv
zN3vm3QAyldA4ys5SNi8Nl6w2AJqv4qD9sq1p16XmUH5ag4LrV6c3PfaFMrX
cKj+G9y4YYURlK/lwJoj2XTX2BjK10FTr+fw3b7O7vHS3VD7DByaXs1dlnLV
BCpviKbfyKE/S0ziT7UBlG/swBuZvHxiAsw8E4eJt+41ce2HqTdFs8/MgePH
Qr15D/WhfHOHH9U3lpp7weyzQPOfJZp+K4cNsz4KFEvAwsPaQXdXfP2++bug
7rdx+MotYK3JbgiVt3X4qjDr/2oZmLydQ8xazriwSTB5ezT/O6CGX4ODQ2qw
6v8LSjB5R4cpMk/nzpy5E8JvcERzr5OD3M6cd6695lD9TmjudUblNzijhbeL
wySv5W8lmGD6XRySRCwb7U33Qe13dfj0cG2jlP5eqP2uDlrVxYy6m6B8BjcH
/ZvO+75q7IHKu6G5z90hvYjTjmMNTN4d1b0MHqjpr8EDzXxPuP8BtNDdmw==

        "]]}, {
       RGBColor[0.24, 0.6, 0.33692049419863584`], 
       LineBox[CompressedData["
1:eJxTTMoPSmViYGAwAmIQDQEf7BMF/tY7PghxgAo4tNcrJeyTD4XyORx6hUUT
+GJhfAGHF0rn7btjYHwRh7x0lgNz/WF8CQfvwl/yrdUwvozDBPkH//+GwPgK
DgXF5+N7y2F8JYh5OTC+isPspZwNYpEwvppDvfOn+75NML6GA/8FpYYDUTC+
lsOVP8/ljYthfB2HrX2sD6pKYHw9h503/t1XiobxDRw+5XI/+N4M4xs6xPi+
sDeNg/GNHHYHSim0p8H4xg5bAq7XHyqF8U3QwsPUQfDOW/kNcPeZOdhHKDo8
zILxzR1qfv64vxRuv4XD12dqCjH1ML6lg53U5/sa8PC0ctDcKfdApQzGt3Z4
ryz0wD8XxreBhC/cPFsH8flMCXtaYHw7h1WlOgzXg2F8e4eOAAYFJnh8ODg4
pby5f6EIym9wcEibofJgYShM3tGBief0/PftMHlHB9d1T+9XwOPDyWFN4/f5
x7Jh8k4OD4Lfx/fDzGNwdvhdJamwBuafBmcHISmZhoxGmLwLavg2uKCqZ3CF
2FcJk3dFSw9uDtfdHsrfhsu7OagyXbXngKcfd4fjKxQTHsP80+DuUKwlybAK
br+Hw6XmM/fPhcPkPRxMLn3ffwIe3p4OtvdZGWrzQx0A9cnKJg==
        "]]}}, {}}, 
    AspectRatio -> NCache[GoldenRatio^(-1), 0.6180339887498948], Axes -> True,
     AxesLabel -> {None, None}, AxesOrigin -> {0, 0}, Method -> {}, 
    PlotRange -> {{0, 50.}, {0, 86.1240005}}, PlotRangeClipping -> True, 
    PlotRangePadding -> {{1., 1.}, {1.72248001, 1.72248001}}],
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
         RowBox[{#2, ",", "After"}], "]"}]}], "]"}]& )]], "Output"],

Cell[BoxData[
 TemplateBox[{GraphicsBox[{{}, {{}, {}, {
       RGBColor[0.24720000000000014`, 0.24, 0.6], 
       LineBox[CompressedData["
1:eJxTTMoPSmViYGAwAmIQDQEf7BlQgUPRIZHHInXyDhAuhwOP4v9Crv1GUL4A
VJ4ZyhdxkPt4QfmsngWUL4GmXwZNXsEhwfSx4jODL1B7ldD4Kmh8NTS+hsMD
kxkvnU8zQc3Tcnhr1Rau7ioC5es45G2ZwC5axw3l6zms09JclnJVCco3cJC7
qmPw47sMlG+Ipt7I4dmXnVNqr/ND+cZo8iYOO6KE96xRYYfyTdHMM0Nznzma
vIVD9d/gxg0rFKB8S6h5sPCycthS1fSsf54OlG/tcP6VtclZPXUo3wbNPFuH
VdN/RTZGa0L5dlD9ElC+vcPUXfkR6q4aUL4Dang0ODhcimKZf7tQCyrv6LBh
1keBYgk1qLwjmryTA8ePhXrzHupD5Z3Q7Hd2OBXO++LlFl2ovDOavAua+S4O
X7kFrDXZDaHyrmj6XR36s8Qk/lQbQOXdoOGrB5V3QwsfdzT3uaOFp4dDzFrO
uLBJUPsaPKDxAUvfnnD/AgCIAsk0
        "]]}, {
       RGBColor[0.6, 0.24, 0.4428931686004542], 
       LineBox[CompressedData["
1:eJxTTMoPSmViYGAwAmIQDQEf7G+Zz5knc0vbASrg8O7p4/rp73SgfA6HJ3Nf
xJtzwvgCDlYae+ITUmF8EYes+3fibbl0oXwJB+XbP+uy9sDMk3EIEPyo0C4G
k1dwsE5eac/DBNOv5HDo7+0DFZkwvgrUPph6NYfbE27JNx+Amafh8LElrl6I
GSav5TBf1/BBmR1Mv47DybJ986X0YXw9h61iaQvnvofxDRz29Hs02G+FmWfo
cCBzQ3zaM5i8kcO1WJP9X1fA+MYOaieSEx+rwvgmaOFj6rBS5l1dwV6YeWYO
6d4b/2m1w+TNHWZu8WO8+gPGt3DQWnTages6TL2lw/0sp/8rP8LkrRy2xyyS
3yQL41s78DlsWeCYAOPbQGmY/20dnt64av94Kcw8O0j428Dk7R00PXv3L/4A
k3dw0GAOdOx3gprX4ODgrFXNuEYGpt7RISrF+r5/L1R9g6PDJs0/+1TYYPJO
EPcWwvQ7ObwoD7CPs4K5zxkSny9h8s4O+/QO1+86CbPfBWLfHJi8i8PiP56K
pvdg+l0deJ+Xyt/+CbPf1aHLcm3D898weTdoeMLk3VDdw+DucMRZwr5XHOre
BneIfw/B7PdADb8GD4cHS/Xvh/LB9Hs6mHc6JjwN0HEAAMYHxwY=
        "]]}, {
       RGBColor[0.6, 0.5470136627990908, 0.24], 
       LineBox[CompressedData["
1:eJxTTMoPSmViYGAwAmIQDQEf7HmmTJCP6WdxgAo4fD665MHS2R/sIVwOB71n
b+wTnj6A8gUcboactN9y4hqUL+LwNEi43t70HJQv4bB21dv7SrdPQvkyDtPv
zN3vm3QAyldA4ys5SNi8Nl6w2AJqv4qD9sq1p16XmUH5ag4LrV6c3PfaFMrX
cKj+G9y4YYURlK/lwJoj2XTX2BjK10FTr+fw3b7O7vHS3VD7DByaXs1dlnLV
BCpviKbfyKE/S0ziT7UBlG/swBuZvHxiAsw8E4eJt+41ce2HqTdFs8/MgePH
Qr15D/WhfHOHH9U3lpp7weyzQPOfJZp+K4cNsz4KFEvAwsPaQXdXfP2++bug
7rdx+MotYK3JbgiVt3X4qjDr/2oZmLydQ8xazriwSTB5ezT/O6CGX4ODQ2qw
6v8LSjB5R4cpMk/nzpy5E8JvcERzr5OD3M6cd6695lD9TmjudUblNzijhbeL
wySv5W8lmGD6XRySRCwb7U33Qe13dfj0cG2jlP5eqP2uDlrVxYy6m6B8BjcH
/ZvO+75q7IHKu6G5z90hvYjTjmMNTN4d1b0MHqjpr8EDzXxPuP8BtNDdmw==

        "]]}}, {}}, AspectRatio -> 
    NCache[GoldenRatio^(-1), 0.6180339887498948], Axes -> True, 
    AxesLabel -> {None, None}, AxesOrigin -> {0, 0}, Method -> {}, 
    PlotRange -> {{0, 50.}, {0, 24.63916325085674}}, PlotRangeClipping -> 
    True, PlotRangePadding -> {{1., 1.}, {0.4927832650171348, 
     0.4927832650171348}}],
   TemplateBox[{"\"Thermalized\"", "\"Backscattered\"", "\"Transmitted\""}, 
    "LineLegend", DisplayFunction -> (StyleBox[
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
                 BaselinePosition -> (Scaled[0.1] -> Baseline)], #3}}, 
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
                 "]"}], "]"}]}], "}"}], ",", 
         RowBox[{"{", 
           RowBox[{#, ",", #2, ",", #3}], "}"}], ",", 
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
Cell[1485, 35, 1446, 39, 352, "Input"],
Cell[2934, 76, 1510, 26, 114, "Output"],
Cell[4447, 104, 1075, 16, 97, "Output"],
Cell[5525, 122, 1363, 22, 97, "Output"],
Cell[6891, 146, 1111, 17, 97, "Output"],
Cell[8005, 165, 9000, 186, 245, "Output"],
Cell[17008, 353, 7352, 153, 249, "Output"]
}, Open  ]],
Cell[24375, 509, 26, 0, 28, "Input"]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature gxDpYQsQ9ZOiWAgVhgJnFpzH *)
