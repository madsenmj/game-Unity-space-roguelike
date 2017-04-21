(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 10.4' *)

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
NotebookDataPosition[      1064,         20]
NotebookDataLength[    143856,       3242]
NotebookOptionsPosition[    140815,       3123]
NotebookOutlinePosition[    141335,       3145]
CellTagsIndexPosition[    141292,       3142]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["Tiling 3D Space", "Title", "PluginEmbeddedContent"],

Cell["\<\
I want to use the unit cell from the FCC lattice as the basis for 3D tiling \
for a rogue-like game movement in 3D. \
\>", "Text", "PluginEmbeddedContent"],

Cell[CellGroupData[{

Cell["Lattice Vectors", "Chapter", "PluginEmbeddedContent"],

Cell["\<\
The lattice vectors for the FCC lattice are typically written as:\
\>", "Text", "PluginEmbeddedContent"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"a1", "=", 
   RowBox[{"{", 
    RowBox[{
     FractionBox["1", 
      SqrtBox["2"]], ",", 
     FractionBox["1", 
      SqrtBox["2"]], ",", "0"}], "}"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"a2", "=", 
   RowBox[{"{", 
    RowBox[{
     FractionBox["1", 
      SqrtBox["2"]], ",", "0", ",", 
     FractionBox["1", 
      SqrtBox["2"]]}], "}"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"a3", "=", 
   RowBox[{"{", 
    RowBox[{"0", ",", 
     FractionBox["1", 
      SqrtBox["2"]], ",", 
     FractionBox["1", 
      SqrtBox["2"]]}], "}"}]}], ";"}]}], "Input", "PluginEmbeddedContent"],

Cell["This leads to the classic FCC packing for spheres.", "Text", "PluginEmbeddedContent"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Graphics3D", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"Blue", ",", 
     RowBox[{"Sphere", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"0", ",", "0", ",", "0"}], "}"}], ",", 
       FractionBox["1", "2"]}], "]"}], ",", "\[IndentingNewLine]", "Red", ",", 
     RowBox[{"Translate", "[", 
      RowBox[{
       RowBox[{"Sphere", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"0", ",", "0", ",", "0"}], "}"}], ",", 
         FractionBox["1", "2"]}], "]"}], ",", "a1"}], "]"}], ",", 
     "\[IndentingNewLine]", "Green", ",", 
     RowBox[{"Translate", "[", 
      RowBox[{
       RowBox[{"Sphere", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"0", ",", "0", ",", "0"}], "}"}], ",", 
         FractionBox["1", "2"]}], "]"}], ",", "a2"}], "]"}], ",", 
     "\[IndentingNewLine]", "Yellow", ",", 
     RowBox[{"Translate", "[", 
      RowBox[{
       RowBox[{"Sphere", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"0", ",", "0", ",", "0"}], "}"}], ",", 
         FractionBox["1", "2"]}], "]"}], ",", "a3"}], "]"}]}], "}"}], ",", 
   RowBox[{"AxesOrigin", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"0", ",", "0", ",", "0"}], "}"}]}], ",", 
   RowBox[{"Axes", "\[Rule]", "True"}], ",", 
   RowBox[{"Boxed", "\[Rule]", "False"}]}], "]"}]], "Input", \
"PluginEmbeddedContent"],

Cell[BoxData[
 Graphics3DBox[{
   {RGBColor[0, 0, 1], SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]]}, 
   {RGBColor[1, 0, 0], 
    GeometricTransformation3DBox[
     SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
     NCache[{2^Rational[-1, 2], 2^Rational[-1, 2], 0}, {
      0.7071067811865475, 0.7071067811865475, 0}]]}, 
   {RGBColor[0, 1, 0], 
    GeometricTransformation3DBox[
     SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
     NCache[{2^Rational[-1, 2], 0, 2^Rational[-1, 2]}, {
      0.7071067811865475, 0, 0.7071067811865475}]]}, 
   {RGBColor[1, 1, 0], 
    GeometricTransformation3DBox[
     SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
     NCache[{0, 2^Rational[-1, 2], 2^Rational[-1, 2]}, {
      0, 0.7071067811865475, 0.7071067811865475}]]}},
  Axes->True,
  AxesOrigin->{0, 0, 0},
  Boxed->False,
  ImageSize->{342.6597803162221, 378.92531260056927`},
  ImageSizeRaw->Automatic,
  ViewPoint->{-0.29484224405827253`, -2.9706617515643883`, 
   1.5931844867783145`},
  ViewVertical->{-0.24348941333772534`, -0.13389942629999263`, 
   0.9606163902562683}]], "Output", "PluginEmbeddedContent"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Rotated Lattic Vectors", "Chapter", "PluginEmbeddedContent"],

Cell["\<\
I want to rotate these vectors so that one basis vector lies along the z axis \
and the other is in the xz plane. This will work well for the layout I want \
to use in the game. 

The first step is to rotate the vectors so that one is along the z-axis. It \
turns out that rotating a2 is easy enough.\
\>", "Text", "PluginEmbeddedContent"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"angle", "=", 
  RowBox[{"ArcCos", "[", 
   RowBox[{"Dot", "[", 
    RowBox[{"a2", ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "1"}], "}"}]}], "]"}], 
   "]"}]}], "\[IndentingNewLine]", 
 RowBox[{"rotVec", "=", 
  RowBox[{"Cross", "[", 
   RowBox[{"a2", ",", 
    RowBox[{"{", 
     RowBox[{"0", ",", "0", ",", "1"}], "}"}]}], 
   "]"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"rotMat", " ", "=", " ", 
   RowBox[{"RotationMatrix", "[", 
    RowBox[{"angle", ",", "rotVec"}], "]"}]}], " ", 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{"rotMat", "//", "MatrixForm"}], "\[IndentingNewLine]", 
 RowBox[{"a1p", " ", "=", 
  RowBox[{
   RowBox[{"RotationMatrix", "[", 
    RowBox[{"0", ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "1"}], "}"}]}], "]"}], ".", "rotMat", ".", 
   "a1"}]}], "\[IndentingNewLine]", 
 RowBox[{"a2p", " ", "=", " ", 
  RowBox[{
   RowBox[{"RotationMatrix", "[", 
    RowBox[{"0", ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "1"}], "}"}]}], "]"}], ".", "rotMat", ".", 
   "a2"}]}], "\[IndentingNewLine]", 
 RowBox[{"a3p", " ", "=", " ", 
  RowBox[{
   RowBox[{"RotationMatrix", "[", 
    RowBox[{"0", ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "1"}], "}"}]}], "]"}], ".", "rotMat", ".", 
   "a3"}]}], "\[IndentingNewLine]", 
 RowBox[{"Graphics3D", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"Green", ",", 
     RowBox[{"Arrow", "[", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"0", ",", "0", ",", "0"}], "}"}], ",", "a1p"}], "}"}], "]"}],
      ",", "Black", ",", 
     RowBox[{"Arrow", "[", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"0", ",", "0", ",", "0"}], "}"}], ",", "a2p"}], "}"}], "]"}],
      ",", "Red", ",", 
     RowBox[{"Arrow", "[", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"0", ",", "0", ",", "0"}], "}"}], ",", "a3p"}], "}"}], 
      "]"}]}], "}"}], ",", 
   RowBox[{"AxesOrigin", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"0", ",", "0", ",", "0"}], "}"}]}], ",", 
   RowBox[{"Axes", "\[Rule]", "True"}], ",", 
   RowBox[{"Boxed", "\[Rule]", "False"}], ",", 
   RowBox[{"AxesLabel", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"x", ",", "y", ",", "z"}], "}"}]}], ",", 
   RowBox[{"ViewPoint", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"0", ",", "0", ",", "\[Infinity]"}], "}"}]}]}], "]"}]}], "Input",\
 "PluginEmbeddedContent"],

Cell[BoxData[
 FractionBox["\[Pi]", "4"]], "Output", "PluginEmbeddedContent"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"0", ",", 
   RowBox[{"-", 
    FractionBox["1", 
     SqrtBox["2"]]}], ",", "0"}], "}"}]], "Output", "PluginEmbeddedContent"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {
      FractionBox["1", 
       SqrtBox["2"]], "0", 
      RowBox[{"-", 
       FractionBox["1", 
        SqrtBox["2"]]}]},
     {"0", "1", "0"},
     {
      FractionBox["1", 
       SqrtBox["2"]], "0", 
      FractionBox["1", 
       SqrtBox["2"]]}
    },
    GridBoxAlignment->{
     "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
      "RowsIndexed" -> {}},
    GridBoxSpacings->{"Columns" -> {
        Offset[0.27999999999999997`], {
         Offset[0.7]}, 
        Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
        Offset[0.2], {
         Offset[0.4]}, 
        Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output", "PluginEmbeddedContent"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   FractionBox["1", "2"], ",", 
   FractionBox["1", 
    SqrtBox["2"]], ",", 
   FractionBox["1", "2"]}], "}"}]], "Output", "PluginEmbeddedContent"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"0", ",", "0", ",", "1"}], "}"}]], "Output", \
"PluginEmbeddedContent"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"-", 
    FractionBox["1", "2"]}], ",", 
   FractionBox["1", 
    SqrtBox["2"]], ",", 
   FractionBox["1", "2"]}], "}"}]], "Output", "PluginEmbeddedContent"],

Cell[BoxData[
 Graphics3DBox[{
   {RGBColor[0, 1, 0], 
    Arrow3DBox[
     NCache[{{0, 0, 0}, {
       Rational[1, 2], 2^Rational[-1, 2], Rational[1, 2]}}, {{0, 0, 0}, {0.5, 
       0.7071067811865475, 0.5}}]]}, 
   {GrayLevel[0], Arrow3DBox[{{0, 0, 0}, {0, 0, 1}}]}, 
   {RGBColor[1, 0, 0], 
    Arrow3DBox[
     NCache[{{0, 0, 0}, {
       Rational[-1, 2], 2^Rational[-1, 2], Rational[1, 2]}}, {{0, 0, 
       0}, {-0.5, 0.7071067811865475, 0.5}}]]}},
  Axes->True,
  AxesLabel->{
    FormBox["x", TraditionalForm], 
    FormBox["y", TraditionalForm], 
    FormBox["z", TraditionalForm]},
  AxesOrigin->{0, 0, 0},
  Boxed->False,
  ImageSize->{376.0012805283844, 384.37448295306945`},
  ViewPoint->{0, 0, 
    DirectedInfinity[1]},
  ViewVertical->{0.5758425282733955, 0.6042040139520127, 
   0.7017464656122856}]], "Output", "PluginEmbeddedContent"]
}, Open  ]],

Cell[TextData[{
 "So, a ",
 Cell[BoxData[
  FormBox[
   FractionBox[
    RowBox[{"-", "\[Pi]"}], "4"], TraditionalForm]]],
 " rotation about the y-axis did the job.\nNow I want one of the other two \
vectors to lie in the XZ plane (i.e. its Y coordinate is zero). To do this, I \
will project the green vector (a1p) onto the xy plane, then use it to find \
the angle to rotate around the z-axis."
}], "Text", "PluginEmbeddedContent"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"\[IndentingNewLine]", 
  RowBox[{"a1proj", "=", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      FractionBox["1", "2"], ",", 
      FractionBox["1", 
       SqrtBox["2"]], ",", "0"}], "}"}], "/", 
    RowBox[{"Norm", "[", 
     RowBox[{"{", 
      RowBox[{
       FractionBox["1", "2"], ",", 
       FractionBox["1", 
        SqrtBox["2"]], ",", "0"}], "}"}], "]"}]}]}]}]], "Input", \
"PluginEmbeddedContent"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   FractionBox["1", 
    SqrtBox["3"]], ",", 
   SqrtBox[
    FractionBox["2", "3"]], ",", "0"}], "}"}]], "Output", \
"PluginEmbeddedContent"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"angle2", "=", 
  RowBox[{"ArcCos", "[", 
   RowBox[{"Abs", "[", 
    RowBox[{"Dot", "[", 
     RowBox[{"a1proj", ",", 
      RowBox[{"{", 
       RowBox[{"1", ",", "0", ",", "0"}], "}"}]}], "]"}], "]"}], 
   "]"}]}], "\[IndentingNewLine]", 
 RowBox[{"rotVec2", "=", 
  RowBox[{"{", 
   RowBox[{"0", ",", "0", ",", 
    RowBox[{"-", "1"}]}], "}"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"rotMat2", " ", "=", " ", 
   RowBox[{"RotationMatrix", "[", 
    RowBox[{"angle2", ",", "rotVec2"}], "]"}]}], " ", 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{"rotMat2", "//", "MatrixForm"}], "\[IndentingNewLine]", 
 RowBox[{"Print", "[", "\"\<Basis Vector 1\>\"", "]"}], "\[IndentingNewLine]", 
 RowBox[{"a1p2", " ", "=", 
  RowBox[{"FullSimplify", "[", 
   RowBox[{"rotMat2", ".", "a1p"}], "]"}]}], "\[IndentingNewLine]", 
 RowBox[{"Print", "[", "\"\<Basis Vector 2\>\"", "]"}], "\[IndentingNewLine]", 
 RowBox[{"a2p2", " ", "=", " ", 
  RowBox[{"FullSimplify", "[", 
   RowBox[{"rotMat2", ".", "a2p"}], "]"}]}], "\[IndentingNewLine]", 
 RowBox[{"Print", "[", "\"\<Basis Vector 3\>\"", "]"}], "\[IndentingNewLine]", 
 RowBox[{"a3p2", " ", "=", " ", 
  RowBox[{"FullSimplify", "[", 
   RowBox[{"rotMat2", ".", "a3p"}], "]"}]}], "\[IndentingNewLine]", 
 RowBox[{"Graphics3D", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"Green", ",", 
     RowBox[{"Arrow", "[", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"0", ",", "0", ",", "0"}], "}"}], ",", "a1p2"}], "}"}], 
      "]"}], ",", "Black", ",", 
     RowBox[{"Arrow", "[", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"0", ",", "0", ",", "0"}], "}"}], ",", "a2p2"}], "}"}], 
      "]"}], ",", "Red", ",", 
     RowBox[{"Arrow", "[", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"0", ",", "0", ",", "0"}], "}"}], ",", "a3p2"}], "}"}], 
      "]"}]}], "}"}], ",", 
   RowBox[{"AxesOrigin", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"0", ",", "0", ",", "0"}], "}"}]}], ",", 
   RowBox[{"Axes", "\[Rule]", "True"}], ",", 
   RowBox[{"Boxed", "\[Rule]", "False"}], ",", 
   RowBox[{"AxesLabel", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"x", ",", "y", ",", "z"}], "}"}]}]}], "]"}]}], "Input", \
"PluginEmbeddedContent"],

Cell[BoxData[
 RowBox[{"ArcCos", "[", 
  FractionBox["1", 
   SqrtBox["3"]], "]"}]], "Output", "PluginEmbeddedContent"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"0", ",", "0", ",", 
   RowBox[{"-", "1"}]}], "}"}]], "Output", "PluginEmbeddedContent"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {
      FractionBox["1", 
       SqrtBox["3"]], 
      SqrtBox[
       FractionBox["2", "3"]], "0"},
     {
      RowBox[{"-", 
       SqrtBox[
        FractionBox["2", "3"]]}], 
      FractionBox["1", 
       SqrtBox["3"]], "0"},
     {"0", "0", "1"}
    },
    GridBoxAlignment->{
     "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
      "RowsIndexed" -> {}},
    GridBoxSpacings->{"Columns" -> {
        Offset[0.27999999999999997`], {
         Offset[0.7]}, 
        Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
        Offset[0.2], {
         Offset[0.4]}, 
        Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output", "PluginEmbeddedContent"],

Cell[BoxData["\<\"Basis Vector 1\"\>"], "Print", "PluginEmbeddedContent"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   FractionBox[
    SqrtBox["3"], "2"], ",", "0", ",", 
   FractionBox["1", "2"]}], "}"}]], "Output", "PluginEmbeddedContent"],

Cell[BoxData["\<\"Basis Vector 2\"\>"], "Print", "PluginEmbeddedContent"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"0", ",", "0", ",", "1"}], "}"}]], "Output", \
"PluginEmbeddedContent"],

Cell[BoxData["\<\"Basis Vector 3\"\>"], "Print", "PluginEmbeddedContent"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   FractionBox["1", 
    RowBox[{"2", " ", 
     SqrtBox["3"]}]], ",", 
   SqrtBox[
    FractionBox["2", "3"]], ",", 
   FractionBox["1", "2"]}], "}"}]], "Output", "PluginEmbeddedContent"],

Cell[BoxData[
 Graphics3DBox[{
   {RGBColor[0, 1, 0], 
    Arrow3DBox[
     NCache[{{0, 0, 0}, {
       Rational[1, 2] 3^Rational[1, 2], 0, Rational[1, 2]}}, {{0, 0, 0}, {
       0.8660254037844386, 0, 0.5}}]]}, 
   {GrayLevel[0], Arrow3DBox[{{0, 0, 0}, {0, 0, 1}}]}, 
   {RGBColor[1, 0, 0], 
    Arrow3DBox[
     NCache[{{0, 0, 0}, {
       Rational[1, 2] 3^Rational[-1, 2], Rational[2, 3]^Rational[1, 2], 
        Rational[1, 2]}}, {{0, 0, 0}, {0.2886751345948129, 0.816496580927726, 
       0.5}}]]}},
  Axes->True,
  AxesLabel->{
    FormBox["x", TraditionalForm], 
    FormBox["y", TraditionalForm], 
    FormBox["z", TraditionalForm]},
  AxesOrigin->{0, 0, 0},
  Boxed->False]], "Output", "PluginEmbeddedContent"]
}, Open  ]],

Cell[TextData[{
 "So it turns out that I needed to rotate it by the ",
 Cell[BoxData[
  FormBox[
   RowBox[{"ArcCos", "[", 
    SqrtBox[
     FractionBox["1", "3"]], "]"}], TraditionalForm]]],
 ", which is an unusual angle, but it gives us what we want. The total \
rotation matrix is:"
}], "Text", "PluginEmbeddedContent"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"rotMat2", ".", "rotMat"}], "//", "MatrixForm"}]], "Input", \
"PluginEmbeddedContent"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {
      FractionBox["1", 
       SqrtBox["6"]], 
      SqrtBox[
       FractionBox["2", "3"]], 
      RowBox[{"-", 
       FractionBox["1", 
        SqrtBox["6"]]}]},
     {
      RowBox[{"-", 
       FractionBox["1", 
        SqrtBox["3"]]}], 
      FractionBox["1", 
       SqrtBox["3"]], 
      FractionBox["1", 
       SqrtBox["3"]]},
     {
      FractionBox["1", 
       SqrtBox["2"]], "0", 
      FractionBox["1", 
       SqrtBox["2"]]}
    },
    GridBoxAlignment->{
     "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
      "RowsIndexed" -> {}},
    GridBoxSpacings->{"Columns" -> {
        Offset[0.27999999999999997`], {
         Offset[0.7]}, 
        Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
        Offset[0.2], {
         Offset[0.4]}, 
        Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output", "PluginEmbeddedContent"]
}, Open  ]],

Cell["\<\
Just to have them, I\[CloseCurlyQuote]m converting the basis vectors into \
decimal form.\
\>", "Text", "PluginEmbeddedContent"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"N", "[", 
  RowBox[{"{", 
   RowBox[{"a1p2", ",", "a2p2", ",", "a3p2"}], "}"}], "]"}]], "Input", \
"PluginEmbeddedContent"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"0.8660254037844386`", ",", "0.`", ",", "0.5`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"0.`", ",", "0.`", ",", "1.`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"0.2886751345948129`", ",", "0.816496580927726`", ",", "0.5`"}], 
    "}"}]}], "}"}]], "Output", "PluginEmbeddedContent"]
}, Open  ]],

Cell["And we check the unit lattice.", "Text", "PluginEmbeddedContent"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Graphics3D", "[", 
  RowBox[{
   RowBox[{"Flatten", "[", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"Opacity", "[", "0.3", "]"}], ",", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{"Translate", "[", 
         RowBox[{
          RowBox[{"Sphere", "[", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"0", ",", "0", ",", "0"}], "}"}], ",", 
            FractionBox["1", "2"]}], "]"}], ",", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"u", " ", "a1p"}], " ", "+", " ", 
            RowBox[{"v", " ", "a2p"}], " ", "+", " ", 
            RowBox[{"w", " ", "a3p"}]}], "}"}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{"u", ",", 
          RowBox[{"-", "2"}], ",", "2"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"v", ",", "0", ",", "2"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"w", ",", 
          RowBox[{"-", "2"}], ",", "2"}], "}"}]}], "]"}]}], "}"}], "]"}], ",", 
   RowBox[{"AxesOrigin", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"0", ",", "0", ",", "0"}], "}"}]}], ",", 
   RowBox[{"Axes", "\[Rule]", "True"}], ",", 
   RowBox[{"Boxed", "\[Rule]", "False"}]}], "]"}]], "Input", \
"PluginEmbeddedContent"],

