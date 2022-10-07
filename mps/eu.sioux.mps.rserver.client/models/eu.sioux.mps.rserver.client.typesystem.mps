<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:df1b5350-4796-4244-b58b-404d862ccb08(eu.sioux.mps.rserver.client.typesystem)">
  <persistence version="9" />
  <languages>
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="5" />
    <devkit ref="00000000-0000-4000-0000-1de82b3a4936(jetbrains.mps.devkit.aspect.typesystem)" />
  </languages>
  <imports>
    <import index="74bf" ref="r:fbbd8fd4-3d94-4974-8b29-623f74c85604(eu.sioux.mps.rserver.client.structure)" implicit="true" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" implicit="true" />
    <import index="deao" ref="r:cd77da81-ae35-41e9-b4b1-1400d056dac8(eu.sioux.mps.rserver.client.behavior)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1225271369338" name="jetbrains.mps.baseLanguage.structure.IsEmptyOperation" flags="nn" index="17RlXB" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1175517767210" name="jetbrains.mps.lang.typesystem.structure.ReportErrorStatement" flags="nn" index="2MkqsV">
        <child id="1175517851849" name="errorString" index="2MkJ7o" />
      </concept>
      <concept id="1195213580585" name="jetbrains.mps.lang.typesystem.structure.AbstractCheckingRule" flags="ig" index="18hYwZ">
        <child id="1195213635060" name="body" index="18ibNy" />
      </concept>
      <concept id="1195214364922" name="jetbrains.mps.lang.typesystem.structure.NonTypesystemRule" flags="ig" index="18kY7G" />
      <concept id="3937244445246642777" name="jetbrains.mps.lang.typesystem.structure.AbstractReportStatement" flags="ng" index="1urrMJ">
        <child id="3937244445246642781" name="nodeToReport" index="1urrMF" />
      </concept>
      <concept id="1174642788531" name="jetbrains.mps.lang.typesystem.structure.ConceptReference" flags="ig" index="1YaCAy">
        <reference id="1174642800329" name="concept" index="1YaFvo" />
      </concept>
      <concept id="1174648085619" name="jetbrains.mps.lang.typesystem.structure.AbstractRule" flags="ng" index="1YuPPy">
        <child id="1174648101952" name="applicableNode" index="1YuTPh" />
      </concept>
      <concept id="1174650418652" name="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference" flags="nn" index="1YBJjd">
        <reference id="1174650432090" name="applicableNode" index="1YBMHb" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
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
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1235566554328" name="jetbrains.mps.baseLanguage.collections.structure.AnyOperation" flags="nn" index="2HwmR7" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
  </registry>
  <node concept="18kY7G" id="5w895fhuibf">
    <property role="TrG5h" value="check_ConceptClient" />
    <node concept="3clFbS" id="5w895fhuibg" role="18ibNy">
      <node concept="3clFbJ" id="5w895fhuibm" role="3cqZAp">
        <node concept="2OqwBi" id="5w895fhujet" role="3clFbw">
          <node concept="2OqwBi" id="5w895fhuiIN" role="2Oq$k0">
            <node concept="2OqwBi" id="5w895fhuild" role="2Oq$k0">
              <node concept="1YBJjd" id="5w895fhuiby" role="2Oq$k0">
                <ref role="1YBMHb" node="5w895fhuibi" resolve="conceptClient" />
              </node>
              <node concept="3TrEf2" id="5w895fhuitK" role="2OqNvi">
                <ref role="3Tt5mk" to="74bf:PKiUC77gMt" resolve="concept" />
              </node>
            </node>
            <node concept="3TrEf2" id="5w895fhuj6_" role="2OqNvi">
              <ref role="3Tt5mk" to="tpce:f_TJDff" resolve="extends" />
            </node>
          </node>
          <node concept="3w_OXm" id="5w895fhujje" role="2OqNvi" />
        </node>
        <node concept="3clFbS" id="5w895fhuibo" role="3clFbx">
          <node concept="2MkqsV" id="5w895fhujmw" role="3cqZAp">
            <node concept="Xl_RD" id="5w895fhujmG" role="2MkJ7o">
              <property role="Xl_RC" value="the concept should inherit from something, or explicit from BaseConcept" />
            </node>
            <node concept="1YBJjd" id="5w895fhujoP" role="1urrMF">
              <ref role="1YBMHb" node="5w895fhuibi" resolve="conceptClient" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="5w895fhuibi" role="1YuTPh">
      <property role="TrG5h" value="conceptClient" />
      <ref role="1YaFvo" to="74bf:PKiUC77gMs" resolve="ConceptClient" />
    </node>
  </node>
  <node concept="18kY7G" id="5w895fhwpxv">
    <property role="TrG5h" value="check_ClientGenerator" />
    <node concept="3clFbS" id="5w895fhwpxw" role="18ibNy">
      <node concept="3clFbJ" id="5w895fhwpxA" role="3cqZAp">
        <node concept="2OqwBi" id="5w895fhwqcJ" role="3clFbw">
          <node concept="2OqwBi" id="5w895fhwpFx" role="2Oq$k0">
            <node concept="1YBJjd" id="5w895fhwpxP" role="2Oq$k0">
              <ref role="1YBMHb" node="5w895fhwpxy" resolve="clientGenerator" />
            </node>
            <node concept="3TrcHB" id="5w895fhwpO9" role="2OqNvi">
              <ref role="3TsBF5" to="74bf:PKiUC77KtY" resolve="baseTargetNameSpace" />
            </node>
          </node>
          <node concept="17RlXB" id="5w895fhwqrO" role="2OqNvi" />
        </node>
        <node concept="3clFbS" id="5w895fhwpxC" role="3clFbx">
          <node concept="2MkqsV" id="5w895fhwqsc" role="3cqZAp">
            <node concept="Xl_RD" id="5w895fhwqsr" role="2MkJ7o">
              <property role="Xl_RC" value="Base target namespace should not be empty" />
            </node>
            <node concept="1YBJjd" id="5w895fhwqtJ" role="1urrMF">
              <ref role="1YBMHb" node="5w895fhwpxy" resolve="clientGenerator" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="5w895fhwpxy" role="1YuTPh">
      <property role="TrG5h" value="clientGenerator" />
      <ref role="1YaFvo" to="74bf:PKiUC77gUi" resolve="ClientGenerator" />
    </node>
  </node>
  <node concept="18kY7G" id="5fYI6AyJWVM">
    <property role="TrG5h" value="check_ClientGenerator_circulairDependency" />
    <node concept="3clFbS" id="5fYI6AyJWVN" role="18ibNy">
      <node concept="3cpWs8" id="5fYI6AyJWWe" role="3cqZAp">
        <node concept="3cpWsn" id="5fYI6AyJWWh" role="3cpWs9">
          <property role="TrG5h" value="sequence" />
          <node concept="A3Dl8" id="5fYI6AyJWWc" role="1tU5fm">
            <node concept="3Tqbb2" id="5fYI6AyJWWs" role="A3Ik2">
              <ref role="ehGHo" to="74bf:PKiUC77gUi" resolve="ClientGenerator" />
            </node>
          </node>
          <node concept="2OqwBi" id="5fYI6AyJX71" role="33vP2m">
            <node concept="1YBJjd" id="5fYI6AyJWX9" role="2Oq$k0">
              <ref role="1YBMHb" node="5fYI6AyJWVR" resolve="clientGenerator" />
            </node>
            <node concept="2qgKlT" id="5fYI6AyJXgo" role="2OqNvi">
              <ref role="37wK5l" to="deao:5fYI6AyJHKP" resolve="DetectCirculairDependency" />
              <node concept="10Nm6u" id="5fYI6AyJY_L" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="5fYI6AyJYFm" role="3cqZAp">
        <node concept="3clFbS" id="5fYI6AyJYFo" role="3clFbx">
          <node concept="2MkqsV" id="5fYI6AyJZ2X" role="3cqZAp">
            <node concept="3cpWs3" id="5fYI6AyJZlH" role="2MkJ7o">
              <node concept="2YIFZM" id="5fYI6AyJZmy" role="3uHU7w">
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <ref role="37wK5l" to="wyt6:~String.join(java.lang.CharSequence,java.lang.Iterable)" resolve="join" />
                <node concept="Xl_RD" id="5fYI6AyJZn0" role="37wK5m">
                  <property role="Xl_RC" value=" -&gt; " />
                </node>
                <node concept="2OqwBi" id="5fYI6AyJZQ_" role="37wK5m">
                  <node concept="37vLTw" id="5fYI6AyJZz2" role="2Oq$k0">
                    <ref role="3cqZAo" node="5fYI6AyJWWh" resolve="sequence" />
                  </node>
                  <node concept="3$u5V9" id="5fYI6AyK003" role="2OqNvi">
                    <node concept="1bVj0M" id="5fYI6AyK005" role="23t8la">
                      <node concept="3clFbS" id="5fYI6AyK006" role="1bW5cS">
                        <node concept="3clFbF" id="5fYI6AyK09H" role="3cqZAp">
                          <node concept="2OqwBi" id="5fYI6AyK0vz" role="3clFbG">
                            <node concept="37vLTw" id="5fYI6AyK09G" role="2Oq$k0">
                              <ref role="3cqZAo" node="5fYI6AyK007" resolve="it" />
                            </node>
                            <node concept="3TrcHB" id="5fYI6AyK0EQ" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="5fYI6AyK007" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="5fYI6AyK008" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="5fYI6AyJZ3c" role="3uHU7B">
                <property role="Xl_RC" value="there is a circulair dependency: " />
              </node>
            </node>
            <node concept="1YBJjd" id="5fYI6AyK1Gu" role="1urrMF">
              <ref role="1YBMHb" node="5fYI6AyJWVR" resolve="clientGenerator" />
            </node>
          </node>
        </node>
        <node concept="2OqwBi" id="5fYI6AyJYU9" role="3clFbw">
          <node concept="37vLTw" id="5fYI6AyJYGw" role="2Oq$k0">
            <ref role="3cqZAo" node="5fYI6AyJWWh" resolve="sequence" />
          </node>
          <node concept="3GX2aA" id="5fYI6AyJZ2H" role="2OqNvi" />
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="5fYI6AyJWVR" role="1YuTPh">
      <property role="TrG5h" value="clientGenerator" />
      <ref role="1YaFvo" to="74bf:PKiUC77gUi" resolve="ClientGenerator" />
    </node>
  </node>
  <node concept="18kY7G" id="6_xZaXNw7uA">
    <property role="TrG5h" value="checkNoDuplications_AbstractConceptPropertyAddition" />
    <property role="3GE5qa" value="Addition" />
    <node concept="3clFbS" id="6_xZaXNw7uB" role="18ibNy">
      <node concept="3clFbJ" id="6_xZaXNwcxF" role="3cqZAp">
        <node concept="3clFbS" id="6_xZaXNwcxH" role="3clFbx">
          <node concept="2MkqsV" id="6_xZaXNwcGg" role="3cqZAp">
            <node concept="Xl_RD" id="6_xZaXNwcGv" role="2MkJ7o">
              <property role="Xl_RC" value="Duplication addition for same concept" />
            </node>
            <node concept="1YBJjd" id="6_xZaXNwcZQ" role="1urrMF">
              <ref role="1YBMHb" node="6_xZaXNw7uD" resolve="namedStructureClientAdditions" />
            </node>
          </node>
        </node>
        <node concept="2OqwBi" id="6_xZaXNw9g3" role="3clFbw">
          <node concept="2OqwBi" id="6_xZaXNw7U3" role="2Oq$k0">
            <node concept="2OqwBi" id="6_xZaXNw7Ap" role="2Oq$k0">
              <node concept="1YBJjd" id="6_xZaXNw7uH" role="2Oq$k0">
                <ref role="1YBMHb" node="6_xZaXNw7uD" resolve="namedStructureClientAdditions" />
              </node>
              <node concept="2Xjw5R" id="6_xZaXNw7IO" role="2OqNvi">
                <node concept="1xMEDy" id="6_xZaXNw7IQ" role="1xVPHs">
                  <node concept="chp4Y" id="6_xZaXNw7KV" role="ri$Ld">
                    <ref role="cht4Q" to="74bf:PKiUC77gMs" resolve="ConceptClient" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Tsc0h" id="6_xZaXNw86B" role="2OqNvi">
              <ref role="3TtcxE" to="74bf:6_xZaXNvZn6" resolve="additions" />
            </node>
          </node>
          <node concept="2HwmR7" id="6_xZaXNwapX" role="2OqNvi">
            <node concept="1bVj0M" id="6_xZaXNwapZ" role="23t8la">
              <node concept="3clFbS" id="6_xZaXNwaq0" role="1bW5cS">
                <node concept="3clFbF" id="6_xZaXNwawX" role="3cqZAp">
                  <node concept="1Wc70l" id="6_xZaXNwDVo" role="3clFbG">
                    <node concept="3y3z36" id="6_xZaXNwE3n" role="3uHU7B">
                      <node concept="1YBJjd" id="6_xZaXNwEfb" role="3uHU7w">
                        <ref role="1YBMHb" node="6_xZaXNw7uD" resolve="namedStructureClientAdditions" />
                      </node>
                      <node concept="37vLTw" id="6_xZaXNwDYN" role="3uHU7B">
                        <ref role="3cqZAo" node="6_xZaXNwaq1" resolve="it" />
                      </node>
                    </node>
                    <node concept="3clFbC" id="6_xZaXNwb93" role="3uHU7w">
                      <node concept="2OqwBi" id="6_xZaXNwbn8" role="3uHU7w">
                        <node concept="1YBJjd" id="6_xZaXNwblk" role="2Oq$k0">
                          <ref role="1YBMHb" node="6_xZaXNw7uD" resolve="namedStructureClientAdditions" />
                        </node>
                        <node concept="3TrEf2" id="6_xZaXNwbu1" role="2OqNvi">
                          <ref role="3Tt5mk" to="74bf:6_xZaXNv8$Y" resolve="target" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="6_xZaXNwaHb" role="3uHU7B">
                        <node concept="37vLTw" id="6_xZaXNwawW" role="2Oq$k0">
                          <ref role="3cqZAo" node="6_xZaXNwaq1" resolve="it" />
                        </node>
                        <node concept="3TrEf2" id="6_xZaXNwaS4" role="2OqNvi">
                          <ref role="3Tt5mk" to="74bf:6_xZaXNv8$Y" resolve="target" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Rh6nW" id="6_xZaXNwaq1" role="1bW2Oz">
                <property role="TrG5h" value="it" />
                <node concept="2jxLKc" id="6_xZaXNwaq2" role="1tU5fm" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="6_xZaXNw7uD" role="1YuTPh">
      <property role="TrG5h" value="namedStructureClientAdditions" />
      <ref role="1YaFvo" to="74bf:6_xZaXNwdfE" resolve="NamedStructureClientAdditions" />
    </node>
  </node>
</model>

