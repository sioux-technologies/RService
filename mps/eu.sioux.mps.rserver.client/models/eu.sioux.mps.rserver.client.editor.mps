<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:92ec4b91-2f7c-4973-a9f9-b7adfdcbe5b1(eu.sioux.mps.rserver.client.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="14" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="74bf" ref="r:fbbd8fd4-3d94-4974-8b29-623f74c85604(eu.sioux.mps.rserver.client.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="deao" ref="r:cd77da81-ae35-41e9-b4b1-1400d056dac8(eu.sioux.mps.rserver.client.behavior)" implicit="true" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" implicit="true" />
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
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
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
      <concept id="1225898583838" name="jetbrains.mps.lang.editor.structure.ReadOnlyModelAccessor" flags="ng" index="1HfYo3">
        <child id="1225898971709" name="getter" index="1Hhtcw" />
      </concept>
      <concept id="1225900081164" name="jetbrains.mps.lang.editor.structure.CellModel_ReadOnlyModelAccessor" flags="sg" stub="3708815482283559694" index="1HlG4h">
        <child id="1225900141900" name="modelAccessor" index="1HlULh" />
      </concept>
      <concept id="1176717841777" name="jetbrains.mps.lang.editor.structure.QueryFunction_ModelAccess_Getter" flags="in" index="3TQlhw" />
      <concept id="1198256887712" name="jetbrains.mps.lang.editor.structure.CellModel_Indent" flags="ng" index="3XFhqQ" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1201792049884" name="jetbrains.mps.baseLanguage.collections.structure.TranslateOperation" flags="nn" index="3goQfb" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
    </language>
  </registry>
  <node concept="24kQdi" id="PKiUC77gUu">
    <ref role="1XX52x" to="74bf:PKiUC77gMs" resolve="ConceptClient" />
    <node concept="3EZMnI" id="6_xZaXNwe_B" role="2wV5jI">
      <node concept="2iRkQZ" id="6_xZaXNwe_C" role="2iSdaV" />
      <node concept="3EZMnI" id="PKiUC77gUw" role="3EZMnx">
        <node concept="3F0ifn" id="PKiUC77gUF" role="3EZMnx">
          <property role="3F0ifm" value="concept client" />
        </node>
        <node concept="1iCGBv" id="PKiUC77gUL" role="3EZMnx">
          <ref role="1NtTu8" to="74bf:PKiUC77gMt" resolve="concept" />
          <node concept="1sVBvm" id="PKiUC77gUN" role="1sWHZn">
            <node concept="3F0A7n" id="PKiUC77gUV" role="2wV5jI">
              <property role="1Intyy" value="true" />
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
        <node concept="2iRfu4" id="PKiUC77gUz" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="6_xZaXNwe_Z" role="3EZMnx">
        <node concept="VPM3Z" id="6_xZaXNweA1" role="3F10Kt" />
        <node concept="3XFhqQ" id="6_xZaXNweAf" role="3EZMnx" />
        <node concept="3F2HdR" id="6_xZaXNweAl" role="3EZMnx">
          <ref role="1NtTu8" to="74bf:6_xZaXNvZn6" resolve="additions" />
          <node concept="2iRkQZ" id="6_xZaXNweAr" role="2czzBx" />
        </node>
        <node concept="2iRfu4" id="6_xZaXNweA4" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="6_xZaXNweAt" role="3EZMnx" />
    </node>
  </node>
  <node concept="24kQdi" id="PKiUC77gV7">
    <ref role="1XX52x" to="74bf:PKiUC77gUi" resolve="ClientGenerator" />
    <node concept="3EZMnI" id="PKiUC77gV9" role="2wV5jI">
      <node concept="3EZMnI" id="PKiUC77gVl" role="3EZMnx">
        <node concept="2iRfu4" id="PKiUC77gVm" role="2iSdaV" />
        <node concept="3F0ifn" id="PKiUC77gVi" role="3EZMnx">
          <property role="3F0ifm" value="Client Generator" />
        </node>
        <node concept="3F0A7n" id="PKiUC77gVu" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
      </node>
      <node concept="3F0ifn" id="PKiUC77gVy" role="3EZMnx">
        <property role="3F0ifm" value="using" />
      </node>
      <node concept="3EZMnI" id="PKiUC7iyKn" role="3EZMnx">
        <node concept="2iRfu4" id="PKiUC7iyKo" role="2iSdaV" />
        <node concept="3XFhqQ" id="PKiUC7iyKA" role="3EZMnx" />
        <node concept="3F2HdR" id="PKiUC7iyKG" role="3EZMnx">
          <ref role="1NtTu8" to="74bf:PKiUC7iyJQ" resolve="using" />
          <node concept="2iRkQZ" id="PKiUC7iyKM" role="2czzBx" />
        </node>
      </node>
      <node concept="3F0ifn" id="PKiUC7iyJT" role="3EZMnx" />
      <node concept="3F2HdR" id="PKiUC77gVJ" role="3EZMnx">
        <ref role="1NtTu8" to="74bf:PKiUC77gUj" resolve="content" />
        <node concept="2iRkQZ" id="PKiUC77gVL" role="2czzBx" />
      </node>
      <node concept="2iRkQZ" id="PKiUC77gVc" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="PKiUC77Ku0" role="6VMZX">
      <node concept="2iRkQZ" id="PKiUC77Ku1" role="2iSdaV" />
      <node concept="3EZMnI" id="PKiUC77Kua" role="3EZMnx">
        <node concept="2iRfu4" id="PKiUC77Kub" role="2iSdaV" />
        <node concept="3F0ifn" id="PKiUC77Ku4" role="3EZMnx">
          <property role="3F0ifm" value="Base namespace:" />
        </node>
        <node concept="3F0A7n" id="PKiUC77Kuj" role="3EZMnx">
          <ref role="1NtTu8" to="74bf:PKiUC77KtY" resolve="baseTargetNameSpace" />
        </node>
      </node>
      <node concept="3EZMnI" id="5w895fhzTTB" role="3EZMnx">
        <node concept="VPM3Z" id="5w895fhzTTD" role="3F10Kt" />
        <node concept="3F0ifn" id="5w895fhzTTF" role="3EZMnx">
          <property role="3F0ifm" value="Nuget Package Name:" />
        </node>
        <node concept="3F0A7n" id="5w895fhzU4F" role="3EZMnx">
          <ref role="1NtTu8" to="74bf:5w895fhzCOE" resolve="nugetPackage" />
        </node>
        <node concept="2iRfu4" id="5w895fhzTTG" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="5w895fhyNVI" role="3EZMnx">
        <node concept="VPM3Z" id="5w895fhyNVK" role="3F10Kt" />
        <node concept="3F0ifn" id="5w895fhyNVM" role="3EZMnx">
          <property role="3F0ifm" value="Version:" />
        </node>
        <node concept="3F0A7n" id="5w895fhyOpS" role="3EZMnx">
          <ref role="1NtTu8" to="74bf:5w895fhyNk2" resolve="version" />
        </node>
        <node concept="2iRfu4" id="5w895fhyNVN" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="67VaKSIqgGq" role="3EZMnx">
        <node concept="VPM3Z" id="67VaKSIqgGs" role="3F10Kt" />
        <node concept="3F0ifn" id="67VaKSIqgGu" role="3EZMnx">
          <property role="3F0ifm" value="Target framework:" />
        </node>
        <node concept="3F0A7n" id="67VaKSIqgQS" role="3EZMnx">
          <ref role="1NtTu8" to="74bf:67VaKSIpVGz" resolve="targetFramework" />
        </node>
        <node concept="2iRfu4" id="67VaKSIqgGv" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="$4YnxqzD9I" role="3EZMnx">
        <node concept="VPM3Z" id="$4YnxqzD9J" role="3F10Kt" />
        <node concept="3F0ifn" id="$4YnxqzD9K" role="3EZMnx">
          <property role="3F0ifm" value="Create project file:" />
        </node>
        <node concept="3F0A7n" id="$4YnxqzD9L" role="3EZMnx">
          <ref role="1NtTu8" to="74bf:$4Ynxqyrzt" resolve="createProjectFile" />
        </node>
        <node concept="2iRfu4" id="$4YnxqzD9M" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="5w895fhvrs6" role="3EZMnx" />
      <node concept="3F0ifn" id="5w895fhwrkL" role="3EZMnx">
        <property role="3F0ifm" value="Supports the following concepts:" />
      </node>
      <node concept="1HlG4h" id="5w895fhvrsj" role="3EZMnx">
        <node concept="1HfYo3" id="5w895fhvrsl" role="1HlULh">
          <node concept="3TQlhw" id="5w895fhvrsn" role="1Hhtcw">
            <node concept="3clFbS" id="5w895fhvrsp" role="2VODD2">
              <node concept="3clFbF" id="5w895fhvwZ2" role="3cqZAp">
                <node concept="2YIFZM" id="5w895fhvx3w" role="3clFbG">
                  <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                  <ref role="37wK5l" to="wyt6:~String.join(java.lang.CharSequence,java.lang.Iterable)" resolve="join" />
                  <node concept="Xl_RD" id="5w895fhvx3z" role="37wK5m">
                    <property role="Xl_RC" value=", \r\n" />
                  </node>
                  <node concept="2OqwBi" id="5w895fhvxNd" role="37wK5m">
                    <node concept="2OqwBi" id="5w895fhvuls" role="2Oq$k0">
                      <node concept="2OqwBi" id="5w895fhvrHn" role="2Oq$k0">
                        <node concept="pncrf" id="5w895fhvrx4" role="2Oq$k0" />
                        <node concept="3Tsc0h" id="5w895fhvt9W" role="2OqNvi">
                          <ref role="3TtcxE" to="74bf:PKiUC77gUj" resolve="content" />
                        </node>
                      </node>
                      <node concept="3goQfb" id="5w895fhvvIz" role="2OqNvi">
                        <node concept="1bVj0M" id="5w895fhvvI_" role="23t8la">
                          <node concept="3clFbS" id="5w895fhvvIA" role="1bW5cS">
                            <node concept="3clFbF" id="5w895fhvvP_" role="3cqZAp">
                              <node concept="2OqwBi" id="5w895fhvw45" role="3clFbG">
                                <node concept="37vLTw" id="5w895fhvvP$" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5w895fhvvIB" resolve="it" />
                                </node>
                                <node concept="2qgKlT" id="5w895fhvwhK" role="2OqNvi">
                                  <ref role="37wK5l" to="deao:5w895fhuANt" resolve="Targets" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="5w895fhvvIB" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="5w895fhvvIC" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3$u5V9" id="5w895fhvyyk" role="2OqNvi">
                      <node concept="1bVj0M" id="5w895fhvyym" role="23t8la">
                        <node concept="3clFbS" id="5w895fhvyyn" role="1bW5cS">
                          <node concept="3clFbF" id="5w895fhvyPf" role="3cqZAp">
                            <node concept="2OqwBi" id="5w895fhv$wx" role="3clFbG">
                              <node concept="37vLTw" id="5w895fhvyPe" role="2Oq$k0">
                                <ref role="3cqZAo" node="5w895fhvyyo" resolve="it" />
                              </node>
                              <node concept="2qgKlT" id="5w895fhv$N$" role="2OqNvi">
                                <ref role="37wK5l" to="tpcu:hEwIO9y" resolve="getFqName" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="5w895fhvyyo" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="5w895fhvyyp" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="PKiUC77G0O">
    <ref role="1XX52x" to="74bf:PKiUC77G0C" resolve="EnumClient" />
    <node concept="3EZMnI" id="PKiUC77G0T" role="2wV5jI">
      <node concept="2iRfu4" id="PKiUC77G0U" role="2iSdaV" />
      <node concept="3F0ifn" id="PKiUC77G0Q" role="3EZMnx">
        <property role="3F0ifm" value="Enum" />
      </node>
      <node concept="1iCGBv" id="PKiUC77G12" role="3EZMnx">
        <ref role="1NtTu8" to="74bf:PKiUC77G0F" resolve="target" />
        <node concept="1sVBvm" id="PKiUC77G14" role="1sWHZn">
          <node concept="3F0A7n" id="PKiUC77G1g" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="PKiUC7iyJM">
    <ref role="1XX52x" to="74bf:PKiUC7iyJK" resolve="ClientGeneratorReference" />
    <node concept="1iCGBv" id="PKiUC7iyJN" role="2wV5jI">
      <ref role="1NtTu8" to="74bf:PKiUC7iyJL" resolve="clientGenerator" />
      <node concept="1sVBvm" id="PKiUC7iyJO" role="1sWHZn">
        <node concept="3F0A7n" id="PKiUC7iyJP" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="PKiUC7jvRj">
    <ref role="1XX52x" to="74bf:PKiUC7jvQW" resolve="InterfaceClient" />
    <node concept="3EZMnI" id="PKiUC7jvRo" role="2wV5jI">
      <node concept="2iRfu4" id="PKiUC7jvRp" role="2iSdaV" />
      <node concept="3F0ifn" id="PKiUC7jvRl" role="3EZMnx">
        <property role="3F0ifm" value="interface" />
      </node>
      <node concept="1iCGBv" id="PKiUC7jvRx" role="3EZMnx">
        <ref role="1NtTu8" to="74bf:PKiUC7jvRa" resolve="interface" />
        <node concept="1sVBvm" id="PKiUC7jvRz" role="1sWHZn">
          <node concept="3F0A7n" id="PKiUC7jvRF" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="PKiUC7lbU7">
    <ref role="1XX52x" to="74bf:PKiUC7lbTW" resolve="CustomImplementation" />
    <node concept="3EZMnI" id="PKiUC7lbUc" role="2wV5jI">
      <node concept="2iRfu4" id="PKiUC7lbUd" role="2iSdaV" />
      <node concept="3F0ifn" id="PKiUC7lbU9" role="3EZMnx">
        <property role="3F0ifm" value="custom implementation" />
      </node>
      <node concept="1iCGBv" id="PKiUC7lbUl" role="3EZMnx">
        <ref role="1NtTu8" to="74bf:PKiUC7lbTY" resolve="structureElement" />
        <node concept="1sVBvm" id="PKiUC7lbUn" role="1sWHZn">
          <node concept="3F0A7n" id="PKiUC7lbUv" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3EZMnI" id="PKiUC7lQ4L" role="6VMZX">
      <node concept="3EZMnI" id="PKiUC7lQ4R" role="3EZMnx">
        <node concept="2iRfu4" id="PKiUC7lQ4S" role="2iSdaV" />
        <node concept="3F0ifn" id="PKiUC7lQ4P" role="3EZMnx">
          <property role="3F0ifm" value="Namespace:" />
        </node>
        <node concept="3F0A7n" id="PKiUC7lQ50" role="3EZMnx">
          <ref role="1NtTu8" to="74bf:PKiUC7lchL" resolve="TargetImplementationNamespace" />
        </node>
      </node>
      <node concept="3EZMnI" id="PKiUC7lQ5a" role="3EZMnx">
        <node concept="VPM3Z" id="PKiUC7lQ5c" role="3F10Kt" />
        <node concept="3F0ifn" id="PKiUC7lQ5e" role="3EZMnx">
          <property role="3F0ifm" value="Name:" />
        </node>
        <node concept="3F0A7n" id="PKiUC7lQ5r" role="3EZMnx">
          <ref role="1NtTu8" to="74bf:PKiUC7lchN" resolve="TargetImplementationName" />
        </node>
        <node concept="2iRfu4" id="PKiUC7lQ5f" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="PKiUC7lQ4M" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6_xZaXNwe$8">
    <property role="3GE5qa" value="Addition" />
    <ref role="1XX52x" to="74bf:6_xZaXNwdfE" resolve="NamedStructureClientAdditions" />
    <node concept="3EZMnI" id="6_xZaXNwe$z" role="2wV5jI">
      <node concept="2iRkQZ" id="6_xZaXNwe$$" role="2iSdaV" />
      <node concept="3EZMnI" id="6_xZaXNwe$d" role="3EZMnx">
        <node concept="2iRfu4" id="6_xZaXNwe$e" role="2iSdaV" />
        <node concept="3F0ifn" id="6_xZaXNwe$a" role="3EZMnx">
          <property role="3F0ifm" value="For" />
        </node>
        <node concept="1iCGBv" id="6_xZaXNwe$m" role="3EZMnx">
          <ref role="1NtTu8" to="74bf:6_xZaXNv8$Y" resolve="target" />
          <node concept="1sVBvm" id="6_xZaXNwe$o" role="1sWHZn">
            <node concept="3F0A7n" id="6_xZaXNwe$w" role="2wV5jI">
              <property role="1Intyy" value="true" />
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="6_xZaXNwe$V" role="3EZMnx">
        <node concept="VPM3Z" id="6_xZaXNwe$X" role="3F10Kt" />
        <node concept="3XFhqQ" id="6_xZaXNwe_b" role="3EZMnx" />
        <node concept="3F2HdR" id="6_xZaXNwe_h" role="3EZMnx">
          <ref role="1NtTu8" to="74bf:6_xZaXNwdfJ" resolve="additions" />
          <node concept="2iRkQZ" id="6_xZaXNwe_n" role="2czzBx" />
        </node>
        <node concept="2iRfu4" id="6_xZaXNwe_0" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="6_xZaXNwe_p" role="3EZMnx" />
    </node>
  </node>
  <node concept="24kQdi" id="6_xZaXN$w5p">
    <property role="3GE5qa" value="Addition" />
    <ref role="1XX52x" to="74bf:6_xZaXN$w5c" resolve="TextGenAddition" />
    <node concept="3EZMnI" id="6_xZaXN$w5v" role="2wV5jI">
      <node concept="2iRfu4" id="6_xZaXN$w5w" role="2iSdaV" />
      <node concept="3F0ifn" id="6_xZaXN$w5r" role="3EZMnx">
        <property role="3F0ifm" value="add" />
      </node>
      <node concept="3F1sOY" id="6_xZaXN$w5I" role="3EZMnx">
        <ref role="1NtTu8" to="74bf:6_xZaXN$w5d" resolve="text" />
      </node>
    </node>
    <node concept="3EZMnI" id="67VaKSInKKa" role="6VMZX">
      <node concept="3F0ifn" id="67VaKSInKKn" role="3EZMnx">
        <property role="3F0ifm" value="Using:" />
      </node>
      <node concept="3EZMnI" id="67VaKSInKKr" role="3EZMnx">
        <node concept="3XFhqQ" id="67VaKSInKKC" role="3EZMnx" />
        <node concept="2iRfu4" id="67VaKSInKKs" role="2iSdaV" />
        <node concept="3F2HdR" id="67VaKSInKKi" role="3EZMnx">
          <ref role="1NtTu8" to="74bf:67VaKSImrro" resolve="using" />
          <node concept="2iRkQZ" id="67VaKSInKKk" role="2czzBx" />
        </node>
      </node>
      <node concept="2iRkQZ" id="67VaKSInKKb" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="67VaKSImrrk">
    <property role="3GE5qa" value="Addition" />
    <ref role="1XX52x" to="74bf:67VaKSImrri" resolve="NamespaceReference" />
    <node concept="1iCGBv" id="67VaKSImrrl" role="2wV5jI">
      <ref role="1NtTu8" to="74bf:67VaKSImrrj" resolve="namespace" />
      <node concept="1sVBvm" id="67VaKSImrrm" role="1sWHZn">
        <node concept="3F0A7n" id="67VaKSImrrn" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="67VaKSInKL1">
    <property role="3GE5qa" value="Addition" />
    <ref role="1XX52x" to="74bf:67VaKSInKKO" resolve="Environment" />
    <node concept="3EZMnI" id="67VaKSInKL3" role="2wV5jI">
      <node concept="3F0ifn" id="67VaKSInKLa" role="3EZMnx">
        <property role="3F0ifm" value="Environment:" />
      </node>
      <node concept="3F0ifn" id="67VaKSInKLd" role="3EZMnx" />
      <node concept="3F0ifn" id="67VaKSInKLg" role="3EZMnx">
        <property role="3F0ifm" value="Namespaces:" />
      </node>
      <node concept="3EZMnI" id="67VaKSInKLx" role="3EZMnx">
        <node concept="2iRfu4" id="67VaKSInKLy" role="2iSdaV" />
        <node concept="3XFhqQ" id="67VaKSInKLK" role="3EZMnx" />
        <node concept="3F2HdR" id="67VaKSInKLp" role="3EZMnx">
          <ref role="1NtTu8" to="74bf:67VaKSInKKP" resolve="namespaces" />
          <node concept="2iRkQZ" id="67VaKSInKLr" role="2czzBx" />
        </node>
      </node>
      <node concept="3F0ifn" id="67VaKSInKLP" role="3EZMnx" />
      <node concept="3F0ifn" id="67VaKSInKLZ" role="3EZMnx">
        <property role="3F0ifm" value="Packages/projects:" />
      </node>
      <node concept="3EZMnI" id="67VaKSInKM_" role="3EZMnx">
        <node concept="2iRfu4" id="67VaKSInKMA" role="2iSdaV" />
        <node concept="3XFhqQ" id="67VaKSInKMV" role="3EZMnx" />
        <node concept="3F2HdR" id="67VaKSInKMm" role="3EZMnx">
          <ref role="1NtTu8" to="74bf:67VaKSInKKR" resolve="referenceTargets" />
          <node concept="2iRkQZ" id="67VaKSInKMo" role="2czzBx" />
        </node>
      </node>
      <node concept="2iRkQZ" id="67VaKSInKL6" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="67VaKSInKN7">
    <property role="3GE5qa" value="Addition" />
    <ref role="1XX52x" to="74bf:67VaKSImrqV" resolve="Namespace" />
    <node concept="3EZMnI" id="67VaKSInKNs" role="2wV5jI">
      <node concept="2iRkQZ" id="67VaKSInKNt" role="2iSdaV" />
      <node concept="3EZMnI" id="67VaKSInKNc" role="3EZMnx">
        <node concept="2iRfu4" id="67VaKSInKNd" role="2iSdaV" />
        <node concept="3F0ifn" id="67VaKSInKN9" role="3EZMnx">
          <property role="3F0ifm" value="namespace" />
        </node>
        <node concept="3F0A7n" id="67VaKSInKNl" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="3F0ifn" id="67VaKSInKOm" role="3EZMnx">
          <property role="3F0ifm" value="from" />
        </node>
        <node concept="1iCGBv" id="67VaKSInKO2" role="3EZMnx">
          <ref role="1NtTu8" to="74bf:67VaKSImrrd" resolve="reference" />
          <node concept="1sVBvm" id="67VaKSInKO4" role="1sWHZn">
            <node concept="3F0A7n" id="67VaKSInKOe" role="2wV5jI">
              <property role="1Intyy" value="true" />
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="67VaKSInKOY">
    <property role="3GE5qa" value="Addition" />
    <ref role="1XX52x" to="74bf:67VaKSImrr0" resolve="NugetPackage" />
    <node concept="3EZMnI" id="67VaKSInKP3" role="2wV5jI">
      <node concept="2iRfu4" id="67VaKSInKP4" role="2iSdaV" />
      <node concept="3F0ifn" id="67VaKSInKP0" role="3EZMnx">
        <property role="3F0ifm" value="Nuget package" />
      </node>
      <node concept="3F0A7n" id="67VaKSInKPc" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="67VaKSInKPk" role="3EZMnx">
        <property role="3F0ifm" value="version" />
      </node>
      <node concept="3F0A7n" id="67VaKSInKPu" role="3EZMnx">
        <ref role="1NtTu8" to="74bf:67VaKSImrra" resolve="version" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="67VaKSInLyF">
    <property role="3GE5qa" value="Addition" />
    <ref role="1XX52x" to="74bf:67VaKSImrr3" resolve="Project" />
    <node concept="3EZMnI" id="67VaKSInLyH" role="2wV5jI">
      <node concept="3F0ifn" id="67VaKSInLyO" role="3EZMnx">
        <property role="3F0ifm" value="Project (relative) path:" />
      </node>
      <node concept="3F0A7n" id="67VaKSInLyU" role="3EZMnx">
        <ref role="1NtTu8" to="74bf:67VaKSImrr6" resolve="relativePath" />
      </node>
      <node concept="2iRfu4" id="67VaKSInLyK" role="2iSdaV" />
    </node>
  </node>
</model>