Cell[BoxData[
 Graphics3DBox[
  {Opacity[0.3], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
    NCache[{{{0, (-2) 2^Rational[1, 2], -2}}}, {{{
       0, -2.8284271247461903`, -2}}}]], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
    NCache[{{{
       Rational[-1, 2], -2^Rational[-1, 2] - 2^Rational[1, 2], 
        Rational[-3, 2]}}}, {{{-0.5, -2.121320343559643, -1.5}}}]], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
    NCache[{{{-1, -2^
         Rational[1, 2], -1}}}, {{{-1, -1.4142135623730951`, -1}}}]], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
    NCache[{{{
       Rational[-3, 2], 2^Rational[-1, 2] - 2^Rational[1, 2], 
        Rational[-1, 2]}}}, {{{-1.5, -0.7071067811865477, -0.5}}}]], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], {{{-2, 0, 0}}}], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
    NCache[{{{0, (-2) 2^Rational[1, 2], -1}}}, {{{
       0, -2.8284271247461903`, -1}}}]], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
    NCache[{{{
       Rational[-1, 2], -2^Rational[-1, 2] - 2^Rational[1, 2], 
        Rational[-1, 2]}}}, {{{-0.5, -2.121320343559643, -0.5}}}]], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
    NCache[{{{-1, -2^Rational[1, 2], 0}}}, {{{-1, -1.4142135623730951`, 
        0}}}]], GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
    NCache[{{{
       Rational[-3, 2], 2^Rational[-1, 2] - 2^Rational[1, 2], Rational[
        1, 2]}}}, {{{-1.5, -0.7071067811865477, 0.5}}}]], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], {{{-2, 0, 1}}}], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
    NCache[{{{0, (-2) 2^Rational[1, 2], 0}}}, {{{
       0, -2.8284271247461903`, 0}}}]], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
    NCache[{{{
       Rational[-1, 2], -2^Rational[-1, 2] - 2^Rational[1, 2], Rational[
        1, 2]}}}, {{{-0.5, -2.121320343559643, 0.5}}}]], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
    NCache[{{{-1, -2^Rational[1, 2], 1}}}, {{{-1, -1.4142135623730951`, 
        1}}}]], GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
    NCache[{{{
       Rational[-3, 2], 2^Rational[-1, 2] - 2^Rational[1, 2], Rational[
        3, 2]}}}, {{{-1.5, -0.7071067811865477, 1.5}}}]], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], {{{-2, 0, 2}}}], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
    NCache[{{{
       Rational[1, 2], -2^Rational[-1, 2] - 2^Rational[1, 2], 
        Rational[-3, 2]}}}, {{{0.5, -2.121320343559643, -1.5}}}]], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
    NCache[{{{0, -2^Rational[1, 2], -1}}}, {{{
       0, -1.4142135623730951`, -1}}}]], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
    NCache[{{{
       Rational[-1, 2], -2^Rational[-1, 2], 
        Rational[-1, 2]}}}, {{{-0.5, -0.7071067811865475, -0.5}}}]], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], {{{-1, 0, 0}}}], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
    NCache[{{{
       Rational[-3, 2], -2^Rational[-1, 2] + 2^Rational[1, 2], Rational[
        1, 2]}}}, {{{-1.5, 0.7071067811865477, 0.5}}}]], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
    NCache[{{{
       Rational[1, 2], -2^Rational[-1, 2] - 2^Rational[1, 2], 
        Rational[-1, 2]}}}, {{{0.5, -2.121320343559643, -0.5}}}]], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
    NCache[{{{0, -2^Rational[1, 2], 0}}}, {{{0, -1.4142135623730951`, 0}}}]], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
    NCache[{{{
       Rational[-1, 2], -2^Rational[-1, 2], Rational[
        1, 2]}}}, {{{-0.5, -0.7071067811865475, 0.5}}}]], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], {{{-1, 0, 1}}}], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
    NCache[{{{
       Rational[-3, 2], -2^Rational[-1, 2] + 2^Rational[1, 2], Rational[
        3, 2]}}}, {{{-1.5, 0.7071067811865477, 1.5}}}]], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
    NCache[{{{
       Rational[1, 2], -2^Rational[-1, 2] - 2^Rational[1, 2], Rational[
        1, 2]}}}, {{{0.5, -2.121320343559643, 0.5}}}]], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
    NCache[{{{0, -2^Rational[1, 2], 1}}}, {{{0, -1.4142135623730951`, 1}}}]], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
    NCache[{{{
       Rational[-1, 2], -2^Rational[-1, 2], Rational[
        3, 2]}}}, {{{-0.5, -0.7071067811865475, 1.5}}}]], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], {{{-1, 0, 2}}}], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
    NCache[{{{
       Rational[-3, 2], -2^Rational[-1, 2] + 2^Rational[1, 2], Rational[
        5, 2]}}}, {{{-1.5, 0.7071067811865477, 2.5}}}]], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
    NCache[{{{1, -2^Rational[1, 2], -1}}}, {{{
       1, -1.4142135623730951`, -1}}}]], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
    NCache[{{{Rational[1, 2], -2^Rational[-1, 2], Rational[-1, 2]}}}, {{{
     0.5, -0.7071067811865475, -0.5}}}]], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], {{{0, 0, 0}}}], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
    NCache[{{{Rational[-1, 2], 2^Rational[-1, 2], Rational[1, 2]}}}, {{{-0.5, 
     0.7071067811865475, 0.5}}}]], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
    NCache[{{{-1, 2^Rational[1, 2], 1}}}, {{{-1, 1.4142135623730951`, 1}}}]], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
    NCache[{{{1, -2^Rational[1, 2], 0}}}, {{{1, -1.4142135623730951`, 0}}}]], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
    NCache[{{{Rational[1, 2], -2^Rational[-1, 2], Rational[1, 2]}}}, {{{
     0.5, -0.7071067811865475, 0.5}}}]], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], {{{0, 0, 1}}}], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
    NCache[{{{Rational[-1, 2], 2^Rational[-1, 2], Rational[3, 2]}}}, {{{-0.5, 
     0.7071067811865475, 1.5}}}]], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
    NCache[{{{-1, 2^Rational[1, 2], 2}}}, {{{-1, 1.4142135623730951`, 2}}}]], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
    NCache[{{{1, -2^Rational[1, 2], 1}}}, {{{1, -1.4142135623730951`, 1}}}]], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
    NCache[{{{Rational[1, 2], -2^Rational[-1, 2], Rational[3, 2]}}}, {{{
     0.5, -0.7071067811865475, 1.5}}}]], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], {{{0, 0, 2}}}], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
    NCache[{{{Rational[-1, 2], 2^Rational[-1, 2], Rational[5, 2]}}}, {{{-0.5, 
     0.7071067811865475, 2.5}}}]], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
    NCache[{{{-1, 2^Rational[1, 2], 3}}}, {{{-1, 1.4142135623730951`, 3}}}]], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
    NCache[{{{
       Rational[3, 2], 2^Rational[-1, 2] - 2^Rational[1, 2], 
        Rational[-1, 2]}}}, {{{1.5, -0.7071067811865477, -0.5}}}]], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], {{{1, 0, 0}}}], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
    NCache[{{{Rational[1, 2], 2^Rational[-1, 2], Rational[1, 2]}}}, {{{0.5, 
     0.7071067811865475, 0.5}}}]], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
    NCache[{{{0, 2^Rational[1, 2], 1}}}, {{{0, 1.4142135623730951`, 1}}}]], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
    NCache[{{{
       Rational[-1, 2], 2^Rational[-1, 2] + 2^Rational[1, 2], Rational[
        3, 2]}}}, {{{-0.5, 2.121320343559643, 1.5}}}]], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
    NCache[{{{
       Rational[3, 2], 2^Rational[-1, 2] - 2^Rational[1, 2], Rational[
        1, 2]}}}, {{{1.5, -0.7071067811865477, 0.5}}}]], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], {{{1, 0, 1}}}], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
    NCache[{{{Rational[1, 2], 2^Rational[-1, 2], Rational[3, 2]}}}, {{{0.5, 
     0.7071067811865475, 1.5}}}]], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
    NCache[{{{0, 2^Rational[1, 2], 2}}}, {{{0, 1.4142135623730951`, 2}}}]], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
    NCache[{{{
       Rational[-1, 2], 2^Rational[-1, 2] + 2^Rational[1, 2], Rational[
        5, 2]}}}, {{{-0.5, 2.121320343559643, 2.5}}}]], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
    NCache[{{{
       Rational[3, 2], 2^Rational[-1, 2] - 2^Rational[1, 2], Rational[
        3, 2]}}}, {{{1.5, -0.7071067811865477, 1.5}}}]], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], {{{1, 0, 2}}}], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
    NCache[{{{Rational[1, 2], 2^Rational[-1, 2], Rational[5, 2]}}}, {{{0.5, 
     0.7071067811865475, 2.5}}}]], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
    NCache[{{{0, 2^Rational[1, 2], 3}}}, {{{0, 1.4142135623730951`, 3}}}]], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
    NCache[{{{
       Rational[-1, 2], 2^Rational[-1, 2] + 2^Rational[1, 2], Rational[
        7, 2]}}}, {{{-0.5, 2.121320343559643, 3.5}}}]], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], {{{2, 0, 0}}}], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
    NCache[{{{
       Rational[3, 2], -2^Rational[-1, 2] + 2^Rational[1, 2], Rational[
        1, 2]}}}, {{{1.5, 0.7071067811865477, 0.5}}}]], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
    NCache[{{{1, 2^Rational[1, 2], 1}}}, {{{1, 1.4142135623730951`, 1}}}]], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
    NCache[{{{
       Rational[1, 2], 2^Rational[-1, 2] + 2^Rational[1, 2], Rational[
        3, 2]}}}, {{{0.5, 2.121320343559643, 1.5}}}]], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
    NCache[{{{0, 2 2^Rational[1, 2], 2}}}, {{{0, 2.8284271247461903`, 2}}}]], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], {{{2, 0, 1}}}], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
    NCache[{{{
       Rational[3, 2], -2^Rational[-1, 2] + 2^Rational[1, 2], Rational[
        3, 2]}}}, {{{1.5, 0.7071067811865477, 1.5}}}]], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
    NCache[{{{1, 2^Rational[1, 2], 2}}}, {{{1, 1.4142135623730951`, 2}}}]], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
    NCache[{{{
       Rational[1, 2], 2^Rational[-1, 2] + 2^Rational[1, 2], Rational[
        5, 2]}}}, {{{0.5, 2.121320343559643, 2.5}}}]], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
    NCache[{{{0, 2 2^Rational[1, 2], 3}}}, {{{0, 2.8284271247461903`, 3}}}]], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], {{{2, 0, 2}}}], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
    NCache[{{{
       Rational[3, 2], -2^Rational[-1, 2] + 2^Rational[1, 2], Rational[
        5, 2]}}}, {{{1.5, 0.7071067811865477, 2.5}}}]], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
    NCache[{{{1, 2^Rational[1, 2], 3}}}, {{{1, 1.4142135623730951`, 3}}}]], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
    NCache[{{{
       Rational[1, 2], 2^Rational[-1, 2] + 2^Rational[1, 2], Rational[
        7, 2]}}}, {{{0.5, 2.121320343559643, 3.5}}}]], 
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[Rational[1, 2], 0.5]], 
    NCache[{{{0, 2 2^Rational[1, 2], 4}}}, {{{0, 2.8284271247461903`, 4}}}]]},
  Axes->True,
  AxesOrigin->{0, 0, 0},
  Boxed->False,
  ImageSize->{377.96441913533243`, 443.49654715583955`},
  ImageSizeRaw->Automatic,
  ViewPoint->{1.782562234998584, -1.4422872720786584`, 2.4884290834092013`},
  ViewVertical->{-0.07483381309007668, 0.2372098093670197, 
   0.97275677985287}]], "Output", "PluginEmbeddedContent"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Tiling Polyhedra", "Chapter", "PluginEmbeddedContent"],

Cell["\<\
I now want to tile space with the rhombic dodecahedron. The FCC Vornois \
tesellation is the Rhomic dodcahedron, so this should mesh perfectly with our \
new basis vectors.

We first visualize this shape.\
\>", "Text", "PluginEmbeddedContent"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"PolyhedronData", "[", "\"\<RhombicDodecahedron\>\"", "]"}]], "Input",\
 "PluginEmbeddedContent"],

Cell[BoxData[
 Graphics3DBox[
  GraphicsComplex3DBox[
   NCache[{{-Rational[2, 3]^Rational[1, 2], -Rational[2, 3]^Rational[1, 2], 
      0}, {-Rational[2, 3]^Rational[1, 2], 0, -3^Rational[-1, 2]}, {-
      Rational[2, 3]^Rational[1, 2], 0, 3^Rational[-1, 2]}, {-
      Rational[2, 3]^Rational[1, 2], Rational[2, 3]^Rational[1, 2], 0}, {
     0, -Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2]}, {
     0, -Rational[2, 3]^Rational[1, 2], 3^Rational[-1, 2]}, {
     0, 0, (-2) 3^Rational[-1, 2]}, {0, 0, 2 3^Rational[-1, 2]}, {
     0, Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2]}, {
     0, Rational[2, 3]^Rational[1, 2], 3^Rational[-1, 2]}, {
     Rational[2, 3]^Rational[1, 2], -Rational[2, 3]^Rational[1, 2], 0}, {
     Rational[2, 3]^Rational[1, 2], 0, -3^Rational[-1, 2]}, {
     Rational[2, 3]^Rational[1, 2], 0, 3^Rational[-1, 2]}, {
     Rational[2, 3]^Rational[1, 2], Rational[2, 3]^Rational[1, 2], 
      0}}, {{-0.816496580927726, -0.816496580927726, 0}, {-0.816496580927726, 
      0, -0.5773502691896258}, {-0.816496580927726, 0, 
      0.5773502691896258}, {-0.816496580927726, 0.816496580927726, 0}, {
     0, -0.816496580927726, -0.5773502691896258}, {
     0, -0.816496580927726, 0.5773502691896258}, {
     0, 0, -1.1547005383792517`}, {0, 0, 1.1547005383792517`}, {
     0, 0.816496580927726, -0.5773502691896258}, {
     0, 0.816496580927726, 0.5773502691896258}, {
     0.816496580927726, -0.816496580927726, 0}, {
     0.816496580927726, 0, -0.5773502691896258}, {
     0.816496580927726, 0, 0.5773502691896258}, {
     0.816496580927726, 0.816496580927726, 0}}], 
   Polygon3DBox[{{2, 1, 3, 4}, {1, 2, 7, 5}, {6, 8, 3, 1}, {2, 4, 9, 7}, {8, 
    10, 4, 3}, {11, 6, 1, 5}, {9, 4, 10, 14}, {5, 7, 12, 11}, {11, 13, 8, 
    6}, {7, 9, 14, 12}, {13, 14, 10, 8}, {14, 13, 11, 12}}]],
  ImageSize->{366.5337555544776, 323.3243161835426},
  ViewPoint->{2.8965370489177644`, -1.4154858085008275`, 1.0278487486880197`},
  ViewVertical->{0.31336280215872575`, -0.08925910700881168, 
   1.224310106422172}]], "Output", "PluginEmbeddedContent"]
}, Open  ]],

Cell["\<\
We check the tesellation of this shape using our basis vectors.\
\>", "Text", "PluginEmbeddedContent"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Graphics3D", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"Blue", ",", 
     RowBox[{"PolyhedronData", "[", 
      RowBox[{"\"\<RhombicDodecahedron\>\"", ",", "\"\<Faces\>\""}], "]"}], 
     ",", "\[IndentingNewLine]", "Red", ",", 
     RowBox[{"Translate", "[", 
      RowBox[{
       RowBox[{"PolyhedronData", "[", 
        RowBox[{"\"\<RhombicDodecahedron\>\"", ",", "\"\<Faces\>\""}], "]"}], 
       ",", "a1p2"}], "]"}], ",", "\[IndentingNewLine]", "Green", ",", 
     RowBox[{"Translate", "[", 
      RowBox[{
       RowBox[{"PolyhedronData", "[", 
        RowBox[{"\"\<RhombicDodecahedron\>\"", ",", "\"\<Faces\>\""}], "]"}], 
       ",", "a2p2"}], "]"}], ",", "\[IndentingNewLine]", "Yellow", ",", 
     RowBox[{"Translate", "[", 
      RowBox[{
       RowBox[{"PolyhedronData", "[", 
        RowBox[{"\"\<RhombicDodecahedron\>\"", ",", "\"\<Faces\>\""}], "]"}], 
       ",", "a3p2"}], "]"}]}], "}"}], ",", 
   RowBox[{"AxesOrigin", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"0", ",", "0", ",", "0"}], "}"}]}], ",", 
   RowBox[{"Axes", "\[Rule]", "True"}], ",", 
   RowBox[{"Boxed", "\[Rule]", "False"}]}], "]"}]], "Input", \
"PluginEmbeddedContent"],

