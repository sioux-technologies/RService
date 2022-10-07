<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:cd77da81-ae35-41e9-b4b1-1400d056dac8(eu.sioux.mps.rserver.client.behavior)">
  <persistence version="9" />
  <languages>
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="tpcg" ref="r:00000000-0000-4000-0000-011c8959028c(jetbrains.mps.lang.structure.constraints)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="74bf" ref="r:fbbd8fd4-3d94-4974-8b29-623f74c85604(eu.sioux.mps.rserver.client.structure)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="6496299201655527393" name="jetbrains.mps.lang.behavior.structure.LocalBehaviorMethodCall" flags="nn" index="BsUDl" />
      <concept id="1225194240794" name="jetbrains.mps.lang.behavior.structure.ConceptBehavior" flags="ng" index="13h7C7">
        <reference id="1225194240799" name="concept" index="13h7C2" />
        <child id="1225194240805" name="method" index="13h7CS" />
        <child id="1225194240801" name="constructor" index="13h7CW" />
      </concept>
      <concept id="1225194413805" name="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" flags="in" index="13hLZK" />
      <concept id="1225194472830" name="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" flags="ng" index="13i0hz">
        <property id="1225194472832" name="isVirtual" index="13i0it" />
        <property id="1225194472834" name="isAbstract" index="13i0iv" />
        <reference id="1225194472831" name="overriddenMethod" index="13i0hy" />
      </concept>
      <concept id="1225194691553" name="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" flags="nn" index="13iPFW" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271369338" name="jetbrains.mps.baseLanguage.structure.IsEmptyOperation" flags="nn" index="17RlXB" />
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1200397529627" name="jetbrains.mps.baseLanguage.structure.CharConstant" flags="nn" index="1Xhbcc">
        <property id="1200397540847" name="charConstant" index="1XhdNS" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1200830824066" name="jetbrains.mps.baseLanguage.closures.structure.YieldStatement" flags="nn" index="2n63Yl">
        <child id="1200830928149" name="expression" index="2n6tg2" />
      </concept>
      <concept id="1228997946467" name="jetbrains.mps.baseLanguage.closures.structure.YieldAllStatement" flags="nn" index="_Z6PX">
        <child id="1228997959377" name="expression" index="_Z9Zf" />
      </concept>
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
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
      <concept id="4693937538533521280" name="jetbrains.mps.lang.smodel.structure.OfConceptOperation" flags="ng" index="v3k3i">
        <child id="4693937538533538124" name="requestedConcept" index="v3oSu" />
      </concept>
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="6995935425733782641" name="jetbrains.mps.lang.smodel.structure.Model_GetModule" flags="nn" index="13u695" />
      <concept id="3562215692195599741" name="jetbrains.mps.lang.smodel.structure.SLinkImplicitSelect" flags="nn" index="13MTOL">
        <reference id="3562215692195600259" name="link" index="13MTZf" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
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
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1176906603202" name="jetbrains.mps.baseLanguage.collections.structure.BinaryOperation" flags="nn" index="56pJg">
        <child id="1176906787974" name="rightExpression" index="576Qk" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1224414427926" name="jetbrains.mps.baseLanguage.collections.structure.SequenceCreator" flags="nn" index="kMnCb">
        <child id="1224414456414" name="elementType" index="kMuH3" />
        <child id="1224414466839" name="initializer" index="kMx8a" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1235566554328" name="jetbrains.mps.baseLanguage.collections.structure.AnyOperation" flags="nn" index="2HwmR7" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1201792049884" name="jetbrains.mps.baseLanguage.collections.structure.TranslateOperation" flags="nn" index="3goQfb" />
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
      <concept id="1180964022718" name="jetbrains.mps.baseLanguage.collections.structure.ConcatOperation" flags="nn" index="3QWeyG" />
      <concept id="1178894719932" name="jetbrains.mps.baseLanguage.collections.structure.DistinctOperation" flags="nn" index="1VAtEI" />
    </language>
  </registry>
  <node concept="13h7C7" id="PKiUC7abPy">
    <ref role="13h7C2" to="74bf:PKiUC77gUi" resolve="ClientGenerator" />
    <node concept="13i0hz" id="PKiUC7aN_X" role="13h7CS">
      <property role="TrG5h" value="GetMPSCodeNamespace" />
      <node concept="37vLTG" id="PKiUC7aNK8" role="3clF46">
        <property role="TrG5h" value="element" />
        <node concept="3Tqbb2" id="PKiUC7aNK9" role="1tU5fm">
          <ref role="ehGHo" to="tpce:1ob16QT2yIl" resolve="INamedStructureElement" />
        </node>
      </node>
      <node concept="3Tm1VV" id="PKiUC7aN_Y" role="1B3o_S" />
      <node concept="17QB3L" id="PKiUC7aNIX" role="3clF45" />
      <node concept="3clFbS" id="PKiUC7aNA0" role="3clF47">
        <node concept="3clFbJ" id="PKiUC7l_EZ" role="3cqZAp">
          <node concept="3clFbS" id="PKiUC7l_F0" role="3clFbx">
            <node concept="3cpWs6" id="PKiUC7l_F1" role="3cqZAp">
              <node concept="3cpWs3" id="PKiUC7l_F2" role="3cqZAk">
                <node concept="3cpWs3" id="PKiUC7l_F3" role="3uHU7B">
                  <node concept="Xl_RD" id="PKiUC7l_F5" role="3uHU7w">
                    <property role="Xl_RC" value="." />
                  </node>
                  <node concept="2OqwBi" id="PKiUC7l_JA" role="3uHU7B">
                    <node concept="2OqwBi" id="PKiUC7l_JB" role="2Oq$k0">
                      <node concept="2OqwBi" id="PKiUC7l_JC" role="2Oq$k0">
                        <node concept="37vLTw" id="PKiUC7l_JD" role="2Oq$k0">
                          <ref role="3cqZAo" node="PKiUC7aNK8" resolve="element" />
                        </node>
                        <node concept="I4A8Y" id="PKiUC7l_JE" role="2OqNvi" />
                      </node>
                      <node concept="13u695" id="PKiUC7l_JF" role="2OqNvi" />
                    </node>
                    <node concept="3TrcHB" id="PKiUC7l_JG" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="PKiUC7l_F6" role="3uHU7w">
                  <node concept="3TrcHB" id="PKiUC7l_F7" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:hnGE5uv" resolve="virtualPackage" />
                  </node>
                  <node concept="37vLTw" id="PKiUC7l_F8" role="2Oq$k0">
                    <ref role="3cqZAo" node="PKiUC7aNK8" resolve="element" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="PKiUC7l_F9" role="3clFbw">
            <node concept="2OqwBi" id="PKiUC7l_Fa" role="2Oq$k0">
              <node concept="3TrcHB" id="PKiUC7l_Fb" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:hnGE5uv" resolve="virtualPackage" />
              </node>
              <node concept="37vLTw" id="PKiUC7l_Fc" role="2Oq$k0">
                <ref role="3cqZAo" node="PKiUC7aNK8" resolve="element" />
              </node>
            </node>
            <node concept="17RvpY" id="PKiUC7l_Fd" role="2OqNvi" />
          </node>
          <node concept="9aQIb" id="PKiUC7l_Fe" role="9aQIa">
            <node concept="3clFbS" id="PKiUC7l_Ff" role="9aQI4">
              <node concept="3cpWs6" id="PKiUC7l_Fg" role="3cqZAp">
                <node concept="2OqwBi" id="PKiUC7l_Qw" role="3cqZAk">
                  <node concept="2OqwBi" id="PKiUC7l_Qx" role="2Oq$k0">
                    <node concept="2OqwBi" id="PKiUC7l_Qy" role="2Oq$k0">
                      <node concept="37vLTw" id="PKiUC7l_Qz" role="2Oq$k0">
                        <ref role="3cqZAo" node="PKiUC7aNK8" resolve="element" />
                      </node>
                      <node concept="I4A8Y" id="PKiUC7l_Q$" role="2OqNvi" />
                    </node>
                    <node concept="13u695" id="PKiUC7l_Q_" role="2OqNvi" />
                  </node>
                  <node concept="3TrcHB" id="PKiUC7l_QA" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="PKiUC7aPwH" role="13h7CS">
      <property role="TrG5h" value="GetMPSCodeFqName" />
      <node concept="37vLTG" id="PKiUC7aPHg" role="3clF46">
        <property role="TrG5h" value="element" />
        <node concept="3Tqbb2" id="PKiUC7aPHh" role="1tU5fm">
          <ref role="ehGHo" to="tpce:1ob16QT2yIl" resolve="INamedStructureElement" />
        </node>
      </node>
      <node concept="3Tm1VV" id="PKiUC7aPwI" role="1B3o_S" />
      <node concept="17QB3L" id="PKiUC7aPGt" role="3clF45" />
      <node concept="3clFbS" id="PKiUC7aPwK" role="3clF47">
        <node concept="3clFbF" id="PKiUC7lA6C" role="3cqZAp">
          <node concept="3cpWs3" id="PKiUC7lA6D" role="3clFbG">
            <node concept="2OqwBi" id="PKiUC7lA6E" role="3uHU7w">
              <node concept="37vLTw" id="PKiUC7lA6F" role="2Oq$k0">
                <ref role="3cqZAo" node="PKiUC7aPHg" resolve="element" />
              </node>
              <node concept="3TrcHB" id="PKiUC7lA6G" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="3cpWs3" id="PKiUC7lA6H" role="3uHU7B">
              <node concept="Xl_RD" id="PKiUC7lA6I" role="3uHU7w">
                <property role="Xl_RC" value="." />
              </node>
              <node concept="BsUDl" id="PKiUC7lA6J" role="3uHU7B">
                <ref role="37wK5l" node="PKiUC7aN_X" resolve="GetMPSCodeNamespace" />
                <node concept="37vLTw" id="PKiUC7lA6K" role="37wK5m">
                  <ref role="3cqZAo" node="PKiUC7aPHg" resolve="element" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="PKiUC7aPX3" role="13h7CS">
      <property role="TrG5h" value="GetTargetCodeNamespace" />
      <node concept="37vLTG" id="PKiUC7aQi_" role="3clF46">
        <property role="TrG5h" value="element" />
        <node concept="3Tqbb2" id="PKiUC7aQiA" role="1tU5fm">
          <ref role="ehGHo" to="tpce:1ob16QT2yIl" resolve="INamedStructureElement" />
        </node>
      </node>
      <node concept="3Tm1VV" id="PKiUC7aPX4" role="1B3o_S" />
      <node concept="17QB3L" id="PKiUC7aQdF" role="3clF45" />
      <node concept="3clFbS" id="PKiUC7aPX6" role="3clF47">
        <node concept="3clFbJ" id="PKiUC7j4zb" role="3cqZAp">
          <node concept="3clFbS" id="PKiUC7j4zc" role="3clFbx">
            <node concept="3cpWs8" id="PKiUC7j4zd" role="3cqZAp">
              <node concept="3cpWsn" id="PKiUC7j4ze" role="3cpWs9">
                <property role="TrG5h" value="generator" />
                <node concept="3Tqbb2" id="PKiUC7j4zf" role="1tU5fm">
                  <ref role="ehGHo" to="74bf:PKiUC77gUi" resolve="ClientGenerator" />
                </node>
                <node concept="BsUDl" id="PKiUC7j4zg" role="33vP2m">
                  <ref role="37wK5l" node="PKiUC7iPTf" resolve="SearchGenerator" />
                  <node concept="37vLTw" id="PKiUC7j4zh" role="37wK5m">
                    <ref role="3cqZAo" node="PKiUC7aQi_" resolve="element" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="PKiUC7j4zi" role="3cqZAp">
              <node concept="3clFbS" id="PKiUC7j4zj" role="3clFbx">
                <node concept="YS8fn" id="PKiUC7j4zk" role="3cqZAp">
                  <node concept="2ShNRf" id="PKiUC7j4zl" role="YScLw">
                    <node concept="1pGfFk" id="PKiUC7j4zm" role="2ShVmc">
                      <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                      <node concept="3cpWs3" id="5w895fhwKUk" role="37wK5m">
                        <node concept="Xl_RD" id="5w895fhwKUl" role="3uHU7w">
                          <property role="Xl_RC" value=" is not supported by this generator or any using generator" />
                        </node>
                        <node concept="3cpWs3" id="5w895fhwKUm" role="3uHU7B">
                          <node concept="Xl_RD" id="5w895fhwKUn" role="3uHU7B">
                            <property role="Xl_RC" value="concept " />
                          </node>
                          <node concept="2OqwBi" id="5w895fhwKUo" role="3uHU7w">
                            <node concept="37vLTw" id="5w895fhwKUp" role="2Oq$k0">
                              <ref role="3cqZAo" node="PKiUC7aQi_" resolve="element" />
                            </node>
                            <node concept="2qgKlT" id="5w895fhwKUq" role="2OqNvi">
                              <ref role="37wK5l" to="tpcu:hEwIO9y" resolve="getFqName" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="PKiUC7j4zs" role="3clFbw">
                <node concept="37vLTw" id="PKiUC7j4zt" role="2Oq$k0">
                  <ref role="3cqZAo" node="PKiUC7j4ze" resolve="generator" />
                </node>
                <node concept="3w_OXm" id="PKiUC7j4zu" role="2OqNvi" />
              </node>
            </node>
            <node concept="3cpWs6" id="PKiUC7j5F9" role="3cqZAp">
              <node concept="2OqwBi" id="PKiUC7j4zw" role="3cqZAk">
                <node concept="37vLTw" id="PKiUC7j4zx" role="2Oq$k0">
                  <ref role="3cqZAo" node="PKiUC7j4ze" resolve="generator" />
                </node>
                <node concept="2qgKlT" id="PKiUC7j4zy" role="2OqNvi">
                  <ref role="37wK5l" node="PKiUC7aPX3" resolve="GetTargetCodeNamespace" />
                  <node concept="37vLTw" id="PKiUC7j4zz" role="37wK5m">
                    <ref role="3cqZAo" node="PKiUC7aQi_" resolve="element" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="PKiUC7j4z$" role="3clFbw">
            <node concept="BsUDl" id="PKiUC7j4z_" role="3fr31v">
              <ref role="37wK5l" node="PKiUC7izmd" resolve="Implements" />
              <node concept="37vLTw" id="PKiUC7j4zA" role="37wK5m">
                <ref role="3cqZAo" node="PKiUC7aQi_" resolve="element" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="PKiUC7luD0" role="3cqZAp">
          <node concept="3cpWsn" id="PKiUC7luD1" role="3cpWs9">
            <property role="TrG5h" value="custom" />
            <node concept="3Tqbb2" id="PKiUC7luD2" role="1tU5fm">
              <ref role="ehGHo" to="74bf:PKiUC7lbTW" resolve="CustomImplementation" />
            </node>
            <node concept="2OqwBi" id="PKiUC7luD3" role="33vP2m">
              <node concept="2OqwBi" id="PKiUC7luD4" role="2Oq$k0">
                <node concept="2OqwBi" id="PKiUC7luD5" role="2Oq$k0">
                  <node concept="13iPFW" id="PKiUC7luD6" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="PKiUC7luD7" role="2OqNvi">
                    <ref role="3TtcxE" to="74bf:PKiUC77gUj" resolve="content" />
                  </node>
                </node>
                <node concept="v3k3i" id="PKiUC7luD8" role="2OqNvi">
                  <node concept="chp4Y" id="PKiUC7luD9" role="v3oSu">
                    <ref role="cht4Q" to="74bf:PKiUC7lbTW" resolve="CustomImplementation" />
                  </node>
                </node>
              </node>
              <node concept="1z4cxt" id="PKiUC7luDa" role="2OqNvi">
                <node concept="1bVj0M" id="PKiUC7luDb" role="23t8la">
                  <node concept="3clFbS" id="PKiUC7luDc" role="1bW5cS">
                    <node concept="3clFbF" id="PKiUC7luDd" role="3cqZAp">
                      <node concept="2OqwBi" id="5w895fhuMxF" role="3clFbG">
                        <node concept="2OqwBi" id="PKiUC7luDg" role="2Oq$k0">
                          <node concept="37vLTw" id="PKiUC7luDh" role="2Oq$k0">
                            <ref role="3cqZAo" node="PKiUC7luDj" resolve="it" />
                          </node>
                          <node concept="2qgKlT" id="PKiUC7luDi" role="2OqNvi">
                            <ref role="37wK5l" node="5w895fhuANt" resolve="Targets" />
                          </node>
                        </node>
                        <node concept="3JPx81" id="5w895fhuN5u" role="2OqNvi">
                          <node concept="37vLTw" id="5w895fhuNVr" role="25WWJ7">
                            <ref role="3cqZAo" node="PKiUC7aQi_" resolve="element" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="PKiUC7luDj" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="PKiUC7luDk" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="PKiUC7luDl" role="3cqZAp">
          <node concept="3clFbS" id="PKiUC7luDm" role="3clFbx">
            <node concept="3cpWs6" id="PKiUC7luDn" role="3cqZAp">
              <node concept="2OqwBi" id="PKiUC7luDo" role="3cqZAk">
                <node concept="37vLTw" id="PKiUC7luDp" role="2Oq$k0">
                  <ref role="3cqZAo" node="PKiUC7luD1" resolve="custom" />
                </node>
                <node concept="3TrcHB" id="PKiUC7luDq" role="2OqNvi">
                  <ref role="3TsBF5" to="74bf:PKiUC7lchL" resolve="TargetImplementationNamespace" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="PKiUC7luDr" role="3clFbw">
            <node concept="37vLTw" id="PKiUC7luDs" role="2Oq$k0">
              <ref role="3cqZAo" node="PKiUC7luD1" resolve="custom" />
            </node>
            <node concept="3x8VRR" id="PKiUC7luDt" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbJ" id="PKiUC7luDu" role="3cqZAp">
          <node concept="3clFbS" id="PKiUC7luDv" role="3clFbx">
            <node concept="3cpWs6" id="PKiUC7luDw" role="3cqZAp">
              <node concept="3cpWs3" id="PKiUC7luDx" role="3cqZAk">
                <node concept="3cpWs3" id="PKiUC7luDy" role="3uHU7B">
                  <node concept="Xl_RD" id="PKiUC7luD$" role="3uHU7w">
                    <property role="Xl_RC" value="." />
                  </node>
                  <node concept="2OqwBi" id="PKiUC7lvp2" role="3uHU7B">
                    <node concept="13iPFW" id="PKiUC7lvp3" role="2Oq$k0" />
                    <node concept="3TrcHB" id="PKiUC7lvp4" role="2OqNvi">
                      <ref role="3TsBF5" to="74bf:PKiUC77KtY" resolve="baseTargetNameSpace" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="PKiUC7luD_" role="3uHU7w">
                  <node concept="3TrcHB" id="PKiUC7luDA" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:hnGE5uv" resolve="virtualPackage" />
                  </node>
                  <node concept="37vLTw" id="PKiUC7luDB" role="2Oq$k0">
                    <ref role="3cqZAo" node="PKiUC7aQi_" resolve="element" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="PKiUC7luDC" role="3clFbw">
            <node concept="2OqwBi" id="PKiUC7luDD" role="2Oq$k0">
              <node concept="3TrcHB" id="PKiUC7luDE" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:hnGE5uv" resolve="virtualPackage" />
              </node>
              <node concept="37vLTw" id="PKiUC7luDF" role="2Oq$k0">
                <ref role="3cqZAo" node="PKiUC7aQi_" resolve="element" />
              </node>
            </node>
            <node concept="17RvpY" id="PKiUC7luDG" role="2OqNvi" />
          </node>
          <node concept="9aQIb" id="PKiUC7luDH" role="9aQIa">
            <node concept="3clFbS" id="PKiUC7luDI" role="9aQI4">
              <node concept="3cpWs6" id="PKiUC7luDJ" role="3cqZAp">
                <node concept="2OqwBi" id="PKiUC7lvFu" role="3cqZAk">
                  <node concept="13iPFW" id="PKiUC7lvFv" role="2Oq$k0" />
                  <node concept="3TrcHB" id="PKiUC7lvFw" role="2OqNvi">
                    <ref role="3TsBF5" to="74bf:PKiUC77KtY" resolve="baseTargetNameSpace" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="PKiUC7b6Ck" role="13h7CS">
      <property role="TrG5h" value="GetTargetCodeFqName" />
      <node concept="37vLTG" id="PKiUC7b6SD" role="3clF46">
        <property role="TrG5h" value="element" />
        <node concept="3Tqbb2" id="PKiUC7b6SE" role="1tU5fm">
          <ref role="ehGHo" to="tpce:1ob16QT2yIl" resolve="INamedStructureElement" />
        </node>
      </node>
      <node concept="3Tm1VV" id="PKiUC7b6Cl" role="1B3o_S" />
      <node concept="17QB3L" id="PKiUC7b6RI" role="3clF45" />
      <node concept="3clFbS" id="PKiUC7b6Cn" role="3clF47">
        <node concept="3clFbJ" id="PKiUC7b6SR" role="3cqZAp">
          <node concept="3clFbS" id="PKiUC7b6SS" role="3clFbx">
            <node concept="3cpWs8" id="PKiUC7iZBh" role="3cqZAp">
              <node concept="3cpWsn" id="PKiUC7iZBk" role="3cpWs9">
                <property role="TrG5h" value="generator" />
                <node concept="3Tqbb2" id="PKiUC7iZBf" role="1tU5fm">
                  <ref role="ehGHo" to="74bf:PKiUC77gUi" resolve="ClientGenerator" />
                </node>
                <node concept="BsUDl" id="PKiUC7j06J" role="33vP2m">
                  <ref role="37wK5l" node="PKiUC7iPTf" resolve="SearchGenerator" />
                  <node concept="37vLTw" id="PKiUC7j1$d" role="37wK5m">
                    <ref role="3cqZAo" node="PKiUC7b6SD" resolve="element" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="PKiUC7j1ST" role="3cqZAp">
              <node concept="3clFbS" id="PKiUC7j1SV" role="3clFbx">
                <node concept="YS8fn" id="PKiUC7b6ST" role="3cqZAp">
                  <node concept="2ShNRf" id="PKiUC7b6SU" role="YScLw">
                    <node concept="1pGfFk" id="PKiUC7b6SV" role="2ShVmc">
                      <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                      <node concept="3cpWs3" id="5w895fhwGAL" role="37wK5m">
                        <node concept="Xl_RD" id="5w895fhwGYd" role="3uHU7w">
                          <property role="Xl_RC" value=" is not supported by this generator or any using generator" />
                        </node>
                        <node concept="3cpWs3" id="PKiUC7dkhs" role="3uHU7B">
                          <node concept="Xl_RD" id="PKiUC7djnR" role="3uHU7B">
                            <property role="Xl_RC" value="concept " />
                          </node>
                          <node concept="2OqwBi" id="PKiUC7dkxm" role="3uHU7w">
                            <node concept="37vLTw" id="PKiUC7dklc" role="2Oq$k0">
                              <ref role="3cqZAo" node="PKiUC7b6SD" resolve="element" />
                            </node>
                            <node concept="2qgKlT" id="PKiUC7dkIw" role="2OqNvi">
                              <ref role="37wK5l" to="tpcu:hEwIO9y" resolve="getFqName" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="PKiUC7j2cu" role="3clFbw">
                <node concept="37vLTw" id="PKiUC7j1Xb" role="2Oq$k0">
                  <ref role="3cqZAo" node="PKiUC7iZBk" resolve="generator" />
                </node>
                <node concept="3w_OXm" id="PKiUC7j2KQ" role="2OqNvi" />
              </node>
            </node>
            <node concept="3cpWs6" id="PKiUC7j6mg" role="3cqZAp">
              <node concept="2OqwBi" id="PKiUC7j3_U" role="3cqZAk">
                <node concept="37vLTw" id="PKiUC7j3jD" role="2Oq$k0">
                  <ref role="3cqZAo" node="PKiUC7iZBk" resolve="generator" />
                </node>
                <node concept="2qgKlT" id="PKiUC7j3MR" role="2OqNvi">
                  <ref role="37wK5l" node="PKiUC7b6Ck" resolve="GetTargetCodeFqName" />
                  <node concept="37vLTw" id="PKiUC7j3SS" role="37wK5m">
                    <ref role="3cqZAo" node="PKiUC7b6SD" resolve="element" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="PKiUC7b6SW" role="3clFbw">
            <node concept="BsUDl" id="PKiUC7iZeW" role="3fr31v">
              <ref role="37wK5l" node="PKiUC7izmd" resolve="Implements" />
              <node concept="37vLTw" id="PKiUC7iZlj" role="37wK5m">
                <ref role="3cqZAo" node="PKiUC7b6SD" resolve="element" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="PKiUC7lwav" role="3cqZAp">
          <node concept="3cpWsn" id="PKiUC7lwaw" role="3cpWs9">
            <property role="TrG5h" value="custom" />
            <node concept="3Tqbb2" id="PKiUC7lwax" role="1tU5fm">
              <ref role="ehGHo" to="74bf:PKiUC7lbTW" resolve="CustomImplementation" />
            </node>
            <node concept="2OqwBi" id="PKiUC7lway" role="33vP2m">
              <node concept="2OqwBi" id="PKiUC7lwaz" role="2Oq$k0">
                <node concept="2OqwBi" id="PKiUC7lwa$" role="2Oq$k0">
                  <node concept="13iPFW" id="PKiUC7lwa_" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="PKiUC7lwaA" role="2OqNvi">
                    <ref role="3TtcxE" to="74bf:PKiUC77gUj" resolve="content" />
                  </node>
                </node>
                <node concept="v3k3i" id="PKiUC7lwaB" role="2OqNvi">
                  <node concept="chp4Y" id="PKiUC7lwaC" role="v3oSu">
                    <ref role="cht4Q" to="74bf:PKiUC7lbTW" resolve="CustomImplementation" />
                  </node>
                </node>
              </node>
              <node concept="1z4cxt" id="PKiUC7lwaD" role="2OqNvi">
                <node concept="1bVj0M" id="PKiUC7lwaE" role="23t8la">
                  <node concept="3clFbS" id="PKiUC7lwaF" role="1bW5cS">
                    <node concept="3clFbF" id="PKiUC7lwaG" role="3cqZAp">
                      <node concept="2OqwBi" id="5w895fhuOAY" role="3clFbG">
                        <node concept="2OqwBi" id="5w895fhuOAZ" role="2Oq$k0">
                          <node concept="37vLTw" id="5w895fhuOB0" role="2Oq$k0">
                            <ref role="3cqZAo" node="PKiUC7lwaM" resolve="it" />
                          </node>
                          <node concept="2qgKlT" id="5w895fhuOB1" role="2OqNvi">
                            <ref role="37wK5l" node="5w895fhuANt" resolve="Targets" />
                          </node>
                        </node>
                        <node concept="3JPx81" id="5w895fhuOB2" role="2OqNvi">
                          <node concept="37vLTw" id="5w895fhuOB3" role="25WWJ7">
                            <ref role="3cqZAo" node="PKiUC7b6SD" resolve="element" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="PKiUC7lwaM" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="PKiUC7lwaN" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="PKiUC7lwaO" role="3cqZAp">
          <node concept="3clFbS" id="PKiUC7lwaP" role="3clFbx">
            <node concept="3cpWs6" id="PKiUC7lwaQ" role="3cqZAp">
              <node concept="3cpWs3" id="PKiUC7lzvi" role="3cqZAk">
                <node concept="2OqwBi" id="PKiUC7lzTD" role="3uHU7w">
                  <node concept="37vLTw" id="PKiUC7lz_R" role="2Oq$k0">
                    <ref role="3cqZAo" node="PKiUC7lwaw" resolve="custom" />
                  </node>
                  <node concept="3TrcHB" id="PKiUC7l$vU" role="2OqNvi">
                    <ref role="3TsBF5" to="74bf:PKiUC7lchN" resolve="TargetImplementationName" />
                  </node>
                </node>
                <node concept="3cpWs3" id="PKiUC7lyG6" role="3uHU7B">
                  <node concept="2OqwBi" id="PKiUC7lwaR" role="3uHU7B">
                    <node concept="37vLTw" id="PKiUC7lwaS" role="2Oq$k0">
                      <ref role="3cqZAo" node="PKiUC7lwaw" resolve="custom" />
                    </node>
                    <node concept="3TrcHB" id="PKiUC7lwaT" role="2OqNvi">
                      <ref role="3TsBF5" to="74bf:PKiUC7lchL" resolve="TargetImplementationNamespace" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="PKiUC7lyGh" role="3uHU7w">
                    <property role="Xl_RC" value="." />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="PKiUC7lwaU" role="3clFbw">
            <node concept="37vLTw" id="PKiUC7lwaV" role="2Oq$k0">
              <ref role="3cqZAo" node="PKiUC7lwaw" resolve="custom" />
            </node>
            <node concept="3x8VRR" id="PKiUC7lwaW" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbH" id="PKiUC7lw6b" role="3cqZAp" />
        <node concept="3cpWs6" id="PKiUC7lxJn" role="3cqZAp">
          <node concept="3cpWs3" id="PKiUC7lxr_" role="3cqZAk">
            <node concept="2OqwBi" id="PKiUC7lxrA" role="3uHU7w">
              <node concept="37vLTw" id="PKiUC7lxrB" role="2Oq$k0">
                <ref role="3cqZAo" node="PKiUC7b6SD" resolve="element" />
              </node>
              <node concept="3TrcHB" id="PKiUC7lxrC" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="3cpWs3" id="PKiUC7lxrD" role="3uHU7B">
              <node concept="Xl_RD" id="PKiUC7lxrE" role="3uHU7w">
                <property role="Xl_RC" value="." />
              </node>
              <node concept="BsUDl" id="PKiUC7lxrF" role="3uHU7B">
                <ref role="37wK5l" node="PKiUC7aPX3" resolve="GetTargetCodeNamespace" />
                <node concept="37vLTw" id="PKiUC7lxrG" role="37wK5m">
                  <ref role="3cqZAo" node="PKiUC7b6SD" resolve="element" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="PKiUC7izmd" role="13h7CS">
      <property role="TrG5h" value="Implements" />
      <node concept="37vLTG" id="PKiUC7izT3" role="3clF46">
        <property role="TrG5h" value="element" />
        <node concept="3Tqbb2" id="PKiUC7izT4" role="1tU5fm">
          <ref role="ehGHo" to="tpce:1ob16QT2yIl" resolve="INamedStructureElement" />
        </node>
      </node>
      <node concept="3Tm1VV" id="PKiUC7izme" role="1B3o_S" />
      <node concept="10P_77" id="PKiUC7izSK" role="3clF45" />
      <node concept="3clFbS" id="PKiUC7izmg" role="3clF47">
        <node concept="3clFbF" id="PKiUC7izTp" role="3cqZAp">
          <node concept="2OqwBi" id="PKiUC7izTr" role="3clFbG">
            <node concept="2OqwBi" id="PKiUC7izTs" role="2Oq$k0">
              <node concept="13iPFW" id="PKiUC7izTt" role="2Oq$k0" />
              <node concept="3Tsc0h" id="PKiUC7izTu" role="2OqNvi">
                <ref role="3TtcxE" to="74bf:PKiUC77gUj" resolve="content" />
              </node>
            </node>
            <node concept="2HwmR7" id="PKiUC7izTv" role="2OqNvi">
              <node concept="1bVj0M" id="PKiUC7izTw" role="23t8la">
                <node concept="3clFbS" id="PKiUC7izTx" role="1bW5cS">
                  <node concept="3clFbF" id="PKiUC7izTy" role="3cqZAp">
                    <node concept="2OqwBi" id="5w895fhuPcR" role="3clFbG">
                      <node concept="2OqwBi" id="5w895fhuPcS" role="2Oq$k0">
                        <node concept="37vLTw" id="5w895fhuPcT" role="2Oq$k0">
                          <ref role="3cqZAo" node="PKiUC7izTC" resolve="it" />
                        </node>
                        <node concept="2qgKlT" id="5w895fhuPcU" role="2OqNvi">
                          <ref role="37wK5l" node="5w895fhuANt" resolve="Targets" />
                        </node>
                      </node>
                      <node concept="3JPx81" id="5w895fhuPcV" role="2OqNvi">
                        <node concept="37vLTw" id="5w895fhuPcW" role="25WWJ7">
                          <ref role="3cqZAo" node="PKiUC7izT3" resolve="element" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="PKiUC7izTC" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="PKiUC7izTD" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="PKiUC7iPTf" role="13h7CS">
      <property role="TrG5h" value="SearchGenerator" />
      <node concept="37vLTG" id="PKiUC7iQxU" role="3clF46">
        <property role="TrG5h" value="element" />
        <node concept="3Tqbb2" id="PKiUC7iQxV" role="1tU5fm">
          <ref role="ehGHo" to="tpce:1ob16QT2yIl" resolve="INamedStructureElement" />
        </node>
      </node>
      <node concept="3Tm1VV" id="PKiUC7iPTg" role="1B3o_S" />
      <node concept="3clFbS" id="PKiUC7iPTi" role="3clF47">
        <node concept="3clFbF" id="5fYI6AyJAAd" role="3cqZAp">
          <node concept="2OqwBi" id="5fYI6AyJG5Z" role="3clFbG">
            <node concept="2OqwBi" id="5fYI6AyJEjK" role="2Oq$k0">
              <node concept="2ShNRf" id="5fYI6AyJAA9" role="2Oq$k0">
                <node concept="kMnCb" id="5fYI6AyJAWZ" role="2ShVmc">
                  <node concept="3Tqbb2" id="5fYI6AyJBfQ" role="kMuH3">
                    <ref role="ehGHo" to="74bf:PKiUC77gUi" resolve="ClientGenerator" />
                  </node>
                  <node concept="1bVj0M" id="5fYI6AyJCf3" role="kMx8a">
                    <node concept="3clFbS" id="5fYI6AyJCf4" role="1bW5cS">
                      <node concept="2n63Yl" id="5fYI6AyJCyY" role="3cqZAp">
                        <node concept="13iPFW" id="5fYI6AyJCQs" role="2n6tg2" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3QWeyG" id="5fYI6AyJER8" role="2OqNvi">
                <node concept="BsUDl" id="5fYI6AyJFbY" role="576Qk">
                  <ref role="37wK5l" node="5fYI6AyIjDP" resolve="GetAllDependencies" />
                </node>
              </node>
            </node>
            <node concept="1z4cxt" id="5fYI6AyJG6J" role="2OqNvi">
              <node concept="1bVj0M" id="5fYI6AyJG6K" role="23t8la">
                <node concept="3clFbS" id="5fYI6AyJG6L" role="1bW5cS">
                  <node concept="3clFbF" id="5fYI6AyJG6M" role="3cqZAp">
                    <node concept="2OqwBi" id="5fYI6AyJG6N" role="3clFbG">
                      <node concept="37vLTw" id="5fYI6AyJG6O" role="2Oq$k0">
                        <ref role="3cqZAo" node="5fYI6AyJG6R" resolve="it" />
                      </node>
                      <node concept="2qgKlT" id="5fYI6AyJG6P" role="2OqNvi">
                        <ref role="37wK5l" node="PKiUC7izmd" resolve="Implements" />
                        <node concept="37vLTw" id="5fYI6AyJG6Q" role="37wK5m">
                          <ref role="3cqZAo" node="PKiUC7iQxU" resolve="element" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="5fYI6AyJG6R" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="5fYI6AyJG6S" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="PKiUC7iQxg" role="3clF45">
        <ref role="ehGHo" to="74bf:PKiUC77gUi" resolve="ClientGenerator" />
      </node>
    </node>
    <node concept="13i0hz" id="5fYI6AyIjDP" role="13h7CS">
      <property role="TrG5h" value="GetAllDependencies" />
      <node concept="3Tm1VV" id="5fYI6AyIjDQ" role="1B3o_S" />
      <node concept="A3Dl8" id="5fYI6AyIk6M" role="3clF45">
        <node concept="3Tqbb2" id="5fYI6AyIk6Z" role="A3Ik2">
          <ref role="ehGHo" to="74bf:PKiUC77gUi" resolve="ClientGenerator" />
        </node>
      </node>
      <node concept="3clFbS" id="5fYI6AyIjDS" role="3clF47">
        <node concept="3clFbF" id="5fYI6AyJsky" role="3cqZAp">
          <node concept="BsUDl" id="5fYI6AyJskx" role="3clFbG">
            <ref role="37wK5l" node="5fYI6AyJlaM" resolve="GetAllDependencies" />
            <node concept="10Nm6u" id="5fYI6AyJs__" role="37wK5m" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5fYI6AyJlaM" role="13h7CS">
      <property role="TrG5h" value="GetAllDependencies" />
      <node concept="37vLTG" id="5fYI6AyJmar" role="3clF46">
        <property role="TrG5h" value="alreadyFound" />
        <node concept="2hMVRd" id="5fYI6AyJmaD" role="1tU5fm">
          <node concept="3Tqbb2" id="5fYI6AyJmaU" role="2hN53Y">
            <ref role="ehGHo" to="74bf:PKiUC77gUi" resolve="ClientGenerator" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5fYI6AyJlaN" role="1B3o_S" />
      <node concept="3clFbS" id="5fYI6AyJlaP" role="3clF47">
        <node concept="3clFbF" id="5fYI6AyJmbP" role="3cqZAp">
          <node concept="2OqwBi" id="5fYI6AyJmbQ" role="3clFbG">
            <node concept="2OqwBi" id="5fYI6AyJmbR" role="2Oq$k0">
              <node concept="2OqwBi" id="5fYI6AyJoLr" role="2Oq$k0">
                <node concept="2OqwBi" id="5fYI6AyJmbS" role="2Oq$k0">
                  <node concept="2OqwBi" id="5fYI6AyJmbT" role="2Oq$k0">
                    <node concept="13iPFW" id="5fYI6AyJmbU" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="5fYI6AyJmbV" role="2OqNvi">
                      <ref role="3TtcxE" to="74bf:PKiUC7iyJQ" resolve="using" />
                    </node>
                  </node>
                  <node concept="13MTOL" id="5fYI6AyJmbW" role="2OqNvi">
                    <ref role="13MTZf" to="74bf:PKiUC7iyJL" resolve="clientGenerator" />
                  </node>
                </node>
                <node concept="3zZkjj" id="5fYI6AyJp86" role="2OqNvi">
                  <node concept="1bVj0M" id="5fYI6AyJp88" role="23t8la">
                    <node concept="3clFbS" id="5fYI6AyJp89" role="1bW5cS">
                      <node concept="3clFbF" id="5fYI6AyJpjQ" role="3cqZAp">
                        <node concept="3fqX7Q" id="5fYI6AyJrB4" role="3clFbG">
                          <node concept="2OqwBi" id="5fYI6AyJrB6" role="3fr31v">
                            <node concept="37vLTw" id="5fYI6AyJrB7" role="2Oq$k0">
                              <ref role="3cqZAo" node="5fYI6AyJmar" resolve="alreadyFound" />
                            </node>
                            <node concept="3JPx81" id="5fYI6AyJrB8" role="2OqNvi">
                              <node concept="37vLTw" id="5fYI6AyJrB9" role="25WWJ7">
                                <ref role="3cqZAo" node="5fYI6AyJp8a" resolve="it" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="5fYI6AyJp8a" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="5fYI6AyJp8b" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3goQfb" id="5fYI6AyJmbX" role="2OqNvi">
                <node concept="1bVj0M" id="5fYI6AyJmbY" role="23t8la">
                  <node concept="3clFbS" id="5fYI6AyJmbZ" role="1bW5cS">
                    <node concept="3clFbF" id="5fYI6AyJmc0" role="3cqZAp">
                      <node concept="2ShNRf" id="5fYI6AyJmc1" role="3clFbG">
                        <node concept="kMnCb" id="5fYI6AyJmc2" role="2ShVmc">
                          <node concept="3Tqbb2" id="5fYI6AyJmc3" role="kMuH3">
                            <ref role="ehGHo" to="74bf:PKiUC77gUi" resolve="ClientGenerator" />
                          </node>
                          <node concept="1bVj0M" id="5fYI6AyJmc4" role="kMx8a">
                            <node concept="3clFbS" id="5fYI6AyJmc5" role="1bW5cS">
                              <node concept="2n63Yl" id="5fYI6AyJmc6" role="3cqZAp">
                                <node concept="37vLTw" id="5fYI6AyJmc7" role="2n6tg2">
                                  <ref role="3cqZAo" node="5fYI6AyJmcc" resolve="it" />
                                </node>
                              </node>
                              <node concept="_Z6PX" id="5fYI6AyJmc8" role="3cqZAp">
                                <node concept="2OqwBi" id="5fYI6AyJmc9" role="_Z9Zf">
                                  <node concept="37vLTw" id="5fYI6AyJmca" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5fYI6AyJmcc" resolve="it" />
                                  </node>
                                  <node concept="2qgKlT" id="5fYI6AyJmcb" role="2OqNvi">
                                    <ref role="37wK5l" node="5fYI6AyIjDP" resolve="GetAllDependencies" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="5fYI6AyJmcc" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="5fYI6AyJmcd" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1VAtEI" id="5fYI6AyJmce" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="A3Dl8" id="5fYI6AyJma7" role="3clF45">
        <node concept="3Tqbb2" id="5fYI6AyJma8" role="A3Ik2">
          <ref role="ehGHo" to="74bf:PKiUC77gUi" resolve="ClientGenerator" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5fYI6AyJHKP" role="13h7CS">
      <property role="TrG5h" value="DetectCirculairDependency" />
      <node concept="3Tm1VV" id="5fYI6AyJHKQ" role="1B3o_S" />
      <node concept="3clFbS" id="5fYI6AyJHKS" role="3clF47">
        <node concept="3clFbJ" id="5fYI6AyJIOI" role="3cqZAp">
          <node concept="2OqwBi" id="5fYI6AyJJ2N" role="3clFbw">
            <node concept="37vLTw" id="5fYI6AyJIP2" role="2Oq$k0">
              <ref role="3cqZAo" node="5fYI6AyJINc" resolve="sequence" />
            </node>
            <node concept="3JPx81" id="5fYI6AyJJbv" role="2OqNvi">
              <node concept="13iPFW" id="5fYI6AyJJc9" role="25WWJ7" />
            </node>
          </node>
          <node concept="3clFbS" id="5fYI6AyJIOK" role="3clFbx">
            <node concept="3cpWs6" id="5fYI6AyJJdy" role="3cqZAp">
              <node concept="2OqwBi" id="5fYI6AyJMFt" role="3cqZAk">
                <node concept="37vLTw" id="5fYI6AyJJep" role="2Oq$k0">
                  <ref role="3cqZAo" node="5fYI6AyJINc" resolve="sequence" />
                </node>
                <node concept="3QWeyG" id="5fYI6AyJN2d" role="2OqNvi">
                  <node concept="2ShNRf" id="5fYI6AyJNkN" role="576Qk">
                    <node concept="kMnCb" id="5fYI6AyJNuz" role="2ShVmc">
                      <node concept="3Tqbb2" id="5fYI6AyJNzU" role="kMuH3">
                        <ref role="ehGHo" to="74bf:PKiUC77gUi" resolve="ClientGenerator" />
                      </node>
                      <node concept="1bVj0M" id="5fYI6AyJNQw" role="kMx8a">
                        <node concept="3clFbS" id="5fYI6AyJNQx" role="1bW5cS">
                          <node concept="2n63Yl" id="5fYI6AyJNWW" role="3cqZAp">
                            <node concept="13iPFW" id="5fYI6AyJO2Z" role="2n6tg2" />
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
        <node concept="3clFbH" id="5fYI6AyJMqX" role="3cqZAp" />
        <node concept="3clFbF" id="5fYI6AyJJho" role="3cqZAp">
          <node concept="2OqwBi" id="5fYI6AyJReq" role="3clFbG">
            <node concept="2OqwBi" id="5fYI6AyJLFD" role="2Oq$k0">
              <node concept="2OqwBi" id="5fYI6AyJJhq" role="2Oq$k0">
                <node concept="2OqwBi" id="5fYI6AyJJhr" role="2Oq$k0">
                  <node concept="13iPFW" id="5fYI6AyJJhs" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="5fYI6AyJJht" role="2OqNvi">
                    <ref role="3TtcxE" to="74bf:PKiUC7iyJQ" resolve="using" />
                  </node>
                </node>
                <node concept="13MTOL" id="5fYI6AyJJhu" role="2OqNvi">
                  <ref role="13MTZf" to="74bf:PKiUC7iyJL" resolve="clientGenerator" />
                </node>
              </node>
              <node concept="3$u5V9" id="5fYI6AyJLPZ" role="2OqNvi">
                <node concept="1bVj0M" id="5fYI6AyJLQ1" role="23t8la">
                  <node concept="3clFbS" id="5fYI6AyJLQ2" role="1bW5cS">
                    <node concept="3clFbF" id="5fYI6AyJLUO" role="3cqZAp">
                      <node concept="2OqwBi" id="5fYI6AyJM5E" role="3clFbG">
                        <node concept="37vLTw" id="5fYI6AyJLUN" role="2Oq$k0">
                          <ref role="3cqZAo" node="5fYI6AyJLQ3" resolve="it" />
                        </node>
                        <node concept="2qgKlT" id="5fYI6AyJMi9" role="2OqNvi">
                          <ref role="37wK5l" node="5fYI6AyJHKP" resolve="DetectCirculairDependency" />
                          <node concept="2OqwBi" id="5fYI6AyJOy2" role="37wK5m">
                            <node concept="37vLTw" id="5fYI6AyJO9I" role="2Oq$k0">
                              <ref role="3cqZAo" node="5fYI6AyJINc" resolve="sequence" />
                            </node>
                            <node concept="3QWeyG" id="5fYI6AyJOGP" role="2OqNvi">
                              <node concept="2ShNRf" id="5fYI6AyJOGQ" role="576Qk">
                                <node concept="kMnCb" id="5fYI6AyJOGR" role="2ShVmc">
                                  <node concept="3Tqbb2" id="5fYI6AyJOGS" role="kMuH3">
                                    <ref role="ehGHo" to="74bf:PKiUC77gUi" resolve="ClientGenerator" />
                                  </node>
                                  <node concept="1bVj0M" id="5fYI6AyJOGT" role="kMx8a">
                                    <node concept="3clFbS" id="5fYI6AyJOGU" role="1bW5cS">
                                      <node concept="2n63Yl" id="5fYI6AyJOGV" role="3cqZAp">
                                        <node concept="13iPFW" id="5fYI6AyJOGW" role="2n6tg2" />
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
                  <node concept="Rh6nW" id="5fYI6AyJLQ3" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="5fYI6AyJLQ4" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1z4cxt" id="5fYI6AyJRUC" role="2OqNvi">
              <node concept="1bVj0M" id="5fYI6AyJRUE" role="23t8la">
                <node concept="3clFbS" id="5fYI6AyJRUF" role="1bW5cS">
                  <node concept="3clFbF" id="5fYI6AyJSaR" role="3cqZAp">
                    <node concept="2OqwBi" id="5fYI6AyJVZn" role="3clFbG">
                      <node concept="37vLTw" id="5fYI6AyJSaQ" role="2Oq$k0">
                        <ref role="3cqZAo" node="5fYI6AyJRUG" resolve="it" />
                      </node>
                      <node concept="3GX2aA" id="5fYI6AyJWu_" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="5fYI6AyJRUG" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="5fYI6AyJRUH" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5fYI6AyJINc" role="3clF46">
        <property role="TrG5h" value="sequence" />
        <node concept="A3Dl8" id="5fYI6AyJINa" role="1tU5fm">
          <node concept="3Tqbb2" id="5fYI6AyJINS" role="A3Ik2">
            <ref role="ehGHo" to="74bf:PKiUC77gUi" resolve="ClientGenerator" />
          </node>
        </node>
      </node>
      <node concept="A3Dl8" id="5fYI6AyJIOy" role="3clF45">
        <node concept="3Tqbb2" id="5fYI6AyJIOz" role="A3Ik2">
          <ref role="ehGHo" to="74bf:PKiUC77gUi" resolve="ClientGenerator" />
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="PKiUC7abPz" role="13h7CW">
      <node concept="3clFbS" id="PKiUC7abP$" role="2VODD2">
        <node concept="3clFbF" id="5w895fhyP_N" role="3cqZAp">
          <node concept="37vLTI" id="5w895fhyQj5" role="3clFbG">
            <node concept="Xl_RD" id="5w895fhyQjn" role="37vLTx">
              <property role="Xl_RC" value="0.1.0-alpha" />
            </node>
            <node concept="2OqwBi" id="5w895fhyPHH" role="37vLTJ">
              <node concept="13iPFW" id="5w895fhyP_M" role="2Oq$k0" />
              <node concept="3TrcHB" id="5w895fhyPQl" role="2OqNvi">
                <ref role="3TsBF5" to="74bf:5w895fhyNk2" resolve="version" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="67VaKSIpXiS" role="3cqZAp">
          <node concept="37vLTI" id="67VaKSIpXV7" role="3clFbG">
            <node concept="Xl_RD" id="67VaKSIpXVF" role="37vLTx">
              <property role="Xl_RC" value="net5.0" />
            </node>
            <node concept="2OqwBi" id="67VaKSIpXrR" role="37vLTJ">
              <node concept="13iPFW" id="67VaKSIpXiQ" role="2Oq$k0" />
              <node concept="3TrcHB" id="67VaKSIpXCE" role="2OqNvi">
                <ref role="3TsBF5" to="74bf:67VaKSIpVGz" resolve="targetFramework" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="$4YnxqyzuQ" role="3cqZAp">
          <node concept="37vLTI" id="$4Ynxqy$7E" role="3clFbG">
            <node concept="3clFbT" id="$4Ynxqy$bN" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="2OqwBi" id="$4YnxqyzCc" role="37vLTJ">
              <node concept="13iPFW" id="$4YnxqyzuO" role="2Oq$k0" />
              <node concept="3TrcHB" id="$4YnxqyzOW" role="2OqNvi">
                <ref role="3TsBF5" to="74bf:$4Ynxqyrzt" resolve="createProjectFile" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="PKiUC7acVv">
    <ref role="13h7C2" to="74bf:PKiUC77gMs" resolve="ConceptClient" />
    <node concept="13i0hz" id="5w895fhuEG2" role="13h7CS">
      <property role="TrG5h" value="Targets" />
      <ref role="13i0hy" node="5w895fhuANt" resolve="Targets" />
      <node concept="3clFbS" id="5w895fhuEG5" role="3clF47">
        <node concept="3cpWs6" id="5w895fhuERL" role="3cqZAp">
          <node concept="2ShNRf" id="5w895fhuERM" role="3cqZAk">
            <node concept="kMnCb" id="5w895fhuERN" role="2ShVmc">
              <node concept="3Tqbb2" id="5w895fhuERO" role="kMuH3">
                <ref role="ehGHo" to="tpce:1ob16QT2yIl" resolve="INamedStructureElement" />
              </node>
              <node concept="1bVj0M" id="5w895fhuERP" role="kMx8a">
                <node concept="3clFbS" id="5w895fhuERQ" role="1bW5cS">
                  <node concept="2n63Yl" id="5w895fhuERR" role="3cqZAp">
                    <node concept="2OqwBi" id="5w895fhuERS" role="2n6tg2">
                      <node concept="13iPFW" id="5w895fhuERT" role="2Oq$k0" />
                      <node concept="3TrEf2" id="5w895fhuERU" role="2OqNvi">
                        <ref role="3Tt5mk" to="74bf:PKiUC77gMt" resolve="concept" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="A3Dl8" id="5w895fhuEPq" role="3clF45">
        <node concept="3Tqbb2" id="5w895fhuEPr" role="A3Ik2">
          <ref role="ehGHo" to="tpce:1ob16QT2yIl" resolve="INamedStructureElement" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5w895fhuEPs" role="1B3o_S" />
    </node>
    <node concept="13hLZK" id="PKiUC7acVw" role="13h7CW">
      <node concept="3clFbS" id="PKiUC7acVx" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="PKiUC7ajfF">
    <ref role="13h7C2" to="74bf:PKiUC77G0C" resolve="EnumClient" />
    <node concept="13i0hz" id="5w895fhuFq5" role="13h7CS">
      <property role="TrG5h" value="Targets" />
      <ref role="13i0hy" node="5w895fhuANt" resolve="Targets" />
      <node concept="3clFbS" id="5w895fhuFq8" role="3clF47">
        <node concept="3cpWs6" id="5w895fhuFzC" role="3cqZAp">
          <node concept="2ShNRf" id="5w895fhuFzD" role="3cqZAk">
            <node concept="kMnCb" id="5w895fhuFzE" role="2ShVmc">
              <node concept="3Tqbb2" id="5w895fhuFzF" role="kMuH3">
                <ref role="ehGHo" to="tpce:1ob16QT2yIl" resolve="INamedStructureElement" />
              </node>
              <node concept="1bVj0M" id="5w895fhuFzG" role="kMx8a">
                <node concept="3clFbS" id="5w895fhuFzH" role="1bW5cS">
                  <node concept="2n63Yl" id="5w895fhuFzI" role="3cqZAp">
                    <node concept="2OqwBi" id="5w895fhuQ4m" role="2n6tg2">
                      <node concept="13iPFW" id="5w895fhuFzK" role="2Oq$k0" />
                      <node concept="3TrEf2" id="5w895fhuQdJ" role="2OqNvi">
                        <ref role="3Tt5mk" to="74bf:PKiUC77G0F" resolve="target" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="A3Dl8" id="5w895fhuFuC" role="3clF45">
        <node concept="3Tqbb2" id="5w895fhuFuD" role="A3Ik2">
          <ref role="ehGHo" to="tpce:1ob16QT2yIl" resolve="INamedStructureElement" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5w895fhuFuE" role="1B3o_S" />
    </node>
    <node concept="13hLZK" id="PKiUC7ajfG" role="13h7CW">
      <node concept="3clFbS" id="PKiUC7ajfH" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="PKiUC7akNs">
    <ref role="13h7C2" to="74bf:PKiUC77gUm" resolve="IClientContent" />
    <node concept="13i0hz" id="PKiUC7alj6" role="13h7CS">
      <property role="TrG5h" value="GetMPSCodeFqName" />
      <node concept="3Tm1VV" id="PKiUC7alj7" role="1B3o_S" />
      <node concept="17QB3L" id="PKiUC7aljm" role="3clF45" />
      <node concept="3clFbS" id="PKiUC7alj9" role="3clF47">
        <node concept="3clFbF" id="PKiUC7bl$o" role="3cqZAp">
          <node concept="2OqwBi" id="PKiUC7bm1u" role="3clFbG">
            <node concept="2OqwBi" id="PKiUC7blF$" role="2Oq$k0">
              <node concept="13iPFW" id="PKiUC7bl$n" role="2Oq$k0" />
              <node concept="2Xjw5R" id="PKiUC7blMr" role="2OqNvi">
                <node concept="1xMEDy" id="PKiUC7blMt" role="1xVPHs">
                  <node concept="chp4Y" id="PKiUC7blOC" role="ri$Ld">
                    <ref role="cht4Q" to="74bf:PKiUC77gUi" resolve="ClientGenerator" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2qgKlT" id="PKiUC7bmc4" role="2OqNvi">
              <ref role="37wK5l" node="PKiUC7aPwH" resolve="GetMPSCodeFqName" />
              <node concept="2OqwBi" id="5w895fhuElr" role="37wK5m">
                <node concept="BsUDl" id="5w895fhuEls" role="2Oq$k0">
                  <ref role="37wK5l" node="5w895fhuANt" resolve="Targets" />
                </node>
                <node concept="1uHKPH" id="5w895fhuElt" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="PKiUC7a_Oy" role="13h7CS">
      <property role="TrG5h" value="GetTargetCodeFqName" />
      <node concept="3Tm1VV" id="PKiUC7a_Oz" role="1B3o_S" />
      <node concept="17QB3L" id="PKiUC7a_Pa" role="3clF45" />
      <node concept="3clFbS" id="PKiUC7a_O_" role="3clF47">
        <node concept="3clFbF" id="PKiUC7bn1S" role="3cqZAp">
          <node concept="2OqwBi" id="PKiUC7bnf1" role="3clFbG">
            <node concept="2OqwBi" id="PKiUC7bn1U" role="2Oq$k0">
              <node concept="13iPFW" id="PKiUC7bn1V" role="2Oq$k0" />
              <node concept="2Xjw5R" id="PKiUC7bn1W" role="2OqNvi">
                <node concept="1xMEDy" id="PKiUC7bn1X" role="1xVPHs">
                  <node concept="chp4Y" id="PKiUC7bn1Y" role="ri$Ld">
                    <ref role="cht4Q" to="74bf:PKiUC77gUi" resolve="ClientGenerator" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2qgKlT" id="PKiUC7bno9" role="2OqNvi">
              <ref role="37wK5l" node="PKiUC7b6Ck" resolve="GetTargetCodeFqName" />
              <node concept="2OqwBi" id="5w895fhuEk0" role="37wK5m">
                <node concept="BsUDl" id="5w895fhuEk1" role="2Oq$k0">
                  <ref role="37wK5l" node="5w895fhuANt" resolve="Targets" />
                </node>
                <node concept="1uHKPH" id="5w895fhuEk2" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="PKiUC7amTC" role="13h7CS">
      <property role="TrG5h" value="GetMPSCodeNamespace" />
      <node concept="3Tm1VV" id="PKiUC7amTD" role="1B3o_S" />
      <node concept="17QB3L" id="PKiUC7amTW" role="3clF45" />
      <node concept="3clFbS" id="PKiUC7amTF" role="3clF47">
        <node concept="3clFbF" id="PKiUC7bn5d" role="3cqZAp">
          <node concept="2OqwBi" id="PKiUC7bnDP" role="3clFbG">
            <node concept="2OqwBi" id="PKiUC7bn5f" role="2Oq$k0">
              <node concept="13iPFW" id="PKiUC7bn5g" role="2Oq$k0" />
              <node concept="2Xjw5R" id="PKiUC7bn5h" role="2OqNvi">
                <node concept="1xMEDy" id="PKiUC7bn5i" role="1xVPHs">
                  <node concept="chp4Y" id="PKiUC7bn5j" role="ri$Ld">
                    <ref role="cht4Q" to="74bf:PKiUC77gUi" resolve="ClientGenerator" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2qgKlT" id="PKiUC7bnNJ" role="2OqNvi">
              <ref role="37wK5l" node="PKiUC7aN_X" resolve="GetMPSCodeNamespace" />
              <node concept="2OqwBi" id="5w895fhuDWO" role="37wK5m">
                <node concept="BsUDl" id="PKiUC7bnOi" role="2Oq$k0">
                  <ref role="37wK5l" node="5w895fhuANt" resolve="Targets" />
                </node>
                <node concept="1uHKPH" id="5w895fhuEeG" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="PKiUC7a_Nb" role="13h7CS">
      <property role="TrG5h" value="GetTargetCodeNamespace" />
      <node concept="3Tm1VV" id="PKiUC7a_Nc" role="1B3o_S" />
      <node concept="17QB3L" id="PKiUC7a_NJ" role="3clF45" />
      <node concept="3clFbS" id="PKiUC7a_Ne" role="3clF47">
        <node concept="3clFbF" id="PKiUC7bo8g" role="3cqZAp">
          <node concept="2OqwBi" id="PKiUC7boje" role="3clFbG">
            <node concept="2OqwBi" id="PKiUC7bo8i" role="2Oq$k0">
              <node concept="13iPFW" id="PKiUC7bo8j" role="2Oq$k0" />
              <node concept="2Xjw5R" id="PKiUC7bo8k" role="2OqNvi">
                <node concept="1xMEDy" id="PKiUC7bo8l" role="1xVPHs">
                  <node concept="chp4Y" id="PKiUC7bo8m" role="ri$Ld">
                    <ref role="cht4Q" to="74bf:PKiUC77gUi" resolve="ClientGenerator" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2qgKlT" id="PKiUC7bosm" role="2OqNvi">
              <ref role="37wK5l" node="PKiUC7aPX3" resolve="GetTargetCodeNamespace" />
              <node concept="2OqwBi" id="5w895fhuEvt" role="37wK5m">
                <node concept="BsUDl" id="5w895fhuEvu" role="2Oq$k0">
                  <ref role="37wK5l" node="5w895fhuANt" resolve="Targets" />
                </node>
                <node concept="1uHKPH" id="5w895fhvXpz" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5w895fhuANt" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="Targets" />
      <node concept="3Tm1VV" id="5w895fhuANu" role="1B3o_S" />
      <node concept="3clFbS" id="5w895fhuANw" role="3clF47" />
      <node concept="A3Dl8" id="5w895fhuDqJ" role="3clF45">
        <node concept="3Tqbb2" id="5w895fhuDqW" role="A3Ik2">
          <ref role="ehGHo" to="tpce:1ob16QT2yIl" resolve="INamedStructureElement" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5w895fhxaq_" role="13h7CS">
      <property role="TrG5h" value="GenerateFilename" />
      <node concept="3Tm1VV" id="5w895fhxaqA" role="1B3o_S" />
      <node concept="17QB3L" id="5w895fhxa$L" role="3clF45" />
      <node concept="3clFbS" id="5w895fhxaqC" role="3clF47">
        <node concept="3cpWs8" id="PKiUC7bREO" role="3cqZAp">
          <node concept="3cpWsn" id="PKiUC7bRER" role="3cpWs9">
            <property role="TrG5h" value="localNamespace" />
            <node concept="17QB3L" id="PKiUC7bREM" role="1tU5fm" />
            <node concept="2OqwBi" id="PKiUC7bRIv" role="33vP2m">
              <node concept="13iPFW" id="5w895fhxb3m" role="2Oq$k0" />
              <node concept="2qgKlT" id="PKiUC7bRIx" role="2OqNvi">
                <ref role="37wK5l" node="PKiUC7a_Nb" resolve="GetTargetCodeNamespace" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5w895fhxlgw" role="3cqZAp">
          <node concept="3cpWsn" id="5w895fhxlgz" role="3cpWs9">
            <property role="TrG5h" value="globalNamespace" />
            <node concept="17QB3L" id="5w895fhxlgu" role="1tU5fm" />
            <node concept="2OqwBi" id="5w895fhxmcX" role="33vP2m">
              <node concept="2OqwBi" id="5w895fhxmcY" role="2Oq$k0">
                <node concept="13iPFW" id="5w895fhxmcZ" role="2Oq$k0" />
                <node concept="2Xjw5R" id="5w895fhxmd0" role="2OqNvi">
                  <node concept="1xMEDy" id="5w895fhxmd1" role="1xVPHs">
                    <node concept="chp4Y" id="5w895fhxmd2" role="ri$Ld">
                      <ref role="cht4Q" to="74bf:PKiUC77gUi" resolve="ClientGenerator" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3TrcHB" id="5w895fhxmd3" role="2OqNvi">
                <ref role="3TsBF5" to="74bf:PKiUC77KtY" resolve="baseTargetNameSpace" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5w895fhvZwv" role="3cqZAp">
          <node concept="37vLTI" id="5w895fhw011" role="3clFbG">
            <node concept="2OqwBi" id="5w895fhw0yK" role="37vLTx">
              <node concept="37vLTw" id="5w895fhw04X" role="2Oq$k0">
                <ref role="3cqZAo" node="PKiUC7bRER" resolve="localNamespace" />
              </node>
              <node concept="liA8E" id="5w895fhw17t" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.substring(int)" resolve="substring" />
                <node concept="2OqwBi" id="5w895fhxmXw" role="37wK5m">
                  <node concept="37vLTw" id="5w895fhw1bM" role="2Oq$k0">
                    <ref role="3cqZAo" node="5w895fhxlgz" resolve="globalNamespace" />
                  </node>
                  <node concept="liA8E" id="5w895fhxnyq" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="5w895fhvZwt" role="37vLTJ">
              <ref role="3cqZAo" node="PKiUC7bRER" resolve="localNamespace" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="PKiUC7bScD" role="3cqZAp">
          <node concept="3clFbS" id="PKiUC7bScF" role="3clFbx">
            <node concept="3cpWs6" id="PKiUC7bVk8" role="3cqZAp">
              <node concept="3cpWs3" id="5w895fhx9kx" role="3cqZAk">
                <node concept="2OqwBi" id="PKiUC78hkt" role="3uHU7w">
                  <node concept="2OqwBi" id="5w895fhxcFt" role="2Oq$k0">
                    <node concept="2OqwBi" id="PKiUC78gXp" role="2Oq$k0">
                      <node concept="13iPFW" id="5w895fhxc4u" role="2Oq$k0" />
                      <node concept="2qgKlT" id="5w895fhxcp0" role="2OqNvi">
                        <ref role="37wK5l" node="5w895fhuANt" resolve="Targets" />
                      </node>
                    </node>
                    <node concept="1uHKPH" id="5w895fhxd3G" role="2OqNvi" />
                  </node>
                  <node concept="3TrcHB" id="PKiUC78hGk" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="3cpWs3" id="5w895fhx6OD" role="3uHU7B">
                  <node concept="37vLTw" id="5w895fhxo1B" role="3uHU7B">
                    <ref role="3cqZAo" node="5w895fhxlgz" resolve="globalNamespace" />
                  </node>
                  <node concept="Xl_RD" id="5w895fhx9xM" role="3uHU7w">
                    <property role="Xl_RC" value="/" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="PKiUC7bSAu" role="3clFbw">
            <node concept="37vLTw" id="PKiUC7bSeS" role="2Oq$k0">
              <ref role="3cqZAo" node="PKiUC7bRER" resolve="localNamespace" />
            </node>
            <node concept="17RlXB" id="PKiUC7bSWI" role="2OqNvi" />
          </node>
          <node concept="9aQIb" id="PKiUC7bTdP" role="9aQIa">
            <node concept="3clFbS" id="PKiUC7bTdQ" role="9aQI4">
              <node concept="3cpWs6" id="PKiUC7bVH6" role="3cqZAp">
                <node concept="3cpWs3" id="PKiUC7bUHv" role="3cqZAk">
                  <node concept="3cpWs3" id="PKiUC7bUxm" role="3uHU7B">
                    <node concept="3cpWs3" id="5w895fhx7HW" role="3uHU7B">
                      <node concept="2OqwBi" id="PKiUC7bTOg" role="3uHU7w">
                        <node concept="2OqwBi" id="PKiUC7bWMB" role="2Oq$k0">
                          <node concept="37vLTw" id="PKiUC7bTfA" role="2Oq$k0">
                            <ref role="3cqZAo" node="PKiUC7bRER" resolve="localNamespace" />
                          </node>
                          <node concept="liA8E" id="PKiUC7bX3z" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.substring(int)" resolve="substring" />
                            <node concept="3cmrfG" id="PKiUC7bX3B" role="37wK5m">
                              <property role="3cmrfH" value="1" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="PKiUC7bU5x" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.replace(char,char)" resolve="replace" />
                          <node concept="1Xhbcc" id="PKiUC7bU8$" role="37wK5m">
                            <property role="1XhdNS" value="." />
                          </node>
                          <node concept="1Xhbcc" id="PKiUC7bUeJ" role="37wK5m">
                            <property role="1XhdNS" value="/" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs3" id="5w895fhx8sq" role="3uHU7B">
                        <node concept="Xl_RD" id="5w895fhx8CP" role="3uHU7w">
                          <property role="Xl_RC" value="/" />
                        </node>
                        <node concept="37vLTw" id="5w895fhxonX" role="3uHU7B">
                          <ref role="3cqZAo" node="5w895fhxlgz" resolve="globalNamespace" />
                        </node>
                      </node>
                    </node>
                    <node concept="Xl_RD" id="PKiUC7bU$8" role="3uHU7w">
                      <property role="Xl_RC" value="/" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="5w895fhxdo1" role="3uHU7w">
                    <node concept="2OqwBi" id="5w895fhxdo2" role="2Oq$k0">
                      <node concept="2OqwBi" id="5w895fhxdo3" role="2Oq$k0">
                        <node concept="13iPFW" id="5w895fhxdo4" role="2Oq$k0" />
                        <node concept="2qgKlT" id="5w895fhxdo5" role="2OqNvi">
                          <ref role="37wK5l" node="5w895fhuANt" resolve="Targets" />
                        </node>
                      </node>
                      <node concept="1uHKPH" id="5w895fhxdo6" role="2OqNvi" />
                    </node>
                    <node concept="3TrcHB" id="5w895fhxdo7" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="PKiUC7akNt" role="13h7CW">
      <node concept="3clFbS" id="PKiUC7akNu" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="PKiUC7jvQZ">
    <ref role="13h7C2" to="74bf:PKiUC7jvQW" resolve="InterfaceClient" />
    <node concept="13i0hz" id="5w895fhuFG4" role="13h7CS">
      <property role="TrG5h" value="Targets" />
      <ref role="13i0hy" node="5w895fhuANt" resolve="Targets" />
      <node concept="3clFbS" id="5w895fhuFG7" role="3clF47">
        <node concept="3cpWs6" id="5w895fhuFHm" role="3cqZAp">
          <node concept="2ShNRf" id="5w895fhuFHn" role="3cqZAk">
            <node concept="kMnCb" id="5w895fhuFHo" role="2ShVmc">
              <node concept="3Tqbb2" id="5w895fhuFHp" role="kMuH3">
                <ref role="ehGHo" to="tpce:1ob16QT2yIl" resolve="INamedStructureElement" />
              </node>
              <node concept="1bVj0M" id="5w895fhuFHq" role="kMx8a">
                <node concept="3clFbS" id="5w895fhuFHr" role="1bW5cS">
                  <node concept="2n63Yl" id="5w895fhuFHs" role="3cqZAp">
                    <node concept="2OqwBi" id="5w895fhuQvU" role="2n6tg2">
                      <node concept="13iPFW" id="5w895fhuFHu" role="2Oq$k0" />
                      <node concept="3TrEf2" id="5w895fhuQDj" role="2OqNvi">
                        <ref role="3Tt5mk" to="74bf:PKiUC7jvRa" resolve="interface" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="A3Dl8" id="5w895fhuFGM" role="3clF45">
        <node concept="3Tqbb2" id="5w895fhuFGN" role="A3Ik2">
          <ref role="ehGHo" to="tpce:1ob16QT2yIl" resolve="INamedStructureElement" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5w895fhuFGO" role="1B3o_S" />
    </node>
    <node concept="13hLZK" id="PKiUC7jvR0" role="13h7CW">
      <node concept="3clFbS" id="PKiUC7jvR1" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="PKiUC7lbUC">
    <ref role="13h7C2" to="74bf:PKiUC7lbTW" resolve="CustomImplementation" />
    <node concept="13i0hz" id="5w895fhuF1R" role="13h7CS">
      <property role="TrG5h" value="Targets" />
      <ref role="13i0hy" node="5w895fhuANt" resolve="Targets" />
      <node concept="3clFbS" id="5w895fhuF1U" role="3clF47">
        <node concept="3cpWs6" id="5w895fhuCL2" role="3cqZAp">
          <node concept="2ShNRf" id="5w895fhuCLq" role="3cqZAk">
            <node concept="kMnCb" id="5w895fhuCPQ" role="2ShVmc">
              <node concept="3Tqbb2" id="5w895fhuCQg" role="kMuH3">
                <ref role="ehGHo" to="tpce:1ob16QT2yIl" resolve="INamedStructureElement" />
              </node>
              <node concept="1bVj0M" id="5w895fhuCSW" role="kMx8a">
                <node concept="3clFbS" id="5w895fhuCSX" role="1bW5cS">
                  <node concept="2n63Yl" id="5w895fhuCVM" role="3cqZAp">
                    <node concept="2OqwBi" id="5w895fhuD9l" role="2n6tg2">
                      <node concept="13iPFW" id="5w895fhuCWS" role="2Oq$k0" />
                      <node concept="3TrEf2" id="5w895fhuDjh" role="2OqNvi">
                        <ref role="3Tt5mk" to="74bf:PKiUC7lbTY" resolve="structureElement" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="A3Dl8" id="5w895fhuF4t" role="3clF45">
        <node concept="3Tqbb2" id="5w895fhuF4u" role="A3Ik2">
          <ref role="ehGHo" to="tpce:1ob16QT2yIl" resolve="INamedStructureElement" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5w895fhuF4v" role="1B3o_S" />
    </node>
    <node concept="13hLZK" id="PKiUC7lbUD" role="13h7CW">
      <node concept="3clFbS" id="PKiUC7lbUE" role="2VODD2" />
    </node>
  </node>
</model>

