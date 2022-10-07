<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:07293d5e-fc42-44bb-9730-8a05f64c0999(eu.sioux.todos.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="14" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="5tb1" ref="r:8f01b14c-8e22-49bf-9fe7-81422279fa2c(eu.sioux.todos.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi">
        <child id="1078153129734" name="inspectedCellModel" index="6VMZX" />
      </concept>
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1237308012275" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineStyleClassItem" flags="ln" index="ljvvj" />
      <concept id="1237375020029" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineChildrenStyleClassItem" flags="ln" index="pj6Ft" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1198256887712" name="jetbrains.mps.lang.editor.structure.CellModel_Indent" flags="ng" index="3XFhqQ" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="2S6YArfT5sr">
    <ref role="1XX52x" to="5tb1:6ZbxOp2_Aqc" resolve="TodoList" />
    <node concept="3EZMnI" id="6ZbxOp2_Aqs" role="2wV5jI">
      <node concept="3EZMnI" id="6ZbxOp2_AqA" role="3EZMnx">
        <node concept="2iRfu4" id="6ZbxOp2_AqB" role="2iSdaV" />
        <node concept="3F0ifn" id="6ZbxOp2_Aqz" role="3EZMnx">
          <property role="3F0ifm" value="Todo list" />
        </node>
        <node concept="3F0A7n" id="6ZbxOp2_AqJ" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
      </node>
      <node concept="3F0ifn" id="6ZbxOp2_AqN" role="3EZMnx" />
      <node concept="3F2HdR" id="6ZbxOp2_Ar0" role="3EZMnx">
        <ref role="1NtTu8" to="5tb1:6ZbxOp2_Aqe" resolve="items" />
        <node concept="2iRkQZ" id="6ZbxOp2_Ar2" role="2czzBx" />
      </node>
      <node concept="2iRkQZ" id="6ZbxOp2_Aqv" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2S6YArfT5t7">
    <ref role="1XX52x" to="5tb1:6ZbxOp2_Aqd" resolve="Todo" />
    <node concept="3EZMnI" id="4zyyUF7RrcH" role="2wV5jI">
      <node concept="l2Vlx" id="4zyyUF7RrcI" role="2iSdaV" />
      <node concept="lj46D" id="4zyyUF7RrcJ" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="3EZMnI" id="6ZbxOp2_Arm" role="3EZMnx">
        <node concept="3F0ifn" id="6ZbxOp2_Art" role="3EZMnx">
          <property role="3F0ifm" value="*" />
        </node>
        <node concept="2iRfu4" id="6ZbxOp2_Arp" role="2iSdaV" />
        <node concept="3F0A7n" id="6ZbxOp2_ArR" role="3EZMnx">
          <ref role="1NtTu8" to="5tb1:6ZbxOp2_ArK" resolve="priority" />
        </node>
        <node concept="3F0A7n" id="6ZbxOp2_Arz" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
      </node>
      <node concept="3F0ifn" id="4zyyUF7RrcU" role="3EZMnx">
        <node concept="ljvvj" id="4zyyUF7RrcV" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="4zyyUF7Rrd0" role="3EZMnx">
        <ref role="1NtTu8" to="5tb1:4zyyUF7RpH5" resolve="subItems" />
        <node concept="l2Vlx" id="4zyyUF7Rrd1" role="2czzBx" />
        <node concept="pj6Ft" id="4zyyUF7Rrd2" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="4zyyUF7Rrd3" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="4zyyUF7Rrd4" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
    <node concept="3EZMnI" id="5w895fhtekK" role="6VMZX">
      <node concept="3F0ifn" id="5w895fhtekR" role="3EZMnx">
        <property role="3F0ifm" value="Dependent on:" />
      </node>
      <node concept="3EZMnI" id="5w895fhtekX" role="3EZMnx">
        <node concept="VPM3Z" id="5w895fhtekZ" role="3F10Kt" />
        <node concept="3XFhqQ" id="5w895fhtel8" role="3EZMnx" />
        <node concept="3F1sOY" id="3rXBL84yypy" role="3EZMnx">
          <ref role="1NtTu8" to="5tb1:5w895fhtekB" resolve="dependentOn" />
        </node>
        <node concept="2iRfu4" id="5w895fhtel2" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="$4Ynxq$1ih" role="3EZMnx" />
      <node concept="3EZMnI" id="$4Ynxq$1i$" role="3EZMnx">
        <node concept="2iRfu4" id="$4Ynxq$1i_" role="2iSdaV" />
        <node concept="3F0ifn" id="$4Ynxq$1iq" role="3EZMnx">
          <property role="3F0ifm" value="Some Property" />
        </node>
        <node concept="3F0A7n" id="$4Ynxq$1iP" role="3EZMnx">
          <ref role="1NtTu8" to="5tb1:$4Ynxq$1ia" resolve="someProperty" />
        </node>
      </node>
      <node concept="2iRkQZ" id="5w895fhtekN" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5w895fhtekz">
    <ref role="1XX52x" to="5tb1:5w895fhtekx" resolve="TodoReference" />
    <node concept="1iCGBv" id="5w895fhtek$" role="2wV5jI">
      <ref role="1NtTu8" to="5tb1:5w895fhteky" resolve="todo" />
      <node concept="1sVBvm" id="5w895fhtek_" role="1sWHZn">
        <node concept="3F0A7n" id="5w895fhtekA" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
      </node>
    </node>
  </node>
</model>