Cell[BoxData[
 Graphics3DBox[{
   {RGBColor[0, 0, 1], 
    GraphicsComplex3DBox[
     NCache[{{-Rational[2, 3]^Rational[1, 2], -Rational[2, 3]^Rational[1, 2], 
        0}, {-Rational[2, 3]^Rational[1, 2], 0, -3^Rational[-1, 2]}, {-
        Rational[2, 3]^Rational[1, 2], 0, 3^Rational[-1, 2]}, {-
        Rational[2, 3]^Rational[1, 2], Rational[2, 3]^Rational[1, 2], 0}, {
       0, -Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2]}, {
       0, -Rational[2, 3]^Rational[1, 2], 3^Rational[-1, 2]}, {
       0, 0, (-2) 3^Rational[-1, 2]}, {0, 0, 2 3^Rational[-1, 2]}, {
       0, Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2]}, {
       0, Rational[2, 3]^Rational[1, 2], 3^Rational[-1, 2]}, {
       Rational[2, 3]^Rational[1, 2], -Rational[2, 3]^Rational[1, 2], 0}, {
       Rational[2, 3]^Rational[1, 2], 0, -3^Rational[-1, 2]}, {
       Rational[2, 3]^Rational[1, 2], 0, 3^Rational[-1, 2]}, {
       Rational[2, 3]^Rational[1, 2], Rational[2, 3]^Rational[1, 2], 
        0}}, {{-0.816496580927726, -0.816496580927726, 
        0}, {-0.816496580927726, 0, -0.5773502691896258}, {-0.816496580927726,
         0, 0.5773502691896258}, {-0.816496580927726, 0.816496580927726, 0}, {
       0, -0.816496580927726, -0.5773502691896258}, {
       0, -0.816496580927726, 0.5773502691896258}, {
       0, 0, -1.1547005383792517`}, {0, 0, 1.1547005383792517`}, {
       0, 0.816496580927726, -0.5773502691896258}, {
       0, 0.816496580927726, 0.5773502691896258}, {
       0.816496580927726, -0.816496580927726, 0}, {
       0.816496580927726, 0, -0.5773502691896258}, {
       0.816496580927726, 0, 0.5773502691896258}, {
       0.816496580927726, 0.816496580927726, 0}}], 
     Polygon3DBox[{{2, 1, 3, 4}, {1, 2, 7, 5}, {6, 8, 3, 1}, {2, 4, 9, 7}, {8,
       10, 4, 3}, {11, 6, 1, 5}, {9, 4, 10, 14}, {5, 7, 12, 11}, {11, 13, 8, 
      6}, {7, 9, 14, 12}, {13, 14, 10, 8}, {14, 13, 11, 12}}]]}, 
   {RGBColor[1, 0, 0], 
    GeometricTransformation3DBox[
     GraphicsComplex3DBox[
      NCache[{{-Rational[2, 3]^Rational[1, 2], -Rational[2, 3]^Rational[1, 2],
          0}, {-Rational[2, 3]^Rational[1, 2], 0, -3^Rational[-1, 2]}, {-
         Rational[2, 3]^Rational[1, 2], 0, 3^Rational[-1, 2]}, {-
         Rational[2, 3]^Rational[1, 2], Rational[2, 3]^Rational[1, 2], 0}, {
        0, -Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2]}, {
        0, -Rational[2, 3]^Rational[1, 2], 3^Rational[-1, 2]}, {
        0, 0, (-2) 3^Rational[-1, 2]}, {0, 0, 2 3^Rational[-1, 2]}, {
        0, Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2]}, {
        0, Rational[2, 3]^Rational[1, 2], 3^Rational[-1, 2]}, {
        Rational[2, 3]^Rational[1, 2], -Rational[2, 3]^Rational[1, 2], 0}, {
        Rational[2, 3]^Rational[1, 2], 0, -3^Rational[-1, 2]}, {
        Rational[2, 3]^Rational[1, 2], 0, 3^Rational[-1, 2]}, {
        Rational[2, 3]^Rational[1, 2], Rational[2, 3]^Rational[1, 2], 
         0}}, {{-0.816496580927726, -0.816496580927726, 
         0}, {-0.816496580927726, 
         0, -0.5773502691896258}, {-0.816496580927726, 0, 
         0.5773502691896258}, {-0.816496580927726, 0.816496580927726, 0}, {
        0, -0.816496580927726, -0.5773502691896258}, {
        0, -0.816496580927726, 0.5773502691896258}, {
        0, 0, -1.1547005383792517`}, {0, 0, 1.1547005383792517`}, {
        0, 0.816496580927726, -0.5773502691896258}, {
        0, 0.816496580927726, 0.5773502691896258}, {
        0.816496580927726, -0.816496580927726, 0}, {
        0.816496580927726, 0, -0.5773502691896258}, {
        0.816496580927726, 0, 0.5773502691896258}, {
        0.816496580927726, 0.816496580927726, 0}}], 
      Polygon3DBox[{{2, 1, 3, 4}, {1, 2, 7, 5}, {6, 8, 3, 1}, {2, 4, 9, 7}, {
       8, 10, 4, 3}, {11, 6, 1, 5}, {9, 4, 10, 14}, {5, 7, 12, 11}, {11, 13, 
       8, 6}, {7, 9, 14, 12}, {13, 14, 10, 8}, {14, 13, 11, 12}}]], 
     NCache[{Rational[1, 2] 3^Rational[1, 2], 0, Rational[1, 2]}, {
      0.8660254037844386, 0, 0.5}]]}, 
   {RGBColor[0, 1, 0], 
    GeometricTransformation3DBox[
     GraphicsComplex3DBox[
      NCache[{{-Rational[2, 3]^Rational[1, 2], -Rational[2, 3]^Rational[1, 2],
          0}, {-Rational[2, 3]^Rational[1, 2], 0, -3^Rational[-1, 2]}, {-
         Rational[2, 3]^Rational[1, 2], 0, 3^Rational[-1, 2]}, {-
         Rational[2, 3]^Rational[1, 2], Rational[2, 3]^Rational[1, 2], 0}, {
        0, -Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2]}, {
        0, -Rational[2, 3]^Rational[1, 2], 3^Rational[-1, 2]}, {
        0, 0, (-2) 3^Rational[-1, 2]}, {0, 0, 2 3^Rational[-1, 2]}, {
        0, Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2]}, {
        0, Rational[2, 3]^Rational[1, 2], 3^Rational[-1, 2]}, {
        Rational[2, 3]^Rational[1, 2], -Rational[2, 3]^Rational[1, 2], 0}, {
        Rational[2, 3]^Rational[1, 2], 0, -3^Rational[-1, 2]}, {
        Rational[2, 3]^Rational[1, 2], 0, 3^Rational[-1, 2]}, {
        Rational[2, 3]^Rational[1, 2], Rational[2, 3]^Rational[1, 2], 
         0}}, {{-0.816496580927726, -0.816496580927726, 
         0}, {-0.816496580927726, 
         0, -0.5773502691896258}, {-0.816496580927726, 0, 
         0.5773502691896258}, {-0.816496580927726, 0.816496580927726, 0}, {
        0, -0.816496580927726, -0.5773502691896258}, {
        0, -0.816496580927726, 0.5773502691896258}, {
        0, 0, -1.1547005383792517`}, {0, 0, 1.1547005383792517`}, {
        0, 0.816496580927726, -0.5773502691896258}, {
        0, 0.816496580927726, 0.5773502691896258}, {
        0.816496580927726, -0.816496580927726, 0}, {
        0.816496580927726, 0, -0.5773502691896258}, {
        0.816496580927726, 0, 0.5773502691896258}, {
        0.816496580927726, 0.816496580927726, 0}}], 
      Polygon3DBox[{{2, 1, 3, 4}, {1, 2, 7, 5}, {6, 8, 3, 1}, {2, 4, 9, 7}, {
       8, 10, 4, 3}, {11, 6, 1, 5}, {9, 4, 10, 14}, {5, 7, 12, 11}, {11, 13, 
       8, 6}, {7, 9, 14, 12}, {13, 14, 10, 8}, {14, 13, 11, 12}}]], {0, 0, 
     1}]}, 
   {RGBColor[1, 1, 0], 
    GeometricTransformation3DBox[
     GraphicsComplex3DBox[
      NCache[{{-Rational[2, 3]^Rational[1, 2], -Rational[2, 3]^Rational[1, 2],
          0}, {-Rational[2, 3]^Rational[1, 2], 0, -3^Rational[-1, 2]}, {-
         Rational[2, 3]^Rational[1, 2], 0, 3^Rational[-1, 2]}, {-
         Rational[2, 3]^Rational[1, 2], Rational[2, 3]^Rational[1, 2], 0}, {
        0, -Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2]}, {
        0, -Rational[2, 3]^Rational[1, 2], 3^Rational[-1, 2]}, {
        0, 0, (-2) 3^Rational[-1, 2]}, {0, 0, 2 3^Rational[-1, 2]}, {
        0, Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2]}, {
        0, Rational[2, 3]^Rational[1, 2], 3^Rational[-1, 2]}, {
        Rational[2, 3]^Rational[1, 2], -Rational[2, 3]^Rational[1, 2], 0}, {
        Rational[2, 3]^Rational[1, 2], 0, -3^Rational[-1, 2]}, {
        Rational[2, 3]^Rational[1, 2], 0, 3^Rational[-1, 2]}, {
        Rational[2, 3]^Rational[1, 2], Rational[2, 3]^Rational[1, 2], 
         0}}, {{-0.816496580927726, -0.816496580927726, 
         0}, {-0.816496580927726, 
         0, -0.5773502691896258}, {-0.816496580927726, 0, 
         0.5773502691896258}, {-0.816496580927726, 0.816496580927726, 0}, {
        0, -0.816496580927726, -0.5773502691896258}, {
        0, -0.816496580927726, 0.5773502691896258}, {
        0, 0, -1.1547005383792517`}, {0, 0, 1.1547005383792517`}, {
        0, 0.816496580927726, -0.5773502691896258}, {
        0, 0.816496580927726, 0.5773502691896258}, {
        0.816496580927726, -0.816496580927726, 0}, {
        0.816496580927726, 0, -0.5773502691896258}, {
        0.816496580927726, 0, 0.5773502691896258}, {
        0.816496580927726, 0.816496580927726, 0}}], 
      Polygon3DBox[{{2, 1, 3, 4}, {1, 2, 7, 5}, {6, 8, 3, 1}, {2, 4, 9, 7}, {
       8, 10, 4, 3}, {11, 6, 1, 5}, {9, 4, 10, 14}, {5, 7, 12, 11}, {11, 13, 
       8, 6}, {7, 9, 14, 12}, {13, 14, 10, 8}, {14, 13, 11, 12}}]], 
     NCache[{Rational[1, 2] 3^Rational[-1, 2], Rational[2, 3]^Rational[1, 2], 
       Rational[1, 2]}, {0.2886751345948129, 0.816496580927726, 0.5}]]}},
  Axes->True,
  AxesOrigin->{0, 0, 0},
  Boxed->False,
  ImageSize->{422.67719068348777`, 433.6352190547021},
  ViewPoint->{0.6880420792952788, -3.1768865719030197`, 0.9402073209570909},
  ViewVertical->{-0.23774987404292883`, -0.5611339107205574, 
   0.8917790776740427}]], "Output", "PluginEmbeddedContent"]
}, Open  ]],

Cell["\<\
First step, it looks like the dodecahera are too large for a unit \
translation. Let\[CloseCurlyQuote]s get the scale.\
\>", "Text", "PluginEmbeddedContent"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"PolyhedronData", "[", 
  RowBox[{"\"\<RhombicDodecahedron\>\"", ",", "\"\<Insphere\>\""}], 
  "]"}]], "Input", "PluginEmbeddedContent"],

Cell[BoxData[
 RowBox[{"Sphere", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"0", ",", "0", ",", "0"}], "}"}], ",", 
   SqrtBox[
    FractionBox["2", "3"]]}], "]"}]], "Output", "PluginEmbeddedContent"]
}, Open  ]],

Cell[TextData[{
 "As suspected, the radius of the inscribe sphere is not ",
 Cell[BoxData[
  FormBox[
   FractionBox["1", "2"], TraditionalForm]]],
 " (unit diameter). Fixing that:"
}], "Text", "PluginEmbeddedContent"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Graphics3D", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"Scale", "[", 
      RowBox[{
       RowBox[{"PolyhedronData", "[", 
        RowBox[{"\"\<RhombicDodecahedron\>\"", ",", "\"\<Insphere\>\""}], 
        "]"}], ",", 
       RowBox[{
        FractionBox["1", "2"], 
        SqrtBox[
         FractionBox["3", "2"]]}]}], "]"}], ",", 
     RowBox[{"Scale", "[", 
      RowBox[{
       RowBox[{"PolyhedronData", "[", 
        RowBox[{"\"\<RhombicDodecahedron\>\"", ",", "\"\<Edges\>\""}], "]"}], 
       ",", 
       RowBox[{
        FractionBox["1", "2"], 
        SqrtBox[
         FractionBox["3", "2"]]}]}], "]"}]}], "}"}], ",", 
   RowBox[{"AxesOrigin", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"0", ",", "0", ",", "0"}], "}"}]}], ",", 
   RowBox[{"Axes", "\[Rule]", "True"}], ",", 
   RowBox[{"Boxed", "\[Rule]", "False"}]}], "]"}]], "Input", \
"PluginEmbeddedContent"],

Cell[BoxData[
 Graphics3DBox[{
   GeometricTransformation3DBox[
    SphereBox[{0, 0, 0}, NCache[
     Rational[2, 3]^Rational[1, 2], 0.816496580927726]], 
    NCache[{{{Rational[1, 2] Rational[3, 2]^Rational[1, 2], 0, 0}, {
       0, Rational[1, 2] Rational[3, 2]^Rational[1, 2], 0}, {
       0, 0, Rational[1, 2] Rational[3, 2]^Rational[1, 2]}}, 
      Center}, {{{0.6123724356957945, 0, 0}, {0, 0.6123724356957945, 0}, {
       0, 0, 0.6123724356957945}}, Center}]], 
   GeometricTransformation3DBox[
    GraphicsComplex3DBox[
     NCache[{{-Rational[2, 3]^Rational[1, 2], -Rational[2, 3]^Rational[1, 2], 
        0}, {-Rational[2, 3]^Rational[1, 2], 0, -3^Rational[-1, 2]}, {-
        Rational[2, 3]^Rational[1, 2], 0, 3^Rational[-1, 2]}, {-
        Rational[2, 3]^Rational[1, 2], Rational[2, 3]^Rational[1, 2], 0}, {
       0, -Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2]}, {
       0, -Rational[2, 3]^Rational[1, 2], 3^Rational[-1, 2]}, {
       0, 0, (-2) 3^Rational[-1, 2]}, {0, 0, 2 3^Rational[-1, 2]}, {
       0, Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2]}, {
       0, Rational[2, 3]^Rational[1, 2], 3^Rational[-1, 2]}, {
       Rational[2, 3]^Rational[1, 2], -Rational[2, 3]^Rational[1, 2], 0}, {
       Rational[2, 3]^Rational[1, 2], 0, -3^Rational[-1, 2]}, {
       Rational[2, 3]^Rational[1, 2], 0, 3^Rational[-1, 2]}, {
       Rational[2, 3]^Rational[1, 2], Rational[2, 3]^Rational[1, 2], 
        0}}, {{-0.816496580927726, -0.816496580927726, 
        0}, {-0.816496580927726, 0, -0.5773502691896258}, {-0.816496580927726,
         0, 0.5773502691896258}, {-0.816496580927726, 0.816496580927726, 0}, {
       0, -0.816496580927726, -0.5773502691896258}, {
       0, -0.816496580927726, 0.5773502691896258}, {
       0, 0, -1.1547005383792517`}, {0, 0, 1.1547005383792517`}, {
       0, 0.816496580927726, -0.5773502691896258}, {
       0, 0.816496580927726, 0.5773502691896258}, {
       0.816496580927726, -0.816496580927726, 0}, {
       0.816496580927726, 0, -0.5773502691896258}, {
       0.816496580927726, 0, 0.5773502691896258}, {
       0.816496580927726, 0.816496580927726, 0}}], 
     Line3DBox[{{1, 2}, {1, 3}, {1, 5}, {1, 6}, {2, 4}, {2, 7}, {3, 4}, {3, 
      8}, {4, 9}, {4, 10}, {5, 7}, {5, 11}, {6, 8}, {6, 11}, {7, 9}, {7, 
      12}, {8, 10}, {8, 13}, {9, 14}, {10, 14}, {11, 12}, {11, 13}, {12, 
      14}, {13, 14}}]], 
    NCache[{{{Rational[1, 2] Rational[3, 2]^Rational[1, 2], 0, 0}, {
       0, Rational[1, 2] Rational[3, 2]^Rational[1, 2], 0}, {
       0, 0, Rational[1, 2] Rational[3, 2]^Rational[1, 2]}}, 
      Center}, {{{0.6123724356957945, 0, 0}, {0, 0.6123724356957945, 0}, {
       0, 0, 0.6123724356957945}}, Center}]]},
  Axes->True,
  AxesOrigin->{0, 0, 0},
  Boxed->False]], "Output", "PluginEmbeddedContent"]
}, Open  ]],

Cell["\<\
That looks better. Let\[CloseCurlyQuote]s try the tesellation again with the \
re-sized polyhedra.\
\>", "Text", "PluginEmbeddedContent"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Graphics3D", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"Blue", ",", 
     RowBox[{"Scale", "[", 
      RowBox[{
       RowBox[{"PolyhedronData", "[", 
        RowBox[{"\"\<RhombicDodecahedron\>\"", ",", "\"\<Faces\>\""}], "]"}], 
       ",", 
       RowBox[{
        FractionBox["1", "2"], 
        SqrtBox[
         FractionBox["3", "2"]]}]}], "]"}], ",", "\[IndentingNewLine]", "Red",
      ",", 
     RowBox[{"Translate", "[", 
      RowBox[{
       RowBox[{"Scale", "[", 
        RowBox[{
         RowBox[{"PolyhedronData", "[", 
          RowBox[{"\"\<RhombicDodecahedron\>\"", ",", "\"\<Faces\>\""}], 
          "]"}], ",", 
         RowBox[{
          FractionBox["1", "2"], 
          SqrtBox[
           FractionBox["3", "2"]]}]}], "]"}], ",", "a1p2"}], "]"}], ",", 
     "\[IndentingNewLine]", "Green", ",", 
     RowBox[{"Translate", "[", 
      RowBox[{
       RowBox[{"Scale", "[", 
        RowBox[{
         RowBox[{"PolyhedronData", "[", 
          RowBox[{"\"\<RhombicDodecahedron\>\"", ",", "\"\<Faces\>\""}], 
          "]"}], ",", 
         RowBox[{
          FractionBox["1", "2"], 
          SqrtBox[
           FractionBox["3", "2"]]}]}], "]"}], ",", "a2p2"}], "]"}], ",", 
     "\[IndentingNewLine]", "Yellow", ",", 
     RowBox[{"Translate", "[", 
      RowBox[{
       RowBox[{"Scale", "[", 
        RowBox[{
         RowBox[{"PolyhedronData", "[", 
          RowBox[{"\"\<RhombicDodecahedron\>\"", ",", "\"\<Faces\>\""}], 
          "]"}], ",", 
         RowBox[{
          FractionBox["1", "2"], 
          SqrtBox[
           FractionBox["3", "2"]]}]}], "]"}], ",", "a3p2"}], "]"}]}], "}"}], 
   ",", 
   RowBox[{"AxesOrigin", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"0", ",", "0", ",", "0"}], "}"}]}], ",", 
   RowBox[{"Axes", "\[Rule]", "True"}], ",", 
   RowBox[{"Boxed", "\[Rule]", "False"}], ",", 
   RowBox[{"AxesLabel", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"x", ",", "y", ",", "z"}], "}"}]}]}], "]"}]], "Input", \
"PluginEmbeddedContent"],

Cell[BoxData[
 Graphics3DBox[{
   {RGBColor[0, 0, 1], 
    GeometricTransformation3DBox[
     GraphicsComplex3DBox[
      NCache[{{-Rational[2, 3]^Rational[1, 2], -Rational[2, 3]^Rational[1, 2],
          0}, {-Rational[2, 3]^Rational[1, 2], 0, -3^Rational[-1, 2]}, {-
         Rational[2, 3]^Rational[1, 2], 0, 3^Rational[-1, 2]}, {-
         Rational[2, 3]^Rational[1, 2], Rational[2, 3]^Rational[1, 2], 0}, {
        0, -Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2]}, {
        0, -Rational[2, 3]^Rational[1, 2], 3^Rational[-1, 2]}, {
        0, 0, (-2) 3^Rational[-1, 2]}, {0, 0, 2 3^Rational[-1, 2]}, {
        0, Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2]}, {
        0, Rational[2, 3]^Rational[1, 2], 3^Rational[-1, 2]}, {
        Rational[2, 3]^Rational[1, 2], -Rational[2, 3]^Rational[1, 2], 0}, {
        Rational[2, 3]^Rational[1, 2], 0, -3^Rational[-1, 2]}, {
        Rational[2, 3]^Rational[1, 2], 0, 3^Rational[-1, 2]}, {
        Rational[2, 3]^Rational[1, 2], Rational[2, 3]^Rational[1, 2], 
         0}}, {{-0.816496580927726, -0.816496580927726, 
         0}, {-0.816496580927726, 
         0, -0.5773502691896258}, {-0.816496580927726, 0, 
         0.5773502691896258}, {-0.816496580927726, 0.816496580927726, 0}, {
        0, -0.816496580927726, -0.5773502691896258}, {
        0, -0.816496580927726, 0.5773502691896258}, {
        0, 0, -1.1547005383792517`}, {0, 0, 1.1547005383792517`}, {
        0, 0.816496580927726, -0.5773502691896258}, {
        0, 0.816496580927726, 0.5773502691896258}, {
        0.816496580927726, -0.816496580927726, 0}, {
        0.816496580927726, 0, -0.5773502691896258}, {
        0.816496580927726, 0, 0.5773502691896258}, {
        0.816496580927726, 0.816496580927726, 0}}], 
      Polygon3DBox[{{2, 1, 3, 4}, {1, 2, 7, 5}, {6, 8, 3, 1}, {2, 4, 9, 7}, {
       8, 10, 4, 3}, {11, 6, 1, 5}, {9, 4, 10, 14}, {5, 7, 12, 11}, {11, 13, 
       8, 6}, {7, 9, 14, 12}, {13, 14, 10, 8}, {14, 13, 11, 12}}]], 
     NCache[{{{Rational[1, 2] Rational[3, 2]^Rational[1, 2], 0, 0}, {
        0, Rational[1, 2] Rational[3, 2]^Rational[1, 2], 0}, {
        0, 0, Rational[1, 2] Rational[3, 2]^Rational[1, 2]}}, 
       Center}, {{{0.6123724356957945, 0, 0}, {0, 0.6123724356957945, 0}, {
        0, 0, 0.6123724356957945}}, Center}]]}, 
   {RGBColor[1, 0, 0], 
    GeometricTransformation3DBox[
     GeometricTransformation3DBox[
      GraphicsComplex3DBox[
       NCache[{{-Rational[2, 3]^Rational[1, 2], -
          Rational[2, 3]^Rational[1, 2], 0}, {-Rational[2, 3]^Rational[1, 2], 
          0, -3^Rational[-1, 2]}, {-Rational[2, 3]^Rational[1, 2], 0, 3^
          Rational[-1, 2]}, {-Rational[2, 3]^Rational[1, 2], Rational[2, 3]^
          Rational[1, 2], 0}, {
         0, -Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2]}, {
         0, -Rational[2, 3]^Rational[1, 2], 3^Rational[-1, 2]}, {
         0, 0, (-2) 3^Rational[-1, 2]}, {0, 0, 2 3^Rational[-1, 2]}, {
         0, Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2]}, {
         0, Rational[2, 3]^Rational[1, 2], 3^Rational[-1, 2]}, {
         Rational[2, 3]^Rational[1, 2], -Rational[2, 3]^Rational[1, 2], 0}, {
         Rational[2, 3]^Rational[1, 2], 0, -3^Rational[-1, 2]}, {
         Rational[2, 3]^Rational[1, 2], 0, 3^Rational[-1, 2]}, {
         Rational[2, 3]^Rational[1, 2], Rational[2, 3]^Rational[1, 2], 
          0}}, {{-0.816496580927726, -0.816496580927726, 
          0}, {-0.816496580927726, 
          0, -0.5773502691896258}, {-0.816496580927726, 0, 
          0.5773502691896258}, {-0.816496580927726, 0.816496580927726, 0}, {
         0, -0.816496580927726, -0.5773502691896258}, {
         0, -0.816496580927726, 0.5773502691896258}, {
         0, 0, -1.1547005383792517`}, {0, 0, 1.1547005383792517`}, {
         0, 0.816496580927726, -0.5773502691896258}, {
         0, 0.816496580927726, 0.5773502691896258}, {
         0.816496580927726, -0.816496580927726, 0}, {
         0.816496580927726, 0, -0.5773502691896258}, {
         0.816496580927726, 0, 0.5773502691896258}, {
         0.816496580927726, 0.816496580927726, 0}}], 
       Polygon3DBox[{{2, 1, 3, 4}, {1, 2, 7, 5}, {6, 8, 3, 1}, {2, 4, 9, 7}, {
        8, 10, 4, 3}, {11, 6, 1, 5}, {9, 4, 10, 14}, {5, 7, 12, 11}, {11, 13, 
        8, 6}, {7, 9, 14, 12}, {13, 14, 10, 8}, {14, 13, 11, 12}}]], 
      NCache[{{{Rational[1, 2] Rational[3, 2]^Rational[1, 2], 0, 0}, {
         0, Rational[1, 2] Rational[3, 2]^Rational[1, 2], 0}, {
         0, 0, Rational[1, 2] Rational[3, 2]^Rational[1, 2]}}, 
        Center}, {{{0.6123724356957945, 0, 0}, {0, 0.6123724356957945, 0}, {
         0, 0, 0.6123724356957945}}, Center}]], 
     NCache[{Rational[1, 2] 3^Rational[1, 2], 0, Rational[1, 2]}, {
      0.8660254037844386, 0, 0.5}]]}, 
   {RGBColor[0, 1, 0], 
    GeometricTransformation3DBox[
     GeometricTransformation3DBox[
      GraphicsComplex3DBox[
       NCache[{{-Rational[2, 3]^Rational[1, 2], -
          Rational[2, 3]^Rational[1, 2], 0}, {-Rational[2, 3]^Rational[1, 2], 
          0, -3^Rational[-1, 2]}, {-Rational[2, 3]^Rational[1, 2], 0, 3^
          Rational[-1, 2]}, {-Rational[2, 3]^Rational[1, 2], Rational[2, 3]^
          Rational[1, 2], 0}, {
         0, -Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2]}, {
         0, -Rational[2, 3]^Rational[1, 2], 3^Rational[-1, 2]}, {
         0, 0, (-2) 3^Rational[-1, 2]}, {0, 0, 2 3^Rational[-1, 2]}, {
         0, Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2]}, {
         0, Rational[2, 3]^Rational[1, 2], 3^Rational[-1, 2]}, {
         Rational[2, 3]^Rational[1, 2], -Rational[2, 3]^Rational[1, 2], 0}, {
         Rational[2, 3]^Rational[1, 2], 0, -3^Rational[-1, 2]}, {
         Rational[2, 3]^Rational[1, 2], 0, 3^Rational[-1, 2]}, {
         Rational[2, 3]^Rational[1, 2], Rational[2, 3]^Rational[1, 2], 
          0}}, {{-0.816496580927726, -0.816496580927726, 
          0}, {-0.816496580927726, 
          0, -0.5773502691896258}, {-0.816496580927726, 0, 
          0.5773502691896258}, {-0.816496580927726, 0.816496580927726, 0}, {
         0, -0.816496580927726, -0.5773502691896258}, {
         0, -0.816496580927726, 0.5773502691896258}, {
         0, 0, -1.1547005383792517`}, {0, 0, 1.1547005383792517`}, {
         0, 0.816496580927726, -0.5773502691896258}, {
         0, 0.816496580927726, 0.5773502691896258}, {
         0.816496580927726, -0.816496580927726, 0}, {
         0.816496580927726, 0, -0.5773502691896258}, {
         0.816496580927726, 0, 0.5773502691896258}, {
         0.816496580927726, 0.816496580927726, 0}}], 
       Polygon3DBox[{{2, 1, 3, 4}, {1, 2, 7, 5}, {6, 8, 3, 1}, {2, 4, 9, 7}, {
        8, 10, 4, 3}, {11, 6, 1, 5}, {9, 4, 10, 14}, {5, 7, 12, 11}, {11, 13, 
        8, 6}, {7, 9, 14, 12}, {13, 14, 10, 8}, {14, 13, 11, 12}}]], 
      NCache[{{{Rational[1, 2] Rational[3, 2]^Rational[1, 2], 0, 0}, {
         0, Rational[1, 2] Rational[3, 2]^Rational[1, 2], 0}, {
         0, 0, Rational[1, 2] Rational[3, 2]^Rational[1, 2]}}, 
        Center}, {{{0.6123724356957945, 0, 0}, {0, 0.6123724356957945, 0}, {
         0, 0, 0.6123724356957945}}, Center}]], {0, 0, 1}]}, 
   {RGBColor[1, 1, 0], 
    GeometricTransformation3DBox[
     GeometricTransformation3DBox[
      GraphicsComplex3DBox[
       NCache[{{-Rational[2, 3]^Rational[1, 2], -
          Rational[2, 3]^Rational[1, 2], 0}, {-Rational[2, 3]^Rational[1, 2], 
          0, -3^Rational[-1, 2]}, {-Rational[2, 3]^Rational[1, 2], 0, 3^
          Rational[-1, 2]}, {-Rational[2, 3]^Rational[1, 2], Rational[2, 3]^
          Rational[1, 2], 0}, {
         0, -Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2]}, {
         0, -Rational[2, 3]^Rational[1, 2], 3^Rational[-1, 2]}, {
         0, 0, (-2) 3^Rational[-1, 2]}, {0, 0, 2 3^Rational[-1, 2]}, {
         0, Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2]}, {
         0, Rational[2, 3]^Rational[1, 2], 3^Rational[-1, 2]}, {
         Rational[2, 3]^Rational[1, 2], -Rational[2, 3]^Rational[1, 2], 0}, {
         Rational[2, 3]^Rational[1, 2], 0, -3^Rational[-1, 2]}, {
         Rational[2, 3]^Rational[1, 2], 0, 3^Rational[-1, 2]}, {
         Rational[2, 3]^Rational[1, 2], Rational[2, 3]^Rational[1, 2], 
          0}}, {{-0.816496580927726, -0.816496580927726, 
          0}, {-0.816496580927726, 
          0, -0.5773502691896258}, {-0.816496580927726, 0, 
          0.5773502691896258}, {-0.816496580927726, 0.816496580927726, 0}, {
         0, -0.816496580927726, -0.5773502691896258}, {
         0, -0.816496580927726, 0.5773502691896258}, {
         0, 0, -1.1547005383792517`}, {0, 0, 1.1547005383792517`}, {
         0, 0.816496580927726, -0.5773502691896258}, {
         0, 0.816496580927726, 0.5773502691896258}, {
         0.816496580927726, -0.816496580927726, 0}, {
         0.816496580927726, 0, -0.5773502691896258}, {
         0.816496580927726, 0, 0.5773502691896258}, {
         0.816496580927726, 0.816496580927726, 0}}], 
       Polygon3DBox[{{2, 1, 3, 4}, {1, 2, 7, 5}, {6, 8, 3, 1}, {2, 4, 9, 7}, {
        8, 10, 4, 3}, {11, 6, 1, 5}, {9, 4, 10, 14}, {5, 7, 12, 11}, {11, 13, 
        8, 6}, {7, 9, 14, 12}, {13, 14, 10, 8}, {14, 13, 11, 12}}]], 
      NCache[{{{Rational[1, 2] Rational[3, 2]^Rational[1, 2], 0, 0}, {
         0, Rational[1, 2] Rational[3, 2]^Rational[1, 2], 0}, {
         0, 0, Rational[1, 2] Rational[3, 2]^Rational[1, 2]}}, 
        Center}, {{{0.6123724356957945, 0, 0}, {0, 0.6123724356957945, 0}, {
         0, 0, 0.6123724356957945}}, Center}]], 
     NCache[{Rational[1, 2] 3^Rational[-1, 2], Rational[2, 3]^Rational[1, 2], 
       Rational[1, 2]}, {0.2886751345948129, 0.816496580927726, 0.5}]]}},
  Axes->True,
  AxesLabel->{
    FormBox["x", TraditionalForm], 
    FormBox["y", TraditionalForm], 
    FormBox["z", TraditionalForm]},
  AxesOrigin->{0, 0, 0},
  Boxed->False]], "Output", "PluginEmbeddedContent"]
}, Open  ]],

Cell[TextData[{
 "That fixed the scale problem. Now the rotation of the dodecahedron is off. \
I want the tiling to match faces. This requres two rotations. First, we \
rotate by ",
 Cell[BoxData[
  FormBox[
   FractionBox["\[Pi]", "2"], TraditionalForm]]],
 " around the y-axis. Then we have to do a second rotation that turns out to \
be a rotation of ",
 Cell[BoxData[
  FormBox[
   RowBox[{"ArcCos", "[", 
    SqrtBox[
     FractionBox["2", "3"]], "]"}], TraditionalForm]]],
 " radians around the z-axis. We then look at the projections in all three \
directions to make sure that things are tiled correctly."
}], "Text", "PluginEmbeddedContent"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"rotationAngle", " ", "=", " ", 
   FractionBox["\[Pi]", "2"]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"rotationVector", "=", 
   RowBox[{"{", 
    RowBox[{"0", ",", "1", ",", "0"}], "}"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"MakePoly", "[", "transVec_", "]"}], ":=", 
    RowBox[{"Translate", "[", 
     RowBox[{
      RowBox[{"GeometricTransformation", "[", 
       RowBox[{
        RowBox[{"GeometricTransformation", "[", 
         RowBox[{
          RowBox[{"Scale", "[", 
           RowBox[{
            RowBox[{"PolyhedronData", "[", 
             RowBox[{"\"\<RhombicDodecahedron\>\"", ",", "\"\<Edges\>\""}], 
             "]"}], ",", 
            RowBox[{
             FractionBox["1", "2"], 
             SqrtBox[
              FractionBox["3", "2"]]}]}], "]"}], ",", 
          RowBox[{"RotationMatrix", "[", 
           RowBox[{"rotationAngle", ",", "rotationVector"}], "]"}]}], "]"}], 
        ",", 
        RowBox[{"RotationMatrix", "[", 
         RowBox[{
          RowBox[{"ArcCos", "[", 
           SqrtBox[
            FractionBox["2", "3"]], "]"}], ",", 
          RowBox[{"{", 
           RowBox[{"0", ",", "0", ",", "1"}], "}"}]}], "]"}]}], "]"}], ",", 
      "transVec"}], "]"}]}], ";"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{"GraphicsGrid", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"Graphics3D", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"Blue", ",", 
          RowBox[{"MakePoly", "[", 
           RowBox[{"{", 
            RowBox[{"0", ",", "0", ",", "0"}], "}"}], "]"}], ",", 
          "\[IndentingNewLine]", "Red", ",", 
          RowBox[{"MakePoly", "[", "a1p2", "]"}], ",", "\[IndentingNewLine]", 
          "Green", ",", 
          RowBox[{"MakePoly", "[", "a2p2", "]"}], ",", "\[IndentingNewLine]", 
          "Yellow", ",", 
          RowBox[{"MakePoly", "[", "a3p2", "]"}]}], "}"}], ",", 
        RowBox[{"AxesOrigin", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"0", ",", "0", ",", "0"}], "}"}]}], ",", 
        RowBox[{"Axes", "\[Rule]", "True"}], ",", 
        RowBox[{"Boxed", "\[Rule]", "False"}], ",", 
        RowBox[{"AxesLabel", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"x", ",", "y", ",", "z"}], "}"}]}], ",", 
        RowBox[{"ViewPoint", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"\[Infinity]", ",", "0", ",", "0"}], "}"}]}]}], "]"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{"Graphics3D", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"Blue", ",", 
          RowBox[{"MakePoly", "[", 
           RowBox[{"{", 
            RowBox[{"0", ",", "0", ",", "0"}], "}"}], "]"}], ",", 
          "\[IndentingNewLine]", "Red", ",", 
          RowBox[{"MakePoly", "[", "a1p2", "]"}], ",", "\[IndentingNewLine]", 
          "Green", ",", 
          RowBox[{"MakePoly", "[", "a2p2", "]"}], ",", "\[IndentingNewLine]", 
          "Yellow", ",", 
          RowBox[{"MakePoly", "[", "a3p2", "]"}]}], "}"}], ",", 
        RowBox[{"AxesOrigin", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"0", ",", "0", ",", "0"}], "}"}]}], ",", 
        RowBox[{"Axes", "\[Rule]", "True"}], ",", 
        RowBox[{"Boxed", "\[Rule]", "False"}], ",", 
        RowBox[{"AxesLabel", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"x", ",", "y", ",", "z"}], "}"}]}], ",", 
        RowBox[{"ViewPoint", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"0", ",", "\[Infinity]", ",", "0"}], "}"}]}]}], "]"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{"Graphics3D", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"Blue", ",", 
          RowBox[{"MakePoly", "[", 
           RowBox[{"{", 
            RowBox[{"0", ",", "0", ",", "0"}], "}"}], "]"}], ",", 
          "\[IndentingNewLine]", "Red", ",", 
          RowBox[{"MakePoly", "[", "a1p2", "]"}], ",", "\[IndentingNewLine]", 
          "Green", ",", 
          RowBox[{"MakePoly", "[", "a2p2", "]"}], ",", "\[IndentingNewLine]", 
          "Yellow", ",", 
          RowBox[{"MakePoly", "[", "a3p2", "]"}]}], "}"}], ",", 
        RowBox[{"AxesOrigin", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"0", ",", "0", ",", "0"}], "}"}]}], ",", 
        RowBox[{"Axes", "\[Rule]", "True"}], ",", 
        RowBox[{"Boxed", "\[Rule]", "False"}], ",", 
        RowBox[{"AxesLabel", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"x", ",", "y", ",", "z"}], "}"}]}], ",", 
        RowBox[{"ViewPoint", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"0", ",", "0", ",", "\[Infinity]"}], "}"}]}]}], "]"}]}], 
     "}"}], "}"}], ",", 
   RowBox[{"ImageSize", "\[Rule]", "Large"}]}], "]"}]}], "Input", \
"PluginEmbeddedContent"],

Cell[BoxData[
 GraphicsBox[{{}, {InsetBox[
     Graphics3DBox[{
       {RGBColor[0, 0, 1], 
        GeometricTransformation3DBox[
         GeometricTransformation3DBox[
          GeometricTransformation3DBox[
           GeometricTransformation3DBox[
            GraphicsComplex3DBox[
             NCache[{{-Rational[2, 3]^Rational[1, 2], -
                Rational[2, 3]^Rational[1, 2], 0}, {-
                Rational[2, 3]^Rational[1, 2], 0, -3^Rational[-1, 2]}, {-
                Rational[2, 3]^Rational[1, 2], 0, 3^Rational[-1, 2]}, {-
                Rational[2, 3]^Rational[1, 2], Rational[2, 3]^Rational[1, 2], 
                0}, {0, -Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2]}, {
               0, -Rational[2, 3]^Rational[1, 2], 3^Rational[-1, 2]}, {
               0, 0, (-2) 3^Rational[-1, 2]}, {0, 0, 2 3^Rational[-1, 2]}, {
               0, Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2]}, {
               0, Rational[2, 3]^Rational[1, 2], 3^Rational[-1, 2]}, {
               Rational[2, 3]^Rational[1, 2], -Rational[2, 3]^Rational[1, 2], 
                0}, {Rational[2, 3]^Rational[1, 2], 0, -3^Rational[-1, 2]}, {
               Rational[2, 3]^Rational[1, 2], 0, 3^Rational[-1, 2]}, {
               Rational[2, 3]^Rational[1, 2], Rational[2, 3]^Rational[1, 2], 
                0}}, {{-0.816496580927726, -0.816496580927726, 
                0}, {-0.816496580927726, 
                0, -0.5773502691896258}, {-0.816496580927726, 0, 
                0.5773502691896258}, {-0.816496580927726, 0.816496580927726, 
                0}, {0, -0.816496580927726, -0.5773502691896258}, {
               0, -0.816496580927726, 0.5773502691896258}, {
               0, 0, -1.1547005383792517`}, {0, 0, 1.1547005383792517`}, {
               0, 0.816496580927726, -0.5773502691896258}, {
               0, 0.816496580927726, 0.5773502691896258}, {
               0.816496580927726, -0.816496580927726, 0}, {
               0.816496580927726, 0, -0.5773502691896258}, {
               0.816496580927726, 0, 0.5773502691896258}, {
               0.816496580927726, 0.816496580927726, 0}}], 
             Line3DBox[{{1, 2}, {1, 3}, {1, 5}, {1, 6}, {2, 4}, {2, 7}, {3, 
              4}, {3, 8}, {4, 9}, {4, 10}, {5, 7}, {5, 11}, {6, 8}, {6, 11}, {
              7, 9}, {7, 12}, {8, 10}, {8, 13}, {9, 14}, {10, 14}, {11, 12}, {
              11, 13}, {12, 14}, {13, 14}}]], 
            NCache[{{{Rational[1, 2] Rational[3, 2]^Rational[1, 2], 0, 0}, {
               0, Rational[1, 2] Rational[3, 2]^Rational[1, 2], 0}, {
               0, 0, Rational[1, 2] Rational[3, 2]^Rational[1, 2]}}, 
              Center}, {{{0.6123724356957945, 0, 0}, {
               0, 0.6123724356957945, 0}, {0, 0, 0.6123724356957945}}, 
              Center}]], {{0, 0, 1}, {0, 1, 0}, {-1, 0, 0}}], 
          NCache[{{Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2], 0}, {
            3^Rational[-1, 2], Rational[2, 3]^Rational[1, 2], 0}, {0, 0, 
            1}}, {{0.816496580927726, -0.5773502691896258, 0}, {
            0.5773502691896258, 0.816496580927726, 0}, {0, 0, 1}}]], {0, 0, 
         0}]}, 
       {RGBColor[1, 0, 0], 
        GeometricTransformation3DBox[
         GeometricTransformation3DBox[
          GeometricTransformation3DBox[
           GeometricTransformation3DBox[
            GraphicsComplex3DBox[
             NCache[{{-Rational[2, 3]^Rational[1, 2], -
                Rational[2, 3]^Rational[1, 2], 0}, {-
                Rational[2, 3]^Rational[1, 2], 0, -3^Rational[-1, 2]}, {-
                Rational[2, 3]^Rational[1, 2], 0, 3^Rational[-1, 2]}, {-
                Rational[2, 3]^Rational[1, 2], Rational[2, 3]^Rational[1, 2], 
                0}, {0, -Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2]}, {
               0, -Rational[2, 3]^Rational[1, 2], 3^Rational[-1, 2]}, {
               0, 0, (-2) 3^Rational[-1, 2]}, {0, 0, 2 3^Rational[-1, 2]}, {
               0, Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2]}, {
               0, Rational[2, 3]^Rational[1, 2], 3^Rational[-1, 2]}, {
               Rational[2, 3]^Rational[1, 2], -Rational[2, 3]^Rational[1, 2], 
                0}, {Rational[2, 3]^Rational[1, 2], 0, -3^Rational[-1, 2]}, {
               Rational[2, 3]^Rational[1, 2], 0, 3^Rational[-1, 2]}, {
               Rational[2, 3]^Rational[1, 2], Rational[2, 3]^Rational[1, 2], 
                0}}, {{-0.816496580927726, -0.816496580927726, 
                0}, {-0.816496580927726, 
                0, -0.5773502691896258}, {-0.816496580927726, 0, 
                0.5773502691896258}, {-0.816496580927726, 0.816496580927726, 
                0}, {0, -0.816496580927726, -0.5773502691896258}, {
               0, -0.816496580927726, 0.5773502691896258}, {
               0, 0, -1.1547005383792517`}, {0, 0, 1.1547005383792517`}, {
               0, 0.816496580927726, -0.5773502691896258}, {
               0, 0.816496580927726, 0.5773502691896258}, {
               0.816496580927726, -0.816496580927726, 0}, {
               0.816496580927726, 0, -0.5773502691896258}, {
               0.816496580927726, 0, 0.5773502691896258}, {
               0.816496580927726, 0.816496580927726, 0}}], 
             Line3DBox[{{1, 2}, {1, 3}, {1, 5}, {1, 6}, {2, 4}, {2, 7}, {3, 
              4}, {3, 8}, {4, 9}, {4, 10}, {5, 7}, {5, 11}, {6, 8}, {6, 11}, {
              7, 9}, {7, 12}, {8, 10}, {8, 13}, {9, 14}, {10, 14}, {11, 12}, {
              11, 13}, {12, 14}, {13, 14}}]], 
            NCache[{{{Rational[1, 2] Rational[3, 2]^Rational[1, 2], 0, 0}, {
               0, Rational[1, 2] Rational[3, 2]^Rational[1, 2], 0}, {
               0, 0, Rational[1, 2] Rational[3, 2]^Rational[1, 2]}}, 
              Center}, {{{0.6123724356957945, 0, 0}, {
               0, 0.6123724356957945, 0}, {0, 0, 0.6123724356957945}}, 
              Center}]], {{0, 0, 1}, {0, 1, 0}, {-1, 0, 0}}], 
          NCache[{{Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2], 0}, {
            3^Rational[-1, 2], Rational[2, 3]^Rational[1, 2], 0}, {0, 0, 
            1}}, {{0.816496580927726, -0.5773502691896258, 0}, {
            0.5773502691896258, 0.816496580927726, 0}, {0, 0, 1}}]], 
         NCache[{Rational[1, 2] 3^Rational[1, 2], 0, Rational[1, 2]}, {
          0.8660254037844386, 0, 0.5}]]}, 
       {RGBColor[0, 1, 0], 
        GeometricTransformation3DBox[
         GeometricTransformation3DBox[
          GeometricTransformation3DBox[
           GeometricTransformation3DBox[
            GraphicsComplex3DBox[
             NCache[{{-Rational[2, 3]^Rational[1, 2], -
                Rational[2, 3]^Rational[1, 2], 0}, {-
                Rational[2, 3]^Rational[1, 2], 0, -3^Rational[-1, 2]}, {-
                Rational[2, 3]^Rational[1, 2], 0, 3^Rational[-1, 2]}, {-
                Rational[2, 3]^Rational[1, 2], Rational[2, 3]^Rational[1, 2], 
                0}, {0, -Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2]}, {
               0, -Rational[2, 3]^Rational[1, 2], 3^Rational[-1, 2]}, {
               0, 0, (-2) 3^Rational[-1, 2]}, {0, 0, 2 3^Rational[-1, 2]}, {
               0, Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2]}, {
               0, Rational[2, 3]^Rational[1, 2], 3^Rational[-1, 2]}, {
               Rational[2, 3]^Rational[1, 2], -Rational[2, 3]^Rational[1, 2], 
                0}, {Rational[2, 3]^Rational[1, 2], 0, -3^Rational[-1, 2]}, {
               Rational[2, 3]^Rational[1, 2], 0, 3^Rational[-1, 2]}, {
               Rational[2, 3]^Rational[1, 2], Rational[2, 3]^Rational[1, 2], 
                0}}, {{-0.816496580927726, -0.816496580927726, 
                0}, {-0.816496580927726, 
                0, -0.5773502691896258}, {-0.816496580927726, 0, 
                0.5773502691896258}, {-0.816496580927726, 0.816496580927726, 
                0}, {0, -0.816496580927726, -0.5773502691896258}, {
               0, -0.816496580927726, 0.5773502691896258}, {
               0, 0, -1.1547005383792517`}, {0, 0, 1.1547005383792517`}, {
               0, 0.816496580927726, -0.5773502691896258}, {
               0, 0.816496580927726, 0.5773502691896258}, {
               0.816496580927726, -0.816496580927726, 0}, {
               0.816496580927726, 0, -0.5773502691896258}, {
               0.816496580927726, 0, 0.5773502691896258}, {
               0.816496580927726, 0.816496580927726, 0}}], 
             Line3DBox[{{1, 2}, {1, 3}, {1, 5}, {1, 6}, {2, 4}, {2, 7}, {3, 
              4}, {3, 8}, {4, 9}, {4, 10}, {5, 7}, {5, 11}, {6, 8}, {6, 11}, {
              7, 9}, {7, 12}, {8, 10}, {8, 13}, {9, 14}, {10, 14}, {11, 12}, {
              11, 13}, {12, 14}, {13, 14}}]], 
            NCache[{{{Rational[1, 2] Rational[3, 2]^Rational[1, 2], 0, 0}, {
               0, Rational[1, 2] Rational[3, 2]^Rational[1, 2], 0}, {
               0, 0, Rational[1, 2] Rational[3, 2]^Rational[1, 2]}}, 
              Center}, {{{0.6123724356957945, 0, 0}, {
               0, 0.6123724356957945, 0}, {0, 0, 0.6123724356957945}}, 
              Center}]], {{0, 0, 1}, {0, 1, 0}, {-1, 0, 0}}], 
          NCache[{{Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2], 0}, {
            3^Rational[-1, 2], Rational[2, 3]^Rational[1, 2], 0}, {0, 0, 
            1}}, {{0.816496580927726, -0.5773502691896258, 0}, {
            0.5773502691896258, 0.816496580927726, 0}, {0, 0, 1}}]], {0, 0, 
         1}]}, 
       {RGBColor[1, 1, 0], 
        GeometricTransformation3DBox[
         GeometricTransformation3DBox[
          GeometricTransformation3DBox[
           GeometricTransformation3DBox[
            GraphicsComplex3DBox[
             NCache[{{-Rational[2, 3]^Rational[1, 2], -
                Rational[2, 3]^Rational[1, 2], 0}, {-
                Rational[2, 3]^Rational[1, 2], 0, -3^Rational[-1, 2]}, {-
                Rational[2, 3]^Rational[1, 2], 0, 3^Rational[-1, 2]}, {-
                Rational[2, 3]^Rational[1, 2], Rational[2, 3]^Rational[1, 2], 
                0}, {0, -Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2]}, {
               0, -Rational[2, 3]^Rational[1, 2], 3^Rational[-1, 2]}, {
               0, 0, (-2) 3^Rational[-1, 2]}, {0, 0, 2 3^Rational[-1, 2]}, {
               0, Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2]}, {
               0, Rational[2, 3]^Rational[1, 2], 3^Rational[-1, 2]}, {
               Rational[2, 3]^Rational[1, 2], -Rational[2, 3]^Rational[1, 2], 
                0}, {Rational[2, 3]^Rational[1, 2], 0, -3^Rational[-1, 2]}, {
               Rational[2, 3]^Rational[1, 2], 0, 3^Rational[-1, 2]}, {
               Rational[2, 3]^Rational[1, 2], Rational[2, 3]^Rational[1, 2], 
                0}}, {{-0.816496580927726, -0.816496580927726, 
                0}, {-0.816496580927726, 
                0, -0.5773502691896258}, {-0.816496580927726, 0, 
                0.5773502691896258}, {-0.816496580927726, 0.816496580927726, 
                0}, {0, -0.816496580927726, -0.5773502691896258}, {
               0, -0.816496580927726, 0.5773502691896258}, {
               0, 0, -1.1547005383792517`}, {0, 0, 1.1547005383792517`}, {
               0, 0.816496580927726, -0.5773502691896258}, {
               0, 0.816496580927726, 0.5773502691896258}, {
               0.816496580927726, -0.816496580927726, 0}, {
               0.816496580927726, 0, -0.5773502691896258}, {
               0.816496580927726, 0, 0.5773502691896258}, {
               0.816496580927726, 0.816496580927726, 0}}], 
             Line3DBox[{{1, 2}, {1, 3}, {1, 5}, {1, 6}, {2, 4}, {2, 7}, {3, 
              4}, {3, 8}, {4, 9}, {4, 10}, {5, 7}, {5, 11}, {6, 8}, {6, 11}, {
              7, 9}, {7, 12}, {8, 10}, {8, 13}, {9, 14}, {10, 14}, {11, 12}, {
              11, 13}, {12, 14}, {13, 14}}]], 
            NCache[{{{Rational[1, 2] Rational[3, 2]^Rational[1, 2], 0, 0}, {
               0, Rational[1, 2] Rational[3, 2]^Rational[1, 2], 0}, {
               0, 0, Rational[1, 2] Rational[3, 2]^Rational[1, 2]}}, 
              Center}, {{{0.6123724356957945, 0, 0}, {
               0, 0.6123724356957945, 0}, {0, 0, 0.6123724356957945}}, 
              Center}]], {{0, 0, 1}, {0, 1, 0}, {-1, 0, 0}}], 
          NCache[{{Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2], 0}, {
            3^Rational[-1, 2], Rational[2, 3]^Rational[1, 2], 0}, {0, 0, 
            1}}, {{0.816496580927726, -0.5773502691896258, 0}, {
            0.5773502691896258, 0.816496580927726, 0}, {0, 0, 1}}]], 
         NCache[{Rational[1, 2] 3^Rational[-1, 2], Rational[2, 3]^
           Rational[1, 2], Rational[1, 2]}, {0.2886751345948129, 
          0.816496580927726, 0.5}]]}},
      Axes->True,
      AxesLabel->{
        FormBox["x", TraditionalForm], 
        FormBox["y", TraditionalForm], 
        FormBox["z", TraditionalForm]},
      AxesOrigin->{0, 0, 0},
      Boxed->False,
      ViewPoint->{
        DirectedInfinity[1], 0, 0}], {193.5, -189.}, 
     ImageScaled[{0.5, 0.5}], {360., 360.},
     ContentSelectable->True], InsetBox[
     Graphics3DBox[{
       {RGBColor[0, 0, 1], 
        GeometricTransformation3DBox[
         GeometricTransformation3DBox[
          GeometricTransformation3DBox[
           GeometricTransformation3DBox[
            GraphicsComplex3DBox[
             NCache[{{-Rational[2, 3]^Rational[1, 2], -
                Rational[2, 3]^Rational[1, 2], 0}, {-
                Rational[2, 3]^Rational[1, 2], 0, -3^Rational[-1, 2]}, {-
                Rational[2, 3]^Rational[1, 2], 0, 3^Rational[-1, 2]}, {-
                Rational[2, 3]^Rational[1, 2], Rational[2, 3]^Rational[1, 2], 
                0}, {0, -Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2]}, {
               0, -Rational[2, 3]^Rational[1, 2], 3^Rational[-1, 2]}, {
               0, 0, (-2) 3^Rational[-1, 2]}, {0, 0, 2 3^Rational[-1, 2]}, {
               0, Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2]}, {
               0, Rational[2, 3]^Rational[1, 2], 3^Rational[-1, 2]}, {
               Rational[2, 3]^Rational[1, 2], -Rational[2, 3]^Rational[1, 2], 
                0}, {Rational[2, 3]^Rational[1, 2], 0, -3^Rational[-1, 2]}, {
               Rational[2, 3]^Rational[1, 2], 0, 3^Rational[-1, 2]}, {
               Rational[2, 3]^Rational[1, 2], Rational[2, 3]^Rational[1, 2], 
                0}}, {{-0.816496580927726, -0.816496580927726, 
                0}, {-0.816496580927726, 
                0, -0.5773502691896258}, {-0.816496580927726, 0, 
                0.5773502691896258}, {-0.816496580927726, 0.816496580927726, 
                0}, {0, -0.816496580927726, -0.5773502691896258}, {
               0, -0.816496580927726, 0.5773502691896258}, {
               0, 0, -1.1547005383792517`}, {0, 0, 1.1547005383792517`}, {
               0, 0.816496580927726, -0.5773502691896258}, {
               0, 0.816496580927726, 0.5773502691896258}, {
               0.816496580927726, -0.816496580927726, 0}, {
               0.816496580927726, 0, -0.5773502691896258}, {
               0.816496580927726, 0, 0.5773502691896258}, {
               0.816496580927726, 0.816496580927726, 0}}], 
             Line3DBox[{{1, 2}, {1, 3}, {1, 5}, {1, 6}, {2, 4}, {2, 7}, {3, 
              4}, {3, 8}, {4, 9}, {4, 10}, {5, 7}, {5, 11}, {6, 8}, {6, 11}, {
              7, 9}, {7, 12}, {8, 10}, {8, 13}, {9, 14}, {10, 14}, {11, 12}, {
              11, 13}, {12, 14}, {13, 14}}]], 
            NCache[{{{Rational[1, 2] Rational[3, 2]^Rational[1, 2], 0, 0}, {
               0, Rational[1, 2] Rational[3, 2]^Rational[1, 2], 0}, {
               0, 0, Rational[1, 2] Rational[3, 2]^Rational[1, 2]}}, 
              Center}, {{{0.6123724356957945, 0, 0}, {
               0, 0.6123724356957945, 0}, {0, 0, 0.6123724356957945}}, 
              Center}]], {{0, 0, 1}, {0, 1, 0}, {-1, 0, 0}}], 
          NCache[{{Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2], 0}, {
            3^Rational[-1, 2], Rational[2, 3]^Rational[1, 2], 0}, {0, 0, 
            1}}, {{0.816496580927726, -0.5773502691896258, 0}, {
            0.5773502691896258, 0.816496580927726, 0}, {0, 0, 1}}]], {0, 0, 
         0}]}, 
       {RGBColor[1, 0, 0], 
        GeometricTransformation3DBox[
         GeometricTransformation3DBox[
          GeometricTransformation3DBox[
           GeometricTransformation3DBox[
            GraphicsComplex3DBox[
             NCache[{{-Rational[2, 3]^Rational[1, 2], -
                Rational[2, 3]^Rational[1, 2], 0}, {-
                Rational[2, 3]^Rational[1, 2], 0, -3^Rational[-1, 2]}, {-
                Rational[2, 3]^Rational[1, 2], 0, 3^Rational[-1, 2]}, {-
                Rational[2, 3]^Rational[1, 2], Rational[2, 3]^Rational[1, 2], 
                0}, {0, -Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2]}, {
               0, -Rational[2, 3]^Rational[1, 2], 3^Rational[-1, 2]}, {
               0, 0, (-2) 3^Rational[-1, 2]}, {0, 0, 2 3^Rational[-1, 2]}, {
               0, Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2]}, {
               0, Rational[2, 3]^Rational[1, 2], 3^Rational[-1, 2]}, {
               Rational[2, 3]^Rational[1, 2], -Rational[2, 3]^Rational[1, 2], 
                0}, {Rational[2, 3]^Rational[1, 2], 0, -3^Rational[-1, 2]}, {
               Rational[2, 3]^Rational[1, 2], 0, 3^Rational[-1, 2]}, {
               Rational[2, 3]^Rational[1, 2], Rational[2, 3]^Rational[1, 2], 
                0}}, {{-0.816496580927726, -0.816496580927726, 
                0}, {-0.816496580927726, 
                0, -0.5773502691896258}, {-0.816496580927726, 0, 
                0.5773502691896258}, {-0.816496580927726, 0.816496580927726, 
                0}, {0, -0.816496580927726, -0.5773502691896258}, {
               0, -0.816496580927726, 0.5773502691896258}, {
               0, 0, -1.1547005383792517`}, {0, 0, 1.1547005383792517`}, {
               0, 0.816496580927726, -0.5773502691896258}, {
               0, 0.816496580927726, 0.5773502691896258}, {
               0.816496580927726, -0.816496580927726, 0}, {
               0.816496580927726, 0, -0.5773502691896258}, {
               0.816496580927726, 0, 0.5773502691896258}, {
               0.816496580927726, 0.816496580927726, 0}}], 
             Line3DBox[{{1, 2}, {1, 3}, {1, 5}, {1, 6}, {2, 4}, {2, 7}, {3, 
              4}, {3, 8}, {4, 9}, {4, 10}, {5, 7}, {5, 11}, {6, 8}, {6, 11}, {
              7, 9}, {7, 12}, {8, 10}, {8, 13}, {9, 14}, {10, 14}, {11, 12}, {
              11, 13}, {12, 14}, {13, 14}}]], 
            NCache[{{{Rational[1, 2] Rational[3, 2]^Rational[1, 2], 0, 0}, {
               0, Rational[1, 2] Rational[3, 2]^Rational[1, 2], 0}, {
               0, 0, Rational[1, 2] Rational[3, 2]^Rational[1, 2]}}, 
              Center}, {{{0.6123724356957945, 0, 0}, {
               0, 0.6123724356957945, 0}, {0, 0, 0.6123724356957945}}, 
              Center}]], {{0, 0, 1}, {0, 1, 0}, {-1, 0, 0}}], 
          NCache[{{Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2], 0}, {
            3^Rational[-1, 2], Rational[2, 3]^Rational[1, 2], 0}, {0, 0, 
            1}}, {{0.816496580927726, -0.5773502691896258, 0}, {
            0.5773502691896258, 0.816496580927726, 0}, {0, 0, 1}}]], 
         NCache[{Rational[1, 2] 3^Rational[1, 2], 0, Rational[1, 2]}, {
          0.8660254037844386, 0, 0.5}]]}, 
       {RGBColor[0, 1, 0], 
        GeometricTransformation3DBox[
         GeometricTransformation3DBox[
          GeometricTransformation3DBox[
           GeometricTransformation3DBox[
            GraphicsComplex3DBox[
             NCache[{{-Rational[2, 3]^Rational[1, 2], -
                Rational[2, 3]^Rational[1, 2], 0}, {-
                Rational[2, 3]^Rational[1, 2], 0, -3^Rational[-1, 2]}, {-
                Rational[2, 3]^Rational[1, 2], 0, 3^Rational[-1, 2]}, {-
                Rational[2, 3]^Rational[1, 2], Rational[2, 3]^Rational[1, 2], 
                0}, {0, -Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2]}, {
               0, -Rational[2, 3]^Rational[1, 2], 3^Rational[-1, 2]}, {
               0, 0, (-2) 3^Rational[-1, 2]}, {0, 0, 2 3^Rational[-1, 2]}, {
               0, Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2]}, {
               0, Rational[2, 3]^Rational[1, 2], 3^Rational[-1, 2]}, {
               Rational[2, 3]^Rational[1, 2], -Rational[2, 3]^Rational[1, 2], 
                0}, {Rational[2, 3]^Rational[1, 2], 0, -3^Rational[-1, 2]}, {
               Rational[2, 3]^Rational[1, 2], 0, 3^Rational[-1, 2]}, {
               Rational[2, 3]^Rational[1, 2], Rational[2, 3]^Rational[1, 2], 
                0}}, {{-0.816496580927726, -0.816496580927726, 
                0}, {-0.816496580927726, 
                0, -0.5773502691896258}, {-0.816496580927726, 0, 
                0.5773502691896258}, {-0.816496580927726, 0.816496580927726, 
                0}, {0, -0.816496580927726, -0.5773502691896258}, {
               0, -0.816496580927726, 0.5773502691896258}, {
               0, 0, -1.1547005383792517`}, {0, 0, 1.1547005383792517`}, {
               0, 0.816496580927726, -0.5773502691896258}, {
               0, 0.816496580927726, 0.5773502691896258}, {
               0.816496580927726, -0.816496580927726, 0}, {
               0.816496580927726, 0, -0.5773502691896258}, {
               0.816496580927726, 0, 0.5773502691896258}, {
               0.816496580927726, 0.816496580927726, 0}}], 
             Line3DBox[{{1, 2}, {1, 3}, {1, 5}, {1, 6}, {2, 4}, {2, 7}, {3, 
              4}, {3, 8}, {4, 9}, {4, 10}, {5, 7}, {5, 11}, {6, 8}, {6, 11}, {
              7, 9}, {7, 12}, {8, 10}, {8, 13}, {9, 14}, {10, 14}, {11, 12}, {
              11, 13}, {12, 14}, {13, 14}}]], 
            NCache[{{{Rational[1, 2] Rational[3, 2]^Rational[1, 2], 0, 0}, {
               0, Rational[1, 2] Rational[3, 2]^Rational[1, 2], 0}, {
               0, 0, Rational[1, 2] Rational[3, 2]^Rational[1, 2]}}, 
              Center}, {{{0.6123724356957945, 0, 0}, {
               0, 0.6123724356957945, 0}, {0, 0, 0.6123724356957945}}, 
              Center}]], {{0, 0, 1}, {0, 1, 0}, {-1, 0, 0}}], 
          NCache[{{Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2], 0}, {
            3^Rational[-1, 2], Rational[2, 3]^Rational[1, 2], 0}, {0, 0, 
            1}}, {{0.816496580927726, -0.5773502691896258, 0}, {
            0.5773502691896258, 0.816496580927726, 0}, {0, 0, 1}}]], {0, 0, 
         1}]}, 
       {RGBColor[1, 1, 0], 
        GeometricTransformation3DBox[
         GeometricTransformation3DBox[
          GeometricTransformation3DBox[
           GeometricTransformation3DBox[
            GraphicsComplex3DBox[
             NCache[{{-Rational[2, 3]^Rational[1, 2], -
                Rational[2, 3]^Rational[1, 2], 0}, {-
                Rational[2, 3]^Rational[1, 2], 0, -3^Rational[-1, 2]}, {-
                Rational[2, 3]^Rational[1, 2], 0, 3^Rational[-1, 2]}, {-
                Rational[2, 3]^Rational[1, 2], Rational[2, 3]^Rational[1, 2], 
                0}, {0, -Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2]}, {
               0, -Rational[2, 3]^Rational[1, 2], 3^Rational[-1, 2]}, {
               0, 0, (-2) 3^Rational[-1, 2]}, {0, 0, 2 3^Rational[-1, 2]}, {
               0, Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2]}, {
               0, Rational[2, 3]^Rational[1, 2], 3^Rational[-1, 2]}, {
               Rational[2, 3]^Rational[1, 2], -Rational[2, 3]^Rational[1, 2], 
                0}, {Rational[2, 3]^Rational[1, 2], 0, -3^Rational[-1, 2]}, {
               Rational[2, 3]^Rational[1, 2], 0, 3^Rational[-1, 2]}, {
               Rational[2, 3]^Rational[1, 2], Rational[2, 3]^Rational[1, 2], 
                0}}, {{-0.816496580927726, -0.816496580927726, 
                0}, {-0.816496580927726, 
                0, -0.5773502691896258}, {-0.816496580927726, 0, 
                0.5773502691896258}, {-0.816496580927726, 0.816496580927726, 
                0}, {0, -0.816496580927726, -0.5773502691896258}, {
               0, -0.816496580927726, 0.5773502691896258}, {
               0, 0, -1.1547005383792517`}, {0, 0, 1.1547005383792517`}, {
               0, 0.816496580927726, -0.5773502691896258}, {
               0, 0.816496580927726, 0.5773502691896258}, {
               0.816496580927726, -0.816496580927726, 0}, {
               0.816496580927726, 0, -0.5773502691896258}, {
               0.816496580927726, 0, 0.5773502691896258}, {
               0.816496580927726, 0.816496580927726, 0}}], 
             Line3DBox[{{1, 2}, {1, 3}, {1, 5}, {1, 6}, {2, 4}, {2, 7}, {3, 
              4}, {3, 8}, {4, 9}, {4, 10}, {5, 7}, {5, 11}, {6, 8}, {6, 11}, {
              7, 9}, {7, 12}, {8, 10}, {8, 13}, {9, 14}, {10, 14}, {11, 12}, {
              11, 13}, {12, 14}, {13, 14}}]], 
            NCache[{{{Rational[1, 2] Rational[3, 2]^Rational[1, 2], 0, 0}, {
               0, Rational[1, 2] Rational[3, 2]^Rational[1, 2], 0}, {
               0, 0, Rational[1, 2] Rational[3, 2]^Rational[1, 2]}}, 
              Center}, {{{0.6123724356957945, 0, 0}, {
               0, 0.6123724356957945, 0}, {0, 0, 0.6123724356957945}}, 
              Center}]], {{0, 0, 1}, {0, 1, 0}, {-1, 0, 0}}], 
          NCache[{{Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2], 0}, {
            3^Rational[-1, 2], Rational[2, 3]^Rational[1, 2], 0}, {0, 0, 
            1}}, {{0.816496580927726, -0.5773502691896258, 0}, {
            0.5773502691896258, 0.816496580927726, 0}, {0, 0, 1}}]], 
         NCache[{Rational[1, 2] 3^Rational[-1, 2], Rational[2, 3]^
           Rational[1, 2], Rational[1, 2]}, {0.2886751345948129, 
          0.816496580927726, 0.5}]]}},
      Axes->True,
      AxesLabel->{
        FormBox["x", TraditionalForm], 
        FormBox["y", TraditionalForm], 
        FormBox["z", TraditionalForm]},
      AxesOrigin->{0, 0, 0},
      Boxed->False,
      ViewPoint->{0, 
        DirectedInfinity[1], 0}], {580.5, -189.}, ImageScaled[{0.5, 0.5}], {360., 360.},
     ContentSelectable->True], InsetBox[
     Graphics3DBox[{
       {RGBColor[0, 0, 1], 
        GeometricTransformation3DBox[
         GeometricTransformation3DBox[
          GeometricTransformation3DBox[
           GeometricTransformation3DBox[
            GraphicsComplex3DBox[
             NCache[{{-Rational[2, 3]^Rational[1, 2], -
                Rational[2, 3]^Rational[1, 2], 0}, {-
                Rational[2, 3]^Rational[1, 2], 0, -3^Rational[-1, 2]}, {-
                Rational[2, 3]^Rational[1, 2], 0, 3^Rational[-1, 2]}, {-
                Rational[2, 3]^Rational[1, 2], Rational[2, 3]^Rational[1, 2], 
                0}, {0, -Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2]}, {
               0, -Rational[2, 3]^Rational[1, 2], 3^Rational[-1, 2]}, {
               0, 0, (-2) 3^Rational[-1, 2]}, {0, 0, 2 3^Rational[-1, 2]}, {
               0, Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2]}, {
               0, Rational[2, 3]^Rational[1, 2], 3^Rational[-1, 2]}, {
               Rational[2, 3]^Rational[1, 2], -Rational[2, 3]^Rational[1, 2], 
                0}, {Rational[2, 3]^Rational[1, 2], 0, -3^Rational[-1, 2]}, {
               Rational[2, 3]^Rational[1, 2], 0, 3^Rational[-1, 2]}, {
               Rational[2, 3]^Rational[1, 2], Rational[2, 3]^Rational[1, 2], 
                0}}, {{-0.816496580927726, -0.816496580927726, 
                0}, {-0.816496580927726, 
                0, -0.5773502691896258}, {-0.816496580927726, 0, 
                0.5773502691896258}, {-0.816496580927726, 0.816496580927726, 
                0}, {0, -0.816496580927726, -0.5773502691896258}, {
               0, -0.816496580927726, 0.5773502691896258}, {
               0, 0, -1.1547005383792517`}, {0, 0, 1.1547005383792517`}, {
               0, 0.816496580927726, -0.5773502691896258}, {
               0, 0.816496580927726, 0.5773502691896258}, {
               0.816496580927726, -0.816496580927726, 0}, {
               0.816496580927726, 0, -0.5773502691896258}, {
               0.816496580927726, 0, 0.5773502691896258}, {
               0.816496580927726, 0.816496580927726, 0}}], 
             Line3DBox[{{1, 2}, {1, 3}, {1, 5}, {1, 6}, {2, 4}, {2, 7}, {3, 
              4}, {3, 8}, {4, 9}, {4, 10}, {5, 7}, {5, 11}, {6, 8}, {6, 11}, {
              7, 9}, {7, 12}, {8, 10}, {8, 13}, {9, 14}, {10, 14}, {11, 12}, {
              11, 13}, {12, 14}, {13, 14}}]], 
            NCache[{{{Rational[1, 2] Rational[3, 2]^Rational[1, 2], 0, 0}, {
               0, Rational[1, 2] Rational[3, 2]^Rational[1, 2], 0}, {
               0, 0, Rational[1, 2] Rational[3, 2]^Rational[1, 2]}}, 
              Center}, {{{0.6123724356957945, 0, 0}, {
               0, 0.6123724356957945, 0}, {0, 0, 0.6123724356957945}}, 
              Center}]], {{0, 0, 1}, {0, 1, 0}, {-1, 0, 0}}], 
          NCache[{{Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2], 0}, {
            3^Rational[-1, 2], Rational[2, 3]^Rational[1, 2], 0}, {0, 0, 
            1}}, {{0.816496580927726, -0.5773502691896258, 0}, {
            0.5773502691896258, 0.816496580927726, 0}, {0, 0, 1}}]], {0, 0, 
         0}]}, 
       {RGBColor[1, 0, 0], 
        GeometricTransformation3DBox[
         GeometricTransformation3DBox[
          GeometricTransformation3DBox[
           GeometricTransformation3DBox[
            GraphicsComplex3DBox[
             NCache[{{-Rational[2, 3]^Rational[1, 2], -
                Rational[2, 3]^Rational[1, 2], 0}, {-
                Rational[2, 3]^Rational[1, 2], 0, -3^Rational[-1, 2]}, {-
                Rational[2, 3]^Rational[1, 2], 0, 3^Rational[-1, 2]}, {-
                Rational[2, 3]^Rational[1, 2], Rational[2, 3]^Rational[1, 2], 
                0}, {0, -Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2]}, {
               0, -Rational[2, 3]^Rational[1, 2], 3^Rational[-1, 2]}, {
               0, 0, (-2) 3^Rational[-1, 2]}, {0, 0, 2 3^Rational[-1, 2]}, {
               0, Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2]}, {
               0, Rational[2, 3]^Rational[1, 2], 3^Rational[-1, 2]}, {
               Rational[2, 3]^Rational[1, 2], -Rational[2, 3]^Rational[1, 2], 
                0}, {Rational[2, 3]^Rational[1, 2], 0, -3^Rational[-1, 2]}, {
               Rational[2, 3]^Rational[1, 2], 0, 3^Rational[-1, 2]}, {
               Rational[2, 3]^Rational[1, 2], Rational[2, 3]^Rational[1, 2], 
                0}}, {{-0.816496580927726, -0.816496580927726, 
                0}, {-0.816496580927726, 
                0, -0.5773502691896258}, {-0.816496580927726, 0, 
                0.5773502691896258}, {-0.816496580927726, 0.816496580927726, 
                0}, {0, -0.816496580927726, -0.5773502691896258}, {
               0, -0.816496580927726, 0.5773502691896258}, {
               0, 0, -1.1547005383792517`}, {0, 0, 1.1547005383792517`}, {
               0, 0.816496580927726, -0.5773502691896258}, {
               0, 0.816496580927726, 0.5773502691896258}, {
               0.816496580927726, -0.816496580927726, 0}, {
               0.816496580927726, 0, -0.5773502691896258}, {
               0.816496580927726, 0, 0.5773502691896258}, {
               0.816496580927726, 0.816496580927726, 0}}], 
             Line3DBox[{{1, 2}, {1, 3}, {1, 5}, {1, 6}, {2, 4}, {2, 7}, {3, 
              4}, {3, 8}, {4, 9}, {4, 10}, {5, 7}, {5, 11}, {6, 8}, {6, 11}, {
              7, 9}, {7, 12}, {8, 10}, {8, 13}, {9, 14}, {10, 14}, {11, 12}, {
              11, 13}, {12, 14}, {13, 14}}]], 
            NCache[{{{Rational[1, 2] Rational[3, 2]^Rational[1, 2], 0, 0}, {
               0, Rational[1, 2] Rational[3, 2]^Rational[1, 2], 0}, {
               0, 0, Rational[1, 2] Rational[3, 2]^Rational[1, 2]}}, 
              Center}, {{{0.6123724356957945, 0, 0}, {
               0, 0.6123724356957945, 0}, {0, 0, 0.6123724356957945}}, 
              Center}]], {{0, 0, 1}, {0, 1, 0}, {-1, 0, 0}}], 
          NCache[{{Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2], 0}, {
            3^Rational[-1, 2], Rational[2, 3]^Rational[1, 2], 0}, {0, 0, 
            1}}, {{0.816496580927726, -0.5773502691896258, 0}, {
            0.5773502691896258, 0.816496580927726, 0}, {0, 0, 1}}]], 
         NCache[{Rational[1, 2] 3^Rational[1, 2], 0, Rational[1, 2]}, {
          0.8660254037844386, 0, 0.5}]]}, 
       {RGBColor[0, 1, 0], 
        GeometricTransformation3DBox[
         GeometricTransformation3DBox[
          GeometricTransformation3DBox[
           GeometricTransformation3DBox[
            GraphicsComplex3DBox[
             NCache[{{-Rational[2, 3]^Rational[1, 2], -
                Rational[2, 3]^Rational[1, 2], 0}, {-
                Rational[2, 3]^Rational[1, 2], 0, -3^Rational[-1, 2]}, {-
                Rational[2, 3]^Rational[1, 2], 0, 3^Rational[-1, 2]}, {-
                Rational[2, 3]^Rational[1, 2], Rational[2, 3]^Rational[1, 2], 
                0}, {0, -Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2]}, {
               0, -Rational[2, 3]^Rational[1, 2], 3^Rational[-1, 2]}, {
               0, 0, (-2) 3^Rational[-1, 2]}, {0, 0, 2 3^Rational[-1, 2]}, {
               0, Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2]}, {
               0, Rational[2, 3]^Rational[1, 2], 3^Rational[-1, 2]}, {
               Rational[2, 3]^Rational[1, 2], -Rational[2, 3]^Rational[1, 2], 
                0}, {Rational[2, 3]^Rational[1, 2], 0, -3^Rational[-1, 2]}, {
               Rational[2, 3]^Rational[1, 2], 0, 3^Rational[-1, 2]}, {
               Rational[2, 3]^Rational[1, 2], Rational[2, 3]^Rational[1, 2], 
                0}}, {{-0.816496580927726, -0.816496580927726, 
                0}, {-0.816496580927726, 
                0, -0.5773502691896258}, {-0.816496580927726, 0, 
                0.5773502691896258}, {-0.816496580927726, 0.816496580927726, 
                0}, {0, -0.816496580927726, -0.5773502691896258}, {
               0, -0.816496580927726, 0.5773502691896258}, {
               0, 0, -1.1547005383792517`}, {0, 0, 1.1547005383792517`}, {
               0, 0.816496580927726, -0.5773502691896258}, {
               0, 0.816496580927726, 0.5773502691896258}, {
               0.816496580927726, -0.816496580927726, 0}, {
               0.816496580927726, 0, -0.5773502691896258}, {
               0.816496580927726, 0, 0.5773502691896258}, {
               0.816496580927726, 0.816496580927726, 0}}], 
             Line3DBox[{{1, 2}, {1, 3}, {1, 5}, {1, 6}, {2, 4}, {2, 7}, {3, 
              4}, {3, 8}, {4, 9}, {4, 10}, {5, 7}, {5, 11}, {6, 8}, {6, 11}, {
              7, 9}, {7, 12}, {8, 10}, {8, 13}, {9, 14}, {10, 14}, {11, 12}, {
              11, 13}, {12, 14}, {13, 14}}]], 
            NCache[{{{Rational[1, 2] Rational[3, 2]^Rational[1, 2], 0, 0}, {
               0, Rational[1, 2] Rational[3, 2]^Rational[1, 2], 0}, {
               0, 0, Rational[1, 2] Rational[3, 2]^Rational[1, 2]}}, 
              Center}, {{{0.6123724356957945, 0, 0}, {
               0, 0.6123724356957945, 0}, {0, 0, 0.6123724356957945}}, 
              Center}]], {{0, 0, 1}, {0, 1, 0}, {-1, 0, 0}}], 
          NCache[{{Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2], 0}, {
            3^Rational[-1, 2], Rational[2, 3]^Rational[1, 2], 0}, {0, 0, 
            1}}, {{0.816496580927726, -0.5773502691896258, 0}, {
            0.5773502691896258, 0.816496580927726, 0}, {0, 0, 1}}]], {0, 0, 
         1}]}, 
       {RGBColor[1, 1, 0], 
        GeometricTransformation3DBox[
         GeometricTransformation3DBox[
          GeometricTransformation3DBox[
           GeometricTransformation3DBox[
            GraphicsComplex3DBox[
             NCache[{{-Rational[2, 3]^Rational[1, 2], -
                Rational[2, 3]^Rational[1, 2], 0}, {-
                Rational[2, 3]^Rational[1, 2], 0, -3^Rational[-1, 2]}, {-
                Rational[2, 3]^Rational[1, 2], 0, 3^Rational[-1, 2]}, {-
                Rational[2, 3]^Rational[1, 2], Rational[2, 3]^Rational[1, 2], 
                0}, {0, -Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2]}, {
               0, -Rational[2, 3]^Rational[1, 2], 3^Rational[-1, 2]}, {
               0, 0, (-2) 3^Rational[-1, 2]}, {0, 0, 2 3^Rational[-1, 2]}, {
               0, Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2]}, {
               0, Rational[2, 3]^Rational[1, 2], 3^Rational[-1, 2]}, {
               Rational[2, 3]^Rational[1, 2], -Rational[2, 3]^Rational[1, 2], 
                0}, {Rational[2, 3]^Rational[1, 2], 0, -3^Rational[-1, 2]}, {
               Rational[2, 3]^Rational[1, 2], 0, 3^Rational[-1, 2]}, {
               Rational[2, 3]^Rational[1, 2], Rational[2, 3]^Rational[1, 2], 
                0}}, {{-0.816496580927726, -0.816496580927726, 
                0}, {-0.816496580927726, 
                0, -0.5773502691896258}, {-0.816496580927726, 0, 
                0.5773502691896258}, {-0.816496580927726, 0.816496580927726, 
                0}, {0, -0.816496580927726, -0.5773502691896258}, {
               0, -0.816496580927726, 0.5773502691896258}, {
               0, 0, -1.1547005383792517`}, {0, 0, 1.1547005383792517`}, {
               0, 0.816496580927726, -0.5773502691896258}, {
               0, 0.816496580927726, 0.5773502691896258}, {
               0.816496580927726, -0.816496580927726, 0}, {
               0.816496580927726, 0, -0.5773502691896258}, {
               0.816496580927726, 0, 0.5773502691896258}, {
               0.816496580927726, 0.816496580927726, 0}}], 
             Line3DBox[{{1, 2}, {1, 3}, {1, 5}, {1, 6}, {2, 4}, {2, 7}, {3, 
              4}, {3, 8}, {4, 9}, {4, 10}, {5, 7}, {5, 11}, {6, 8}, {6, 11}, {
              7, 9}, {7, 12}, {8, 10}, {8, 13}, {9, 14}, {10, 14}, {11, 12}, {
              11, 13}, {12, 14}, {13, 14}}]], 
            NCache[{{{Rational[1, 2] Rational[3, 2]^Rational[1, 2], 0, 0}, {
               0, Rational[1, 2] Rational[3, 2]^Rational[1, 2], 0}, {
               0, 0, Rational[1, 2] Rational[3, 2]^Rational[1, 2]}}, 
              Center}, {{{0.6123724356957945, 0, 0}, {
               0, 0.6123724356957945, 0}, {0, 0, 0.6123724356957945}}, 
              Center}]], {{0, 0, 1}, {0, 1, 0}, {-1, 0, 0}}], 
          NCache[{{Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2], 0}, {
            3^Rational[-1, 2], Rational[2, 3]^Rational[1, 2], 0}, {0, 0, 
            1}}, {{0.816496580927726, -0.5773502691896258, 0}, {
            0.5773502691896258, 0.816496580927726, 0}, {0, 0, 1}}]], 
         NCache[{Rational[1, 2] 3^Rational[-1, 2], Rational[2, 3]^
           Rational[1, 2], Rational[1, 2]}, {0.2886751345948129, 
          0.816496580927726, 0.5}]]}},
      Axes->True,
      AxesLabel->{
        FormBox["x", TraditionalForm], 
        FormBox["y", TraditionalForm], 
        FormBox["z", TraditionalForm]},
      AxesOrigin->{0, 0, 0},
      Boxed->False,
      ViewPoint->{0, 0, 
        DirectedInfinity[1]}], {967.5, -189.}, ImageScaled[{0.5, 0.5}], {360., 360.},
     ContentSelectable->True]}, {}},
  ContentSelectable->True,
  ImageSize->Large,
  PlotRangePadding->{6, 5}]], "Output", "PluginEmbeddedContent"]
}, Open  ]],

Cell["And we check the tiling in 3D to make sure it looks good.", "Text", "PluginEmbeddedContent"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"MakePolyFace", "[", "transVec_", "]"}], ":=", 
   RowBox[{"Translate", "[", 
    RowBox[{
     RowBox[{"GeometricTransformation", "[", 
      RowBox[{
       RowBox[{"GeometricTransformation", "[", 
        RowBox[{
         RowBox[{"Scale", "[", 
          RowBox[{
           RowBox[{"PolyhedronData", "[", 
            RowBox[{"\"\<RhombicDodecahedron\>\"", ",", "\"\<Faces\>\""}], 
            "]"}], ",", 
           RowBox[{
            FractionBox["1", "2"], 
            SqrtBox[
             FractionBox["3", "2"]]}]}], "]"}], ",", 
         RowBox[{"RotationMatrix", "[", 
          RowBox[{"rotationAngle", ",", "rotationVector"}], "]"}]}], "]"}], 
       ",", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{
         RowBox[{"ArcCos", "[", 
          SqrtBox[
           FractionBox["2", "3"]], "]"}], ",", 
         RowBox[{"{", 
          RowBox[{"0", ",", "0", ",", "1"}], "}"}]}], "]"}]}], "]"}], ",", 
     "transVec"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{"Graphics3D", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"Blue", ",", 
     RowBox[{"MakePolyFace", "[", 
      RowBox[{"{", 
       RowBox[{"0", ",", "0", ",", "0"}], "}"}], "]"}], ",", 
     "\[IndentingNewLine]", "Red", ",", 
     RowBox[{"MakePolyFace", "[", "a1p2", "]"}], ",", "\[IndentingNewLine]", 
     "Green", ",", 
     RowBox[{"MakePolyFace", "[", "a2p2", "]"}], ",", "\[IndentingNewLine]", 
     "Yellow", ",", 
     RowBox[{"MakePolyFace", "[", "a3p2", "]"}]}], "}"}], ",", 
   RowBox[{"AxesOrigin", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"0", ",", "0", ",", "0"}], "}"}]}], ",", 
   RowBox[{"Axes", "\[Rule]", "True"}], ",", 
   RowBox[{"Boxed", "\[Rule]", "False"}], ",", 
   RowBox[{"AxesLabel", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"x", ",", "y", ",", "z"}], "}"}]}]}], "]"}]}], "Input", \
"PluginEmbeddedContent"],

Cell[BoxData[
 Graphics3DBox[{
   {RGBColor[0, 0, 1], 
    GeometricTransformation3DBox[
     GeometricTransformation3DBox[
      GeometricTransformation3DBox[
       GeometricTransformation3DBox[
        GraphicsComplex3DBox[
         NCache[{{-Rational[2, 3]^Rational[1, 2], -
            Rational[2, 3]^Rational[1, 2], 0}, {-
            Rational[2, 3]^Rational[1, 2], 0, -3^Rational[-1, 2]}, {-
            Rational[2, 3]^Rational[1, 2], 0, 3^Rational[-1, 2]}, {-
            Rational[2, 3]^Rational[1, 2], Rational[2, 3]^Rational[1, 2], 
            0}, {0, -Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2]}, {
           0, -Rational[2, 3]^Rational[1, 2], 3^Rational[-1, 2]}, {
           0, 0, (-2) 3^Rational[-1, 2]}, {0, 0, 2 3^Rational[-1, 2]}, {
           0, Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2]}, {
           0, Rational[2, 3]^Rational[1, 2], 3^Rational[-1, 2]}, {
           Rational[2, 3]^Rational[1, 2], -Rational[2, 3]^Rational[1, 2], 
            0}, {Rational[2, 3]^Rational[1, 2], 0, -3^Rational[-1, 2]}, {
           Rational[2, 3]^Rational[1, 2], 0, 3^Rational[-1, 2]}, {
           Rational[2, 3]^Rational[1, 2], Rational[2, 3]^Rational[1, 2], 
            0}}, {{-0.816496580927726, -0.816496580927726, 
            0}, {-0.816496580927726, 
            0, -0.5773502691896258}, {-0.816496580927726, 0, 
            0.5773502691896258}, {-0.816496580927726, 0.816496580927726, 0}, {
           0, -0.816496580927726, -0.5773502691896258}, {
           0, -0.816496580927726, 0.5773502691896258}, {
           0, 0, -1.1547005383792517`}, {0, 0, 1.1547005383792517`}, {
           0, 0.816496580927726, -0.5773502691896258}, {
           0, 0.816496580927726, 0.5773502691896258}, {
           0.816496580927726, -0.816496580927726, 0}, {
           0.816496580927726, 0, -0.5773502691896258}, {
           0.816496580927726, 0, 0.5773502691896258}, {
           0.816496580927726, 0.816496580927726, 0}}], 
         Polygon3DBox[{{2, 1, 3, 4}, {1, 2, 7, 5}, {6, 8, 3, 1}, {2, 4, 9, 
          7}, {8, 10, 4, 3}, {11, 6, 1, 5}, {9, 4, 10, 14}, {5, 7, 12, 11}, {
          11, 13, 8, 6}, {7, 9, 14, 12}, {13, 14, 10, 8}, {14, 13, 11, 12}}]],
         NCache[{{{Rational[1, 2] Rational[3, 2]^Rational[1, 2], 0, 0}, {
           0, Rational[1, 2] Rational[3, 2]^Rational[1, 2], 0}, {
           0, 0, Rational[1, 2] Rational[3, 2]^Rational[1, 2]}}, 
          Center}, {{{0.6123724356957945, 0, 0}, {0, 0.6123724356957945, 0}, {
           0, 0, 0.6123724356957945}}, Center}]], {{0, 0, 1}, {0, 1, 0}, {-1, 
       0, 0}}], 
      NCache[{{Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2], 0}, {
        3^Rational[-1, 2], Rational[2, 3]^Rational[1, 2], 0}, {0, 0, 1}}, {{
        0.816496580927726, -0.5773502691896258, 0}, {
        0.5773502691896258, 0.816496580927726, 0}, {0, 0, 1}}]], {0, 0, 0}]}, 
   {RGBColor[1, 0, 0], 
    GeometricTransformation3DBox[
     GeometricTransformation3DBox[
      GeometricTransformation3DBox[
       GeometricTransformation3DBox[
        GraphicsComplex3DBox[
         NCache[{{-Rational[2, 3]^Rational[1, 2], -
            Rational[2, 3]^Rational[1, 2], 0}, {-
            Rational[2, 3]^Rational[1, 2], 0, -3^Rational[-1, 2]}, {-
            Rational[2, 3]^Rational[1, 2], 0, 3^Rational[-1, 2]}, {-
            Rational[2, 3]^Rational[1, 2], Rational[2, 3]^Rational[1, 2], 
            0}, {0, -Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2]}, {
           0, -Rational[2, 3]^Rational[1, 2], 3^Rational[-1, 2]}, {
           0, 0, (-2) 3^Rational[-1, 2]}, {0, 0, 2 3^Rational[-1, 2]}, {
           0, Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2]}, {
           0, Rational[2, 3]^Rational[1, 2], 3^Rational[-1, 2]}, {
           Rational[2, 3]^Rational[1, 2], -Rational[2, 3]^Rational[1, 2], 
            0}, {Rational[2, 3]^Rational[1, 2], 0, -3^Rational[-1, 2]}, {
           Rational[2, 3]^Rational[1, 2], 0, 3^Rational[-1, 2]}, {
           Rational[2, 3]^Rational[1, 2], Rational[2, 3]^Rational[1, 2], 
            0}}, {{-0.816496580927726, -0.816496580927726, 
            0}, {-0.816496580927726, 
            0, -0.5773502691896258}, {-0.816496580927726, 0, 
            0.5773502691896258}, {-0.816496580927726, 0.816496580927726, 0}, {
           0, -0.816496580927726, -0.5773502691896258}, {
           0, -0.816496580927726, 0.5773502691896258}, {
           0, 0, -1.1547005383792517`}, {0, 0, 1.1547005383792517`}, {
           0, 0.816496580927726, -0.5773502691896258}, {
           0, 0.816496580927726, 0.5773502691896258}, {
           0.816496580927726, -0.816496580927726, 0}, {
           0.816496580927726, 0, -0.5773502691896258}, {
           0.816496580927726, 0, 0.5773502691896258}, {
           0.816496580927726, 0.816496580927726, 0}}], 
         Polygon3DBox[{{2, 1, 3, 4}, {1, 2, 7, 5}, {6, 8, 3, 1}, {2, 4, 9, 
          7}, {8, 10, 4, 3}, {11, 6, 1, 5}, {9, 4, 10, 14}, {5, 7, 12, 11}, {
          11, 13, 8, 6}, {7, 9, 14, 12}, {13, 14, 10, 8}, {14, 13, 11, 12}}]],
         NCache[{{{Rational[1, 2] Rational[3, 2]^Rational[1, 2], 0, 0}, {
           0, Rational[1, 2] Rational[3, 2]^Rational[1, 2], 0}, {
           0, 0, Rational[1, 2] Rational[3, 2]^Rational[1, 2]}}, 
          Center}, {{{0.6123724356957945, 0, 0}, {0, 0.6123724356957945, 0}, {
           0, 0, 0.6123724356957945}}, Center}]], {{0, 0, 1}, {0, 1, 0}, {-1, 
       0, 0}}], 
      NCache[{{Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2], 0}, {
        3^Rational[-1, 2], Rational[2, 3]^Rational[1, 2], 0}, {0, 0, 1}}, {{
        0.816496580927726, -0.5773502691896258, 0}, {
        0.5773502691896258, 0.816496580927726, 0}, {0, 0, 1}}]], 
     NCache[{Rational[1, 2] 3^Rational[1, 2], 0, Rational[1, 2]}, {
      0.8660254037844386, 0, 0.5}]]}, 
   {RGBColor[0, 1, 0], 
    GeometricTransformation3DBox[
     GeometricTransformation3DBox[
      GeometricTransformation3DBox[
       GeometricTransformation3DBox[
        GraphicsComplex3DBox[
         NCache[{{-Rational[2, 3]^Rational[1, 2], -
            Rational[2, 3]^Rational[1, 2], 0}, {-
            Rational[2, 3]^Rational[1, 2], 0, -3^Rational[-1, 2]}, {-
            Rational[2, 3]^Rational[1, 2], 0, 3^Rational[-1, 2]}, {-
            Rational[2, 3]^Rational[1, 2], Rational[2, 3]^Rational[1, 2], 
            0}, {0, -Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2]}, {
           0, -Rational[2, 3]^Rational[1, 2], 3^Rational[-1, 2]}, {
           0, 0, (-2) 3^Rational[-1, 2]}, {0, 0, 2 3^Rational[-1, 2]}, {
           0, Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2]}, {
           0, Rational[2, 3]^Rational[1, 2], 3^Rational[-1, 2]}, {
           Rational[2, 3]^Rational[1, 2], -Rational[2, 3]^Rational[1, 2], 
            0}, {Rational[2, 3]^Rational[1, 2], 0, -3^Rational[-1, 2]}, {
           Rational[2, 3]^Rational[1, 2], 0, 3^Rational[-1, 2]}, {
           Rational[2, 3]^Rational[1, 2], Rational[2, 3]^Rational[1, 2], 
            0}}, {{-0.816496580927726, -0.816496580927726, 
            0}, {-0.816496580927726, 
            0, -0.5773502691896258}, {-0.816496580927726, 0, 
            0.5773502691896258}, {-0.816496580927726, 0.816496580927726, 0}, {
           0, -0.816496580927726, -0.5773502691896258}, {
           0, -0.816496580927726, 0.5773502691896258}, {
           0, 0, -1.1547005383792517`}, {0, 0, 1.1547005383792517`}, {
           0, 0.816496580927726, -0.5773502691896258}, {
           0, 0.816496580927726, 0.5773502691896258}, {
           0.816496580927726, -0.816496580927726, 0}, {
           0.816496580927726, 0, -0.5773502691896258}, {
           0.816496580927726, 0, 0.5773502691896258}, {
           0.816496580927726, 0.816496580927726, 0}}], 
         Polygon3DBox[{{2, 1, 3, 4}, {1, 2, 7, 5}, {6, 8, 3, 1}, {2, 4, 9, 
          7}, {8, 10, 4, 3}, {11, 6, 1, 5}, {9, 4, 10, 14}, {5, 7, 12, 11}, {
          11, 13, 8, 6}, {7, 9, 14, 12}, {13, 14, 10, 8}, {14, 13, 11, 12}}]],
         NCache[{{{Rational[1, 2] Rational[3, 2]^Rational[1, 2], 0, 0}, {
           0, Rational[1, 2] Rational[3, 2]^Rational[1, 2], 0}, {
           0, 0, Rational[1, 2] Rational[3, 2]^Rational[1, 2]}}, 
          Center}, {{{0.6123724356957945, 0, 0}, {0, 0.6123724356957945, 0}, {
           0, 0, 0.6123724356957945}}, Center}]], {{0, 0, 1}, {0, 1, 0}, {-1, 
       0, 0}}], 
      NCache[{{Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2], 0}, {
        3^Rational[-1, 2], Rational[2, 3]^Rational[1, 2], 0}, {0, 0, 1}}, {{
        0.816496580927726, -0.5773502691896258, 0}, {
        0.5773502691896258, 0.816496580927726, 0}, {0, 0, 1}}]], {0, 0, 1}]}, 
   {RGBColor[1, 1, 0], 
    GeometricTransformation3DBox[
     GeometricTransformation3DBox[
      GeometricTransformation3DBox[
       GeometricTransformation3DBox[
        GraphicsComplex3DBox[
         NCache[{{-Rational[2, 3]^Rational[1, 2], -
            Rational[2, 3]^Rational[1, 2], 0}, {-
            Rational[2, 3]^Rational[1, 2], 0, -3^Rational[-1, 2]}, {-
            Rational[2, 3]^Rational[1, 2], 0, 3^Rational[-1, 2]}, {-
            Rational[2, 3]^Rational[1, 2], Rational[2, 3]^Rational[1, 2], 
            0}, {0, -Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2]}, {
           0, -Rational[2, 3]^Rational[1, 2], 3^Rational[-1, 2]}, {
           0, 0, (-2) 3^Rational[-1, 2]}, {0, 0, 2 3^Rational[-1, 2]}, {
           0, Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2]}, {
           0, Rational[2, 3]^Rational[1, 2], 3^Rational[-1, 2]}, {
           Rational[2, 3]^Rational[1, 2], -Rational[2, 3]^Rational[1, 2], 
            0}, {Rational[2, 3]^Rational[1, 2], 0, -3^Rational[-1, 2]}, {
           Rational[2, 3]^Rational[1, 2], 0, 3^Rational[-1, 2]}, {
           Rational[2, 3]^Rational[1, 2], Rational[2, 3]^Rational[1, 2], 
            0}}, {{-0.816496580927726, -0.816496580927726, 
            0}, {-0.816496580927726, 
            0, -0.5773502691896258}, {-0.816496580927726, 0, 
            0.5773502691896258}, {-0.816496580927726, 0.816496580927726, 0}, {
           0, -0.816496580927726, -0.5773502691896258}, {
           0, -0.816496580927726, 0.5773502691896258}, {
           0, 0, -1.1547005383792517`}, {0, 0, 1.1547005383792517`}, {
           0, 0.816496580927726, -0.5773502691896258}, {
           0, 0.816496580927726, 0.5773502691896258}, {
           0.816496580927726, -0.816496580927726, 0}, {
           0.816496580927726, 0, -0.5773502691896258}, {
           0.816496580927726, 0, 0.5773502691896258}, {
           0.816496580927726, 0.816496580927726, 0}}], 
         Polygon3DBox[{{2, 1, 3, 4}, {1, 2, 7, 5}, {6, 8, 3, 1}, {2, 4, 9, 
          7}, {8, 10, 4, 3}, {11, 6, 1, 5}, {9, 4, 10, 14}, {5, 7, 12, 11}, {
          11, 13, 8, 6}, {7, 9, 14, 12}, {13, 14, 10, 8}, {14, 13, 11, 12}}]],
         NCache[{{{Rational[1, 2] Rational[3, 2]^Rational[1, 2], 0, 0}, {
           0, Rational[1, 2] Rational[3, 2]^Rational[1, 2], 0}, {
           0, 0, Rational[1, 2] Rational[3, 2]^Rational[1, 2]}}, 
          Center}, {{{0.6123724356957945, 0, 0}, {0, 0.6123724356957945, 0}, {
           0, 0, 0.6123724356957945}}, Center}]], {{0, 0, 1}, {0, 1, 0}, {-1, 
       0, 0}}], 
      NCache[{{Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2], 0}, {
        3^Rational[-1, 2], Rational[2, 3]^Rational[1, 2], 0}, {0, 0, 1}}, {{
        0.816496580927726, -0.5773502691896258, 0}, {
        0.5773502691896258, 0.816496580927726, 0}, {0, 0, 1}}]], 
     NCache[{Rational[1, 2] 3^Rational[-1, 2], Rational[2, 3]^Rational[1, 2], 
       Rational[1, 2]}, {0.2886751345948129, 0.816496580927726, 0.5}]]}},
  Axes->True,
  AxesLabel->{
    FormBox["x", TraditionalForm], 
    FormBox["y", TraditionalForm], 
    FormBox["z", TraditionalForm]},
  AxesOrigin->{0, 0, 0},
  Boxed->False]], "Output", "PluginEmbeddedContent"]
}, Open  ]],

Cell["\<\
These two rotations now give us the coordinates for all of the vertices for \
the rhombic dodecahedron in our basis.\
\>", "Text", "PluginEmbeddedContent"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"points", "=", 
   RowBox[{"FullSimplify", "[", 
    RowBox[{"Map", "[", " ", 
     RowBox[{
      RowBox[{
       RowBox[{
        FractionBox["1", "2"], 
        SqrtBox[
         FractionBox["3", "2"]], 
        RowBox[{
         RowBox[{"RotationMatrix", "[", 
          RowBox[{
           RowBox[{"ArcCos", "[", 
            SqrtBox[
             FractionBox["2", "3"]], "]"}], ",", 
           RowBox[{"{", 
            RowBox[{"0", ",", "0", ",", "1"}], "}"}]}], "]"}], ".", 
         RowBox[{"RotationMatrix", "[", 
          RowBox[{
           FractionBox["\[Pi]", "2"], ",", 
           RowBox[{"{", 
            RowBox[{"0", ",", "1", ",", "0"}], "}"}]}], "]"}], ".", "#"}]}], 
       "&"}], ",", 
      RowBox[{"PolyhedronData", "[", 
       RowBox[{
       "\"\<RhombicDodecahedron\>\"", ",", "\"\<VertexCoordinates\>\""}], 
       "]"}]}], "]"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Transpose", "@", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"PolyhedronData", "[", 
      RowBox[{"\"\<RhombicDodecahedron\>\"", ",", "\"\<VertexIndices\>\""}], 
      "]"}], ",", " ", "points"}], "}"}]}], "//", "MatrixForm"}]}], "Input", \
"PluginEmbeddedContent"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {"1", 
      RowBox[{"{", 
       RowBox[{
        FractionBox["1", 
         RowBox[{"2", " ", 
          SqrtBox["3"]}]], ",", 
        RowBox[{"-", 
         FractionBox["1", 
          SqrtBox["6"]]}], ",", 
        FractionBox["1", "2"]}], "}"}]},
     {"2", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"-", 
         FractionBox["1", 
          RowBox[{"2", " ", 
           SqrtBox["3"]}]]}], ",", 
        RowBox[{"-", 
         FractionBox["1", 
          RowBox[{"2", " ", 
           SqrtBox["6"]}]]}], ",", 
        FractionBox["1", "2"]}], "}"}]},
     {"3", 
      RowBox[{"{", 
       RowBox[{
        FractionBox["1", 
         RowBox[{"2", " ", 
          SqrtBox["3"]}]], ",", 
        FractionBox["1", 
         RowBox[{"2", " ", 
          SqrtBox["6"]}]], ",", 
        FractionBox["1", "2"]}], "}"}]},
     {"4", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"-", 
         FractionBox["1", 
          RowBox[{"2", " ", 
           SqrtBox["3"]}]]}], ",", 
        FractionBox["1", 
         SqrtBox["6"]], ",", 
        FractionBox["1", "2"]}], "}"}]},
     {"5", 
      RowBox[{"{", 
       RowBox[{"0", ",", 
        RowBox[{"-", 
         FractionBox[
          SqrtBox[
           FractionBox["3", "2"]], "2"]}], ",", "0"}], "}"}]},
     {"6", 
      RowBox[{"{", 
       RowBox[{
        FractionBox["1", 
         SqrtBox["3"]], ",", 
        RowBox[{"-", 
         FractionBox["1", 
          RowBox[{"2", " ", 
           SqrtBox["6"]}]]}], ",", "0"}], "}"}]},
     {"7", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"-", 
         FractionBox["1", 
          SqrtBox["3"]]}], ",", 
        RowBox[{"-", 
         FractionBox["1", 
          SqrtBox["6"]]}], ",", "0"}], "}"}]},
     {"8", 
      RowBox[{"{", 
       RowBox[{
        FractionBox["1", 
         SqrtBox["3"]], ",", 
        FractionBox["1", 
         SqrtBox["6"]], ",", "0"}], "}"}]},
     {"9", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"-", 
         FractionBox["1", 
          SqrtBox["3"]]}], ",", 
        FractionBox["1", 
         RowBox[{"2", " ", 
          SqrtBox["6"]}]], ",", "0"}], "}"}]},
     {"10", 
      RowBox[{"{", 
       RowBox[{"0", ",", 
        FractionBox[
         SqrtBox[
          FractionBox["3", "2"]], "2"], ",", "0"}], "}"}]},
     {"11", 
      RowBox[{"{", 
       RowBox[{
        FractionBox["1", 
         RowBox[{"2", " ", 
          SqrtBox["3"]}]], ",", 
        RowBox[{"-", 
         FractionBox["1", 
          SqrtBox["6"]]}], ",", 
        RowBox[{"-", 
         FractionBox["1", "2"]}]}], "}"}]},
     {"12", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"-", 
         FractionBox["1", 
          RowBox[{"2", " ", 
           SqrtBox["3"]}]]}], ",", 
        RowBox[{"-", 
         FractionBox["1", 
          RowBox[{"2", " ", 
           SqrtBox["6"]}]]}], ",", 
        RowBox[{"-", 
         FractionBox["1", "2"]}]}], "}"}]},
     {"13", 
      RowBox[{"{", 
       RowBox[{
        FractionBox["1", 
         RowBox[{"2", " ", 
          SqrtBox["3"]}]], ",", 
        FractionBox["1", 
         RowBox[{"2", " ", 
          SqrtBox["6"]}]], ",", 
        RowBox[{"-", 
         FractionBox["1", "2"]}]}], "}"}]},
     {"14", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"-", 
         FractionBox["1", 
          RowBox[{"2", " ", 
           SqrtBox["3"]}]]}], ",", 
        FractionBox["1", 
         SqrtBox["6"]], ",", 
        RowBox[{"-", 
         FractionBox["1", "2"]}]}], "}"}]}
    },
    GridBoxAlignment->{
     "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
      "RowsIndexed" -> {}},
    GridBoxSpacings->{"Columns" -> {
        Offset[0.27999999999999997`], {
         Offset[0.7]}, 
        Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
        Offset[0.2], {
         Offset[0.4]}, 
        Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output", "PluginEmbeddedContent"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Show", "[", 
  RowBox[{
   RowBox[{"Graphics3D", "[", 
    RowBox[{
     RowBox[{"GeometricTransformation", "[", 
      RowBox[{
       RowBox[{"GeometricTransformation", "[", 
        RowBox[{
         RowBox[{"Scale", "[", 
          RowBox[{
           RowBox[{"PolyhedronData", "[", 
            RowBox[{"\"\<RhombicDodecahedron\>\"", ",", "\"\<Edges\>\""}], 
            "]"}], ",", 
           RowBox[{
            FractionBox["1", "2"], 
            SqrtBox[
             FractionBox["3", "2"]]}]}], "]"}], ",", 
         RowBox[{"RotationMatrix", "[", 
          RowBox[{"rotationAngle", ",", "rotationVector"}], "]"}]}], "]"}], 
       ",", 
       RowBox[{"RotationMatrix", "[", 
        RowBox[{
         RowBox[{"ArcCos", "[", 
          SqrtBox[
           FractionBox["2", "3"]], "]"}], ",", 
         RowBox[{"{", 
          RowBox[{"0", ",", "0", ",", "1"}], "}"}]}], "]"}]}], "]"}], ",", 
     RowBox[{"Boxed", "\[Rule]", "False"}]}], "]"}], ",", 
   RowBox[{"Graphics3D", "[", 
    RowBox[{"{", 
     RowBox[{"MapThread", "[", 
      RowBox[{
       RowBox[{
        RowBox[{"Text", "[", 
         RowBox[{
          RowBox[{"Style", "[", 
           RowBox[{"#1", ",", "Bold", ",", "Large", ",", "Red"}], "]"}], ",", 
          "#2"}], "]"}], "&"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"PolyhedronData", "[", 
          RowBox[{
          "\"\<RhombicDodecahedron\>\"", ",", "\"\<VertexIndices\>\""}], 
          "]"}], ",", "points"}], "}"}]}], "]"}], "}"}], "]"}]}], 
  "]"}]], "Input", "PluginEmbeddedContent"],

Cell[BoxData[
 Graphics3DBox[{
   GeometricTransformation3DBox[
    GeometricTransformation3DBox[
     GeometricTransformation3DBox[
      GraphicsComplex3DBox[
       NCache[{{-Rational[2, 3]^Rational[1, 2], -
          Rational[2, 3]^Rational[1, 2], 0}, {-Rational[2, 3]^Rational[1, 2], 
          0, -3^Rational[-1, 2]}, {-Rational[2, 3]^Rational[1, 2], 0, 3^
          Rational[-1, 2]}, {-Rational[2, 3]^Rational[1, 2], Rational[2, 3]^
          Rational[1, 2], 0}, {
         0, -Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2]}, {
         0, -Rational[2, 3]^Rational[1, 2], 3^Rational[-1, 2]}, {
         0, 0, (-2) 3^Rational[-1, 2]}, {0, 0, 2 3^Rational[-1, 2]}, {
         0, Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2]}, {
         0, Rational[2, 3]^Rational[1, 2], 3^Rational[-1, 2]}, {
         Rational[2, 3]^Rational[1, 2], -Rational[2, 3]^Rational[1, 2], 0}, {
         Rational[2, 3]^Rational[1, 2], 0, -3^Rational[-1, 2]}, {
         Rational[2, 3]^Rational[1, 2], 0, 3^Rational[-1, 2]}, {
         Rational[2, 3]^Rational[1, 2], Rational[2, 3]^Rational[1, 2], 
          0}}, {{-0.816496580927726, -0.816496580927726, 
          0}, {-0.816496580927726, 
          0, -0.5773502691896258}, {-0.816496580927726, 0, 
          0.5773502691896258}, {-0.816496580927726, 0.816496580927726, 0}, {
         0, -0.816496580927726, -0.5773502691896258}, {
         0, -0.816496580927726, 0.5773502691896258}, {
         0, 0, -1.1547005383792517`}, {0, 0, 1.1547005383792517`}, {
         0, 0.816496580927726, -0.5773502691896258}, {
         0, 0.816496580927726, 0.5773502691896258}, {
         0.816496580927726, -0.816496580927726, 0}, {
         0.816496580927726, 0, -0.5773502691896258}, {
         0.816496580927726, 0, 0.5773502691896258}, {
         0.816496580927726, 0.816496580927726, 0}}], 
       Line3DBox[{{1, 2}, {1, 3}, {1, 5}, {1, 6}, {2, 4}, {2, 7}, {3, 4}, {3, 
        8}, {4, 9}, {4, 10}, {5, 7}, {5, 11}, {6, 8}, {6, 11}, {7, 9}, {7, 
        12}, {8, 10}, {8, 13}, {9, 14}, {10, 14}, {11, 12}, {11, 13}, {12, 
        14}, {13, 14}}]], 
      NCache[{{{Rational[1, 2] Rational[3, 2]^Rational[1, 2], 0, 0}, {
         0, Rational[1, 2] Rational[3, 2]^Rational[1, 2], 0}, {
         0, 0, Rational[1, 2] Rational[3, 2]^Rational[1, 2]}}, 
        Center}, {{{0.6123724356957945, 0, 0}, {0, 0.6123724356957945, 0}, {
         0, 0, 0.6123724356957945}}, Center}]], {{0, 0, 1}, {0, 1, 0}, {-1, 0,
      0}}], NCache[{{Rational[2, 3]^Rational[1, 2], -3^Rational[-1, 2], 0}, {
      3^Rational[-1, 2], Rational[2, 3]^Rational[1, 2], 0}, {0, 0, 1}}, {{
      0.816496580927726, -0.5773502691896258, 0}, {
      0.5773502691896258, 0.816496580927726, 0}, {0, 0, 1}}]], {Text3DBox[
     FormBox[
      StyleBox["1",
       StripOnInput->False,
       LineColor->RGBColor[1, 0, 0],
       FrontFaceColor->RGBColor[1, 0, 0],
       BackFaceColor->RGBColor[1, 0, 0],
       GraphicsColor->RGBColor[1, 0, 0],
       FontSize->Large,
       FontWeight->Bold,
       FontColor->RGBColor[1, 0, 0]], StandardForm], 
     NCache[{Rational[1, 2] 3^Rational[-1, 2], -6^Rational[-1, 2], Rational[
       1, 2]}, {0.2886751345948129, -0.4082482904638631, 0.5}]], Text3DBox[
     FormBox[
      StyleBox["2",
       StripOnInput->False,
       LineColor->RGBColor[1, 0, 0],
       FrontFaceColor->RGBColor[1, 0, 0],
       BackFaceColor->RGBColor[1, 0, 0],
       GraphicsColor->RGBColor[1, 0, 0],
       FontSize->Large,
       FontWeight->Bold,
       FontColor->RGBColor[1, 0, 0]], StandardForm], 
     NCache[{Rational[-1, 2] 3^Rational[-1, 2], Rational[-1, 2] 
       6^Rational[-1, 2], Rational[
       1, 2]}, {-0.2886751345948129, -0.20412414523193154`, 0.5}]], Text3DBox[
     FormBox[
      StyleBox["3",
       StripOnInput->False,
       LineColor->RGBColor[1, 0, 0],
       FrontFaceColor->RGBColor[1, 0, 0],
       BackFaceColor->RGBColor[1, 0, 0],
       GraphicsColor->RGBColor[1, 0, 0],
       FontSize->Large,
       FontWeight->Bold,
       FontColor->RGBColor[1, 0, 0]], StandardForm], 
     NCache[{Rational[1, 2] 3^Rational[-1, 2], Rational[1, 2] 
       6^Rational[-1, 2], Rational[1, 2]}, {0.2886751345948129, 
      0.20412414523193154`, 0.5}]], Text3DBox[
     FormBox[
      StyleBox["4",
       StripOnInput->False,
       LineColor->RGBColor[1, 0, 0],
       FrontFaceColor->RGBColor[1, 0, 0],
       BackFaceColor->RGBColor[1, 0, 0],
       GraphicsColor->RGBColor[1, 0, 0],
       FontSize->Large,
       FontWeight->Bold,
       FontColor->RGBColor[1, 0, 0]], StandardForm], 
     NCache[{Rational[-1, 2] 3^Rational[-1, 2], 6^Rational[-1, 2], Rational[
       1, 2]}, {-0.2886751345948129, 0.4082482904638631, 0.5}]], Text3DBox[
     FormBox[
      StyleBox["5",
       StripOnInput->False,
       LineColor->RGBColor[1, 0, 0],
       FrontFaceColor->RGBColor[1, 0, 0],
       BackFaceColor->RGBColor[1, 0, 0],
       GraphicsColor->RGBColor[1, 0, 0],
       FontSize->Large,
       FontWeight->Bold,
       FontColor->RGBColor[1, 0, 0]], StandardForm], 
     NCache[{0, Rational[-1, 2] Rational[3, 2]^Rational[1, 2], 0}, {
      0, -0.6123724356957945, 0}]], Text3DBox[
     FormBox[
      StyleBox["6",
       StripOnInput->False,
       LineColor->RGBColor[1, 0, 0],
       FrontFaceColor->RGBColor[1, 0, 0],
       BackFaceColor->RGBColor[1, 0, 0],
       GraphicsColor->RGBColor[1, 0, 0],
       FontSize->Large,
       FontWeight->Bold,
       FontColor->RGBColor[1, 0, 0]], StandardForm], 
     NCache[{3^Rational[-1, 2], Rational[-1, 2] 6^Rational[-1, 2], 0}, {
      0.5773502691896258, -0.20412414523193154`, 0}]], Text3DBox[
     FormBox[
      StyleBox["7",
       StripOnInput->False,
       LineColor->RGBColor[1, 0, 0],
       FrontFaceColor->RGBColor[1, 0, 0],
       BackFaceColor->RGBColor[1, 0, 0],
       GraphicsColor->RGBColor[1, 0, 0],
       FontSize->Large,
       FontWeight->Bold,
       FontColor->RGBColor[1, 0, 0]], StandardForm], 
     NCache[{-3^Rational[-1, 2], -6^Rational[-1, 2], 
       0}, {-0.5773502691896258, -0.4082482904638631, 0}]], Text3DBox[
     FormBox[
      StyleBox["8",
       StripOnInput->False,
       LineColor->RGBColor[1, 0, 0],
       FrontFaceColor->RGBColor[1, 0, 0],
       BackFaceColor->RGBColor[1, 0, 0],
       GraphicsColor->RGBColor[1, 0, 0],
       FontSize->Large,
       FontWeight->Bold,
       FontColor->RGBColor[1, 0, 0]], StandardForm], 
     NCache[{3^Rational[-1, 2], 6^Rational[-1, 2], 0}, {
      0.5773502691896258, 0.4082482904638631, 0}]], Text3DBox[
     FormBox[
      StyleBox["9",
       StripOnInput->False,
       LineColor->RGBColor[1, 0, 0],
       FrontFaceColor->RGBColor[1, 0, 0],
       BackFaceColor->RGBColor[1, 0, 0],
       GraphicsColor->RGBColor[1, 0, 0],
       FontSize->Large,
       FontWeight->Bold,
       FontColor->RGBColor[1, 0, 0]], StandardForm], 
     NCache[{-3^Rational[-1, 2], Rational[1, 2] 6^Rational[-1, 2], 
       0}, {-0.5773502691896258, 0.20412414523193154`, 0}]], Text3DBox[
     FormBox[
      StyleBox["10",
       StripOnInput->False,
       LineColor->RGBColor[1, 0, 0],
       FrontFaceColor->RGBColor[1, 0, 0],
       BackFaceColor->RGBColor[1, 0, 0],
       GraphicsColor->RGBColor[1, 0, 0],
       FontSize->Large,
       FontWeight->Bold,
       FontColor->RGBColor[1, 0, 0]], StandardForm], 
     NCache[{0, Rational[1, 2] Rational[3, 2]^Rational[1, 2], 0}, {
      0, 0.6123724356957945, 0}]], Text3DBox[
     FormBox[
      StyleBox["11",
       StripOnInput->False,
       LineColor->RGBColor[1, 0, 0],
       FrontFaceColor->RGBColor[1, 0, 0],
       BackFaceColor->RGBColor[1, 0, 0],
       GraphicsColor->RGBColor[1, 0, 0],
       FontSize->Large,
       FontWeight->Bold,
       FontColor->RGBColor[1, 0, 0]], StandardForm], 
     NCache[{Rational[1, 2] 3^Rational[-1, 2], -6^Rational[-1, 2], 
       Rational[-1, 2]}, {0.2886751345948129, -0.4082482904638631, -0.5}]], 
    Text3DBox[
     FormBox[
      StyleBox["12",
       StripOnInput->False,
       LineColor->RGBColor[1, 0, 0],
       FrontFaceColor->RGBColor[1, 0, 0],
       BackFaceColor->RGBColor[1, 0, 0],
       GraphicsColor->RGBColor[1, 0, 0],
       FontSize->Large,
       FontWeight->Bold,
       FontColor->RGBColor[1, 0, 0]], StandardForm], 
     NCache[{Rational[-1, 2] 3^Rational[-1, 2], Rational[-1, 2] 
       6^Rational[-1, 2], 
       Rational[-1, 2]}, {-0.2886751345948129, -0.20412414523193154`, -0.5}]],
     Text3DBox[
     FormBox[
      StyleBox["13",
       StripOnInput->False,
       LineColor->RGBColor[1, 0, 0],
       FrontFaceColor->RGBColor[1, 0, 0],
       BackFaceColor->RGBColor[1, 0, 0],
       GraphicsColor->RGBColor[1, 0, 0],
       FontSize->Large,
       FontWeight->Bold,
       FontColor->RGBColor[1, 0, 0]], StandardForm], 
     NCache[{Rational[1, 2] 3^Rational[-1, 2], Rational[1, 2] 
       6^Rational[-1, 2], Rational[-1, 2]}, {0.2886751345948129, 
      0.20412414523193154`, -0.5}]], Text3DBox[
     FormBox[
      StyleBox["14",
       StripOnInput->False,
       LineColor->RGBColor[1, 0, 0],
       FrontFaceColor->RGBColor[1, 0, 0],
       BackFaceColor->RGBColor[1, 0, 0],
       GraphicsColor->RGBColor[1, 0, 0],
       FontSize->Large,
       FontWeight->Bold,
       FontColor->RGBColor[1, 0, 0]], StandardForm], 
     NCache[{Rational[-1, 2] 3^Rational[-1, 2], 6^Rational[-1, 2], 
       Rational[-1, 2]}, {-0.2886751345948129, 0.4082482904638631, -0.5}]]}},
  Boxed->False,
  ImageSize->{371.21594201823837`, 359.8811398602506},
  ImageSizeRaw->Automatic,
  ViewPoint->{1.5009837518614075`, -2.648203881926972, 1.4778579012865103`},
  ViewVertical->{0.0726586794883722, -0.1675610272522778, 
   1.2045106509613146`}]], "Output", "PluginEmbeddedContent"]
}, Open  ]],

Cell["\<\
Finally, we get the numerical values of the points for translation to the \
video game.\
\>", "Text", "PluginEmbeddedContent"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"Transpose", "@", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"PolyhedronData", "[", 
      RowBox[{"\"\<RhombicDodecahedron\>\"", ",", "\"\<VertexIndices\>\""}], 
      "]"}], ",", " ", 
     RowBox[{"N", "[", "points", "]"}]}], "}"}]}], "//", 
  "MatrixForm"}]], "Input", "PluginEmbeddedContent"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {"1", 
      RowBox[{"{", 
       RowBox[{"0.2886751345948129`", ",", 
        RowBox[{"-", "0.4082482904638631`"}], ",", "0.5`"}], "}"}]},
     {"2", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"-", "0.2886751345948129`"}], ",", 
        RowBox[{"-", "0.20412414523193154`"}], ",", "0.5`"}], "}"}]},
     {"3", 
      RowBox[{"{", 
       RowBox[{
       "0.2886751345948129`", ",", "0.20412414523193154`", ",", "0.5`"}], 
       "}"}]},
     {"4", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"-", "0.2886751345948129`"}], ",", "0.4082482904638631`", ",",
         "0.5`"}], "}"}]},
     {"5", 
      RowBox[{"{", 
       RowBox[{"0.`", ",", 
        RowBox[{"-", "0.6123724356957945`"}], ",", "0.`"}], "}"}]},
     {"6", 
      RowBox[{"{", 
       RowBox[{"0.5773502691896258`", ",", 
        RowBox[{"-", "0.20412414523193154`"}], ",", "0.`"}], "}"}]},
     {"7", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"-", "0.5773502691896258`"}], ",", 
        RowBox[{"-", "0.4082482904638631`"}], ",", "0.`"}], "}"}]},
     {"8", 
      RowBox[{"{", 
       RowBox[{
       "0.5773502691896258`", ",", "0.4082482904638631`", ",", "0.`"}], "}"}]},
     {"9", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"-", "0.5773502691896258`"}], ",", "0.20412414523193154`", 
        ",", "0.`"}], "}"}]},
     {"10", 
      RowBox[{"{", 
       RowBox[{"0.`", ",", "0.6123724356957945`", ",", "0.`"}], "}"}]},
     {"11", 
      RowBox[{"{", 
       RowBox[{"0.2886751345948129`", ",", 
        RowBox[{"-", "0.4082482904638631`"}], ",", 
        RowBox[{"-", "0.5`"}]}], "}"}]},
     {"12", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"-", "0.2886751345948129`"}], ",", 
        RowBox[{"-", "0.20412414523193154`"}], ",", 
        RowBox[{"-", "0.5`"}]}], "}"}]},
     {"13", 
      RowBox[{"{", 
       RowBox[{"0.2886751345948129`", ",", "0.20412414523193154`", ",", 
        RowBox[{"-", "0.5`"}]}], "}"}]},
     {"14", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"-", "0.2886751345948129`"}], ",", "0.4082482904638631`", ",", 
        RowBox[{"-", "0.5`"}]}], "}"}]}
    },
    GridBoxAlignment->{
     "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
      "RowsIndexed" -> {}},
    GridBoxSpacings->{"Columns" -> {
        Offset[0.27999999999999997`], {
         Offset[0.7]}, 
        Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
        Offset[0.2], {
         Offset[0.4]}, 
        Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output", "PluginEmbeddedContent"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
},
WindowSize->{886.5333333333333, 8711.},
Visible->True,
AuthoredSize->{887, 8711},
ScrollingOptions->{"HorizontalScrollRange"->Fit,
"VerticalScrollRange"->Fit},
ShowCellBracket->False,
Deployed->True,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"10.4 for Microsoft Windows (64-bit) (April 11, 2016)",
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
Cell[1486, 35, 57, 0, 50, "Title"],
Cell[1546, 37, 165, 3, 16, "Text"],
Cell[CellGroupData[{
Cell[1736, 44, 59, 0, 39, "Chapter"],
Cell[1798, 46, 114, 2, 16, "Text"],
Cell[1915, 50, 650, 24, 123, "Input"],
Cell[2568, 76, 91, 0, 16, "Text"],
Cell[CellGroupData[{
Cell[2684, 80, 1366, 38, 139, "Input"],
Cell[4053, 120, 1131, 26, 379, "Output"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[5233, 152, 66, 0, 39, "Chapter"],
Cell[5302, 154, 349, 7, 73, "Text"],
Cell[CellGroupData[{
Cell[5676, 165, 2458, 74, 177, "Input"],
Cell[8137, 241, 77, 1, 29, "Output"],
Cell[8217, 244, 165, 5, 36, "Output"],
Cell[8385, 251, 834, 27, 74, "Output"],
Cell[9222, 280, 188, 6, 36, "Output"],
Cell[9413, 288, 110, 3, 16, "Output"],
Cell[9526, 293, 208, 7, 36, "Output"],
Cell[9737, 302, 853, 24, 384, "Output"]
}, Open  ]],
Cell[10605, 329, 433, 10, 65, "Text"],
Cell[CellGroupData[{
Cell[11063, 343, 435, 15, 58, "Input"],
Cell[11501, 360, 182, 7, 44, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[11720, 372, 2281, 61, 237, "Input"],
Cell[14004, 435, 119, 3, 36, "Output"],
Cell[14126, 440, 127, 3, 16, "Output"],
Cell[14256, 445, 834, 27, 102, "Output"],
Cell[15093, 474, 73, 0, 15, "Print"],
Cell[15169, 476, 166, 5, 36, "Output"],
Cell[15338, 483, 73, 0, 15, "Print"],
Cell[15414, 485, 110, 3, 16, "Output"],
Cell[15527, 490, 73, 0, 15, "Print"],
Cell[15603, 492, 228, 8, 44, "Output"],
Cell[15834, 502, 719, 20, 408, "Output"]
}, Open  ]],
Cell[16568, 525, 323, 9, 65, "Text"],
Cell[CellGroupData[{
Cell[16916, 538, 120, 3, 16, "Input"],
Cell[17039, 543, 1026, 36, 104, "Output"]
}, Open  ]],
Cell[18080, 582, 138, 3, 16, "Text"],
Cell[CellGroupData[{
Cell[18243, 589, 147, 4, 16, "Input"],
Cell[18393, 595, 357, 9, 16, "Output"]
}, Open  ]],
Cell[18765, 607, 71, 0, 16, "Text"],
Cell[CellGroupData[{
Cell[18861, 611, 1227, 34, 88, "Input"],
Cell[20091, 647, 14172, 289, 443, "Output"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[34312, 942, 60, 0, 39, "Chapter"],
Cell[34375, 944, 253, 6, 73, "Text"],
Cell[CellGroupData[{
Cell[34653, 954, 120, 2, 16, "Input"],
Cell[34776, 958, 2064, 34, 323, "Output"]
}, Open  ]],
Cell[36855, 995, 112, 2, 16, "Text"],
Cell[CellGroupData[{
Cell[36992, 1001, 1184, 28, 97, "Input"],
Cell[38179, 1031, 8295, 139, 434, "Output"]
}, Open  ]],
Cell[46489, 1173, 167, 3, 16, "Text"],
Cell[CellGroupData[{
Cell[46681, 1180, 159, 3, 16, "Input"],
Cell[46843, 1185, 203, 6, 41, "Output"]
}, Open  ]],
Cell[47061, 1194, 218, 6, 28, "Text"],
Cell[CellGroupData[{
Cell[47304, 1204, 918, 28, 121, "Input"],
Cell[48225, 1234, 2777, 48, 432, "Output"]
}, Open  ]],
Cell[51017, 1285, 147, 3, 16, "Text"],
Cell[CellGroupData[{
Cell[51189, 1292, 2010, 59, 219, "Input"],
Cell[53202, 1353, 9790, 166, 432, "Output"]
}, Open  ]],
Cell[63007, 1522, 650, 16, 84, "Text"],
Cell[CellGroupData[{
Cell[63682, 1542, 4760, 120, 518, "Input"],
Cell[68445, 1664, 38568, 623, 198, "Output"]
}, Open  ]],
Cell[107028, 2290, 98, 0, 16, "Text"],
Cell[CellGroupData[{
Cell[107151, 2294, 1890, 51, 224, "Input"],
Cell[109044, 2347, 11727, 196, 389, "Output"]
}, Open  ]],
Cell[120786, 2546, 165, 3, 16, "Text"],
Cell[CellGroupData[{
Cell[120976, 2553, 1225, 36, 93, "Input"],
Cell[122204, 2591, 4079, 150, 471, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[126320, 2746, 1581, 45, 219, "Input"],
Cell[127904, 2793, 9667, 225, 360, "Output"]
}, Open  ]],
Cell[137586, 3021, 136, 3, 16, "Text"],
Cell[CellGroupData[{
Cell[137747, 3028, 332, 9, 16, "Input"],
Cell[138082, 3039, 2693, 79, 207, "Output"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature FuT0EhBRceYwuDwH30oWVG1x *)
