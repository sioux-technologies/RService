<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:fc7ae910-b6ae-4e31-80d6-9cec753ce70d(eu.sioux.mps.rserver.mpsplugin)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="0" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
    <use id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples" version="0" />
  </languages>
  <imports>
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="1ctc" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.stream(JDK/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="xx25" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.adapter.structure.types(MPS.Core/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="vndm" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.language(MPS.Core/)" />
    <import index="i290" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.java.stub(MPS.Core/)" />
    <import index="g3l6" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.extapi.model(MPS.Core/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="cmfw" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.event(MPS.OpenAPI/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="v18h" ref="dee9f226-f8c9-4419-a0d3-66180c5d63a8/java:kotlin(eu.sioux.mps.rserver/)" />
    <import index="ohse" ref="dee9f226-f8c9-4419-a0d3-66180c5d63a8/java:com.jetbrains.rd.util.reactive(eu.sioux.mps.rserver/)" />
    <import index="bl6v" ref="dee9f226-f8c9-4419-a0d3-66180c5d63a8/java:eu.sioux.mps.rserver(eu.sioux.mps.rserver/)" />
    <import index="lw60" ref="dee9f226-f8c9-4419-a0d3-66180c5d63a8/java:eu.sioux.mps.rserver.listeners(eu.sioux.mps.rserver/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1513279640923991009" name="jetbrains.mps.baseLanguage.structure.IGenericClassCreator" flags="ng" index="366HgL">
        <property id="1513279640906337053" name="inferTypeParams" index="373rjd" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT" />
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
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
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt" />
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
    </language>
    <language id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access">
      <concept id="8974276187400348173" name="jetbrains.mps.lang.access.structure.CommandClosureLiteral" flags="nn" index="1QHqEC" />
      <concept id="8974276187400348170" name="jetbrains.mps.lang.access.structure.BaseExecuteCommandStatement" flags="nn" index="1QHqEJ">
        <child id="1423104411234567454" name="repo" index="ukAjM" />
        <child id="8974276187400348171" name="commandClosureLiteral" index="1QHqEI" />
      </concept>
      <concept id="8974276187400348181" name="jetbrains.mps.lang.access.structure.ExecuteLightweightCommandStatement" flags="nn" index="1QHqEK" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="1168401810208" name="jetbrains.mps.baseLanguage.logging.structure.PrintStatement" flags="nn" index="abc8K">
        <child id="1168401864803" name="textExpression" index="abp_N" />
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
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="nn" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="nn" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="4XQ2p$w1IaY">
    <property role="TrG5h" value="SModelToRModelTransformator" />
    <property role="3GE5qa" value="mpsmodel" />
    <node concept="2tJIrI" id="4XQ2p$w1OAs" role="jymVt" />
    <node concept="312cEg" id="4XQ2p$w1OTM" role="jymVt">
      <property role="TrG5h" value="repo" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4XQ2p$w1OTN" role="1B3o_S" />
      <node concept="3uibUv" id="4XQ2p$w1OTO" role="1tU5fm">
        <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
      </node>
    </node>
    <node concept="2tJIrI" id="4XQ2p$w1R_8" role="jymVt" />
    <node concept="3clFbW" id="4XQ2p$w1QnN" role="jymVt">
      <node concept="37vLTG" id="4XQ2p$w1QnO" role="3clF46">
        <property role="TrG5h" value="repo" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="4XQ2p$w1QnP" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3cqZAl" id="4XQ2p$w1QnQ" role="3clF45" />
      <node concept="3Tm1VV" id="4XQ2p$w29z5" role="1B3o_S" />
      <node concept="3clFbS" id="4XQ2p$w1QnS" role="3clF47">
        <node concept="3clFbF" id="4XQ2p$w1QnT" role="3cqZAp">
          <node concept="37vLTI" id="4XQ2p$w1QnU" role="3clFbG">
            <node concept="37vLTw" id="4XQ2p$w1QnV" role="37vLTx">
              <ref role="3cqZAo" node="4XQ2p$w1QnO" resolve="repo" />
            </node>
            <node concept="2OqwBi" id="4XQ2p$w1QnW" role="37vLTJ">
              <node concept="Xjq3P" id="4XQ2p$w1QnX" role="2Oq$k0" />
              <node concept="2OwXpG" id="4XQ2p$w1QnY" role="2OqNvi">
                <ref role="2Oxat5" node="4XQ2p$w1OTM" resolve="repo" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5CDZnbm8WyL" role="jymVt" />
    <node concept="312cEu" id="2sNbwb$7DZ$" role="jymVt">
      <property role="TrG5h" value="ModulesFilter" />
      <node concept="312cEg" id="2sNbwb$7VdI" role="jymVt">
        <property role="TrG5h" value="isReadOnly" />
        <node concept="10P_77" id="2sNbwb$7Iml" role="1tU5fm" />
        <node concept="3clFbT" id="2sNbwb$7Vn7" role="33vP2m" />
        <node concept="3Tm1VV" id="2sNbwb$7Vnp" role="1B3o_S" />
      </node>
      <node concept="312cEg" id="2sNbwb$7GtM" role="jymVt">
        <property role="TrG5h" value="isPackaged" />
        <node concept="10P_77" id="2sNbwb$7Gs6" role="1tU5fm" />
        <node concept="3Tm1VV" id="2sNbwb$7Gvv" role="1B3o_S" />
        <node concept="3clFbT" id="2sNbwb$7I7Z" role="33vP2m" />
      </node>
      <node concept="312cEg" id="2sNbwb$7VSq" role="jymVt">
        <property role="TrG5h" value="nameContains" />
        <node concept="3Tm1VV" id="2sNbwb$7VvZ" role="1B3o_S" />
        <node concept="3uibUv" id="2sNbwb$7VAz" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="10Nm6u" id="6Zn6fGVQskJ" role="33vP2m" />
      </node>
      <node concept="3Tm1VV" id="2sNbwb$7DZ_" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2sNbwb$88XQ" role="jymVt" />
    <node concept="3clFb_" id="2sNbwb$8bxS" role="jymVt">
      <property role="TrG5h" value="modulesList" />
      <node concept="3clFbS" id="2sNbwb$8bxV" role="3clF47">
        <node concept="3cpWs6" id="2sNbwb$8byg" role="3cqZAp">
          <node concept="1rXfSq" id="2sNbwb$8hHq" role="3cqZAk">
            <ref role="37wK5l" node="4XQ2p$w1ISK" resolve="modulesList" />
            <node concept="2ShNRf" id="2sNbwb$8kFe" role="37wK5m">
              <node concept="HV5vD" id="2sNbwb$8swa" role="2ShVmc">
                <ref role="HV5vE" node="2sNbwb$7DZ$" resolve="SModelToRModelTransformator.ModulesFilter" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2sNbwb$8byi" role="1B3o_S" />
      <node concept="3uibUv" id="2sNbwb$8byj" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="5Eit_YPQFHx" role="11_B2D">
          <ref role="3uigEE" to="bl6v:~RModule" resolve="RModule" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2sNbwb$7cyL" role="jymVt" />
    <node concept="3clFb_" id="4XQ2p$w1ISK" role="jymVt">
      <property role="TrG5h" value="modulesList" />
      <node concept="37vLTG" id="2sNbwb$7XvN" role="3clF46">
        <property role="TrG5h" value="filterOut" />
        <node concept="3uibUv" id="2sNbwb$7ZIZ" role="1tU5fm">
          <ref role="3uigEE" node="2sNbwb$7DZ$" resolve="SModelToRModelTransformator.ModulesFilter" />
        </node>
      </node>
      <node concept="3clFbS" id="4XQ2p$w1ISN" role="3clF47">
        <node concept="3cpWs8" id="4XQ2p$w1ITe" role="3cqZAp">
          <node concept="3cpWsn" id="4XQ2p$w1ITf" role="3cpWs9">
            <property role="TrG5h" value="rModules" />
            <node concept="3uibUv" id="4XQ2p$w1ITg" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="5Eit_YPONB8" role="11_B2D">
                <ref role="3uigEE" to="bl6v:~RModule" resolve="RModule" />
              </node>
            </node>
            <node concept="2ShNRf" id="4XQ2p$w1ITk" role="33vP2m">
              <node concept="1pGfFk" id="4XQ2p$w1ITl" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~LinkedList.&lt;init&gt;()" resolve="LinkedList" />
                <node concept="3uibUv" id="5Eit_YPOPHu" role="1pMfVU">
                  <ref role="3uigEE" to="bl6v:~RModule" resolve="RModule" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="4XQ2p$w1ITs" role="3cqZAp">
          <node concept="3clFbS" id="4XQ2p$w1ITt" role="2LFqv$">
            <node concept="3clFbJ" id="2sNbwb$8y$9" role="3cqZAp">
              <node concept="3clFbS" id="2sNbwb$8y$b" role="3clFbx">
                <node concept="3N13vt" id="2sNbwb$8MqA" role="3cqZAp" />
              </node>
              <node concept="3y3z36" id="2sNbwb$9GLe" role="3clFbw">
                <node concept="2OqwBi" id="2sNbwb$8ADL" role="3uHU7w">
                  <node concept="37vLTw" id="2sNbwb$8$_w" role="2Oq$k0">
                    <ref role="3cqZAo" node="2sNbwb$7XvN" resolve="filterOut" />
                  </node>
                  <node concept="2OwXpG" id="2sNbwb$8C_Z" role="2OqNvi">
                    <ref role="2Oxat5" node="2sNbwb$7VdI" resolve="isReadOnly" />
                  </node>
                </node>
                <node concept="2OqwBi" id="2sNbwb$8Iyk" role="3uHU7B">
                  <node concept="37vLTw" id="2sNbwb$8GsY" role="2Oq$k0">
                    <ref role="3cqZAo" node="4XQ2p$w1ITW" resolve="module" />
                  </node>
                  <node concept="liA8E" id="2sNbwb$8KrC" role="2OqNvi">
                    <ref role="37wK5l" to="lui2:~SModule.isReadOnly()" resolve="isReadOnly" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="2sNbwb$8V27" role="3cqZAp">
              <node concept="3clFbS" id="2sNbwb$8V28" role="3clFbx">
                <node concept="3N13vt" id="2sNbwb$8V29" role="3cqZAp" />
              </node>
              <node concept="3y3z36" id="2sNbwb$9ZuG" role="3clFbw">
                <node concept="2OqwBi" id="2sNbwb$8V2e" role="3uHU7B">
                  <node concept="37vLTw" id="2sNbwb$8V2f" role="2Oq$k0">
                    <ref role="3cqZAo" node="4XQ2p$w1ITW" resolve="module" />
                  </node>
                  <node concept="liA8E" id="2sNbwb$8YPM" role="2OqNvi">
                    <ref role="37wK5l" to="lui2:~SModule.isPackaged()" resolve="isPackaged" />
                  </node>
                </node>
                <node concept="2OqwBi" id="2sNbwb$8V2b" role="3uHU7w">
                  <node concept="37vLTw" id="2sNbwb$8V2c" role="2Oq$k0">
                    <ref role="3cqZAo" node="2sNbwb$7XvN" resolve="filterOut" />
                  </node>
                  <node concept="2OwXpG" id="2sNbwb$8WV_" role="2OqNvi">
                    <ref role="2Oxat5" node="2sNbwb$7GtM" resolve="isPackaged" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="2sNbwb$afUC" role="3cqZAp">
              <node concept="3clFbS" id="2sNbwb$afUE" role="3clFbx">
                <node concept="3clFbJ" id="4$_zgVKSTum" role="3cqZAp">
                  <node concept="3clFbS" id="4$_zgVKSTuo" role="3clFbx">
                    <node concept="3N13vt" id="4$_zgVKSZoA" role="3cqZAp" />
                  </node>
                  <node concept="3clFbC" id="4$_zgVKSXd2" role="3clFbw">
                    <node concept="2OqwBi" id="2sNbwb$aMam" role="3uHU7B">
                      <node concept="37vLTw" id="2sNbwb$aMan" role="2Oq$k0">
                        <ref role="3cqZAo" node="4XQ2p$w1ITW" resolve="module" />
                      </node>
                      <node concept="liA8E" id="2sNbwb$aMao" role="2OqNvi">
                        <ref role="37wK5l" to="lui2:~SModule.getModuleName()" resolve="getModuleName" />
                      </node>
                    </node>
                    <node concept="10Nm6u" id="2sNbwb$aQyO" role="3uHU7w" />
                  </node>
                </node>
                <node concept="3clFbJ" id="2sNbwb$92v9" role="3cqZAp">
                  <node concept="3clFbS" id="2sNbwb$92vb" role="3clFbx">
                    <node concept="3N13vt" id="2sNbwb$9uJy" role="3cqZAp" />
                  </node>
                  <node concept="3fqX7Q" id="6Zn6fGVQaLr" role="3clFbw">
                    <node concept="2OqwBi" id="6Zn6fGVQaLt" role="3fr31v">
                      <node concept="2OqwBi" id="6Zn6fGVQaLu" role="2Oq$k0">
                        <node concept="37vLTw" id="6Zn6fGVQaLv" role="2Oq$k0">
                          <ref role="3cqZAo" node="4XQ2p$w1ITW" resolve="module" />
                        </node>
                        <node concept="liA8E" id="6Zn6fGVQaLw" role="2OqNvi">
                          <ref role="37wK5l" to="lui2:~SModule.getModuleName()" resolve="getModuleName" />
                        </node>
                      </node>
                      <node concept="liA8E" id="6Zn6fGVQaLx" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                        <node concept="2OqwBi" id="6Zn6fGVQaLy" role="37wK5m">
                          <node concept="37vLTw" id="6Zn6fGVQaLz" role="2Oq$k0">
                            <ref role="3cqZAo" node="2sNbwb$7XvN" resolve="filterOut" />
                          </node>
                          <node concept="2OwXpG" id="6Zn6fGVQaL$" role="2OqNvi">
                            <ref role="2Oxat5" node="2sNbwb$7VSq" resolve="nameContains" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="2sNbwb$ak0h" role="3clFbw">
                <node concept="2OqwBi" id="2sNbwb$ai4i" role="3uHU7B">
                  <node concept="37vLTw" id="2sNbwb$ai4j" role="2Oq$k0">
                    <ref role="3cqZAo" node="2sNbwb$7XvN" resolve="filterOut" />
                  </node>
                  <node concept="2OwXpG" id="2sNbwb$ai4k" role="2OqNvi">
                    <ref role="2Oxat5" node="2sNbwb$7VSq" resolve="nameContains" />
                  </node>
                </node>
                <node concept="10Nm6u" id="2sNbwb$amm2" role="3uHU7w" />
              </node>
            </node>
            <node concept="3clFbF" id="4XQ2p$w1ITR" role="3cqZAp">
              <node concept="2OqwBi" id="4XQ2p$w1ITS" role="3clFbG">
                <node concept="37vLTw" id="4XQ2p$w1ITT" role="2Oq$k0">
                  <ref role="3cqZAo" node="4XQ2p$w1ITf" resolve="rModules" />
                </node>
                <node concept="liA8E" id="4XQ2p$w1ITU" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                  <node concept="1rXfSq" id="2jA_ma8of4" role="37wK5m">
                    <ref role="37wK5l" node="2jA_ma7Yv$" resolve="toRModule" />
                    <node concept="37vLTw" id="2jA_ma8pFl" role="37wK5m">
                      <ref role="3cqZAo" node="4XQ2p$w1ITW" resolve="module" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="4XQ2p$w1ITW" role="1Duv9x">
            <property role="TrG5h" value="module" />
            <node concept="3uibUv" id="4XQ2p$w1ITX" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
            </node>
          </node>
          <node concept="2OqwBi" id="4XQ2p$w1ITY" role="1DdaDG">
            <node concept="37vLTw" id="4XQ2p$w1ITZ" role="2Oq$k0">
              <ref role="3cqZAo" node="4XQ2p$w1OTM" resolve="repo" />
            </node>
            <node concept="liA8E" id="4XQ2p$w1IU0" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~SRepository.getModules()" resolve="getModules" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4XQ2p$w1IU2" role="3cqZAp">
          <node concept="37vLTw" id="4XQ2p$w1IU3" role="3cqZAk">
            <ref role="3cqZAo" node="4XQ2p$w1ITf" resolve="rModules" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4XQ2p$w1ISh" role="1B3o_S" />
      <node concept="3uibUv" id="4XQ2p$w1M7q" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="5Eit_YPOMl5" role="11_B2D">
          <ref role="3uigEE" to="bl6v:~RModule" resolve="RModule" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="31oJ12vpHhQ" role="jymVt" />
    <node concept="3clFb_" id="31oJ12vpJoc" role="jymVt">
      <property role="TrG5h" value="modelsList" />
      <node concept="37vLTG" id="31oJ12vpPTj" role="3clF46">
        <property role="TrG5h" value="sModule" />
        <node concept="3uibUv" id="31oJ12vpVPT" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="3clFbS" id="31oJ12vpJod" role="3clF47">
        <node concept="3cpWs8" id="31oJ12vpJoe" role="3cqZAp">
          <node concept="3cpWsn" id="31oJ12vpJof" role="3cpWs9">
            <property role="TrG5h" value="rModels" />
            <node concept="3uibUv" id="31oJ12vpJog" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="5Eit_YPP$On" role="11_B2D">
                <ref role="3uigEE" to="bl6v:~RModel" resolve="RModel" />
              </node>
            </node>
            <node concept="2ShNRf" id="31oJ12vpJoi" role="33vP2m">
              <node concept="1pGfFk" id="31oJ12vpJoj" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~LinkedList.&lt;init&gt;()" resolve="LinkedList" />
                <node concept="3uibUv" id="5Eit_YPPAPF" role="1pMfVU">
                  <ref role="3uigEE" to="bl6v:~RModel" resolve="RModel" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="31oJ12vpJol" role="3cqZAp">
          <node concept="3clFbS" id="31oJ12vpJom" role="2LFqv$">
            <node concept="3clFbF" id="31oJ12vpJow" role="3cqZAp">
              <node concept="2OqwBi" id="31oJ12vpJox" role="3clFbG">
                <node concept="37vLTw" id="31oJ12vpJoy" role="2Oq$k0">
                  <ref role="3cqZAo" node="31oJ12vpJof" resolve="rModels" />
                </node>
                <node concept="liA8E" id="31oJ12vpJoz" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                  <node concept="1rXfSq" id="2jA_ma8v54" role="37wK5m">
                    <ref role="37wK5l" node="2jA_ma7CHG" resolve="toRModel" />
                    <node concept="37vLTw" id="2jA_ma8wF7" role="37wK5m">
                      <ref role="3cqZAo" node="31oJ12vpJo_" resolve="model" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="31oJ12vpJo_" role="1Duv9x">
            <property role="TrG5h" value="model" />
            <node concept="3uibUv" id="31oJ12vpXfn" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
            </node>
          </node>
          <node concept="2OqwBi" id="31oJ12vpVbA" role="1DdaDG">
            <node concept="37vLTw" id="31oJ12vpUsk" role="2Oq$k0">
              <ref role="3cqZAo" node="31oJ12vpPTj" resolve="sModule" />
            </node>
            <node concept="liA8E" id="31oJ12vpWBW" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~SModule.getModels()" resolve="getModels" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="31oJ12vpJoE" role="3cqZAp">
          <node concept="37vLTw" id="31oJ12vpJoF" role="3cqZAk">
            <ref role="3cqZAo" node="31oJ12vpJof" resolve="rModels" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="31oJ12vpJoG" role="1B3o_S" />
      <node concept="3uibUv" id="31oJ12vpJoH" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="5Eit_YPPyVJ" role="11_B2D">
          <ref role="3uigEE" to="bl6v:~RModel" resolve="RModel" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="31oJ12vpIiU" role="jymVt" />
    <node concept="3clFb_" id="2jA_ma2F4d" role="jymVt">
      <property role="TrG5h" value="rootsList" />
      <node concept="37vLTG" id="2jA_ma30hk" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="2jA_ma316B" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="3clFbS" id="2jA_ma2F4g" role="3clF47">
        <node concept="3cpWs8" id="2jA_ma3gSO" role="3cqZAp">
          <node concept="3cpWsn" id="2jA_ma3gSP" role="3cpWs9">
            <property role="TrG5h" value="rRoots" />
            <node concept="3uibUv" id="2jA_ma3gSM" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="5Eit_YPPEWM" role="11_B2D">
                <ref role="3uigEE" to="bl6v:~RNode" resolve="RNode" />
              </node>
            </node>
            <node concept="2ShNRf" id="2jA_ma3wpG" role="33vP2m">
              <node concept="1pGfFk" id="2jA_ma3Bcn" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~LinkedList.&lt;init&gt;()" resolve="LinkedList" />
                <node concept="3uibUv" id="5Eit_YPPGTP" role="1pMfVU">
                  <ref role="3uigEE" to="bl6v:~RNode" resolve="RNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="2jA_ma36gF" role="3cqZAp">
          <node concept="2GrKxI" id="2jA_ma36gH" role="2Gsz3X">
            <property role="TrG5h" value="root" />
          </node>
          <node concept="2OqwBi" id="2jA_ma3ajW" role="2GsD0m">
            <node concept="37vLTw" id="2jA_ma39bT" role="2Oq$k0">
              <ref role="3cqZAo" node="2jA_ma30hk" resolve="model" />
            </node>
            <node concept="liA8E" id="2jA_ma3bwO" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
            </node>
          </node>
          <node concept="3clFbS" id="2jA_ma36gL" role="2LFqv$">
            <node concept="3clFbF" id="2jA_ma3Wec" role="3cqZAp">
              <node concept="2OqwBi" id="2jA_ma3XZz" role="3clFbG">
                <node concept="37vLTw" id="2jA_ma3Wea" role="2Oq$k0">
                  <ref role="3cqZAo" node="2jA_ma3gSP" resolve="rRoots" />
                </node>
                <node concept="liA8E" id="2jA_ma400v" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                  <node concept="1rXfSq" id="2jA_ma7ybf" role="37wK5m">
                    <ref role="37wK5l" node="2jA_ma7748" resolve="toRNode" />
                    <node concept="2GrUjf" id="2jA_ma7zK5" role="37wK5m">
                      <ref role="2Gs0qQ" node="2jA_ma36gH" resolve="root" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2jA_ma3K2S" role="3cqZAp">
          <node concept="37vLTw" id="2jA_ma3Maj" role="3cqZAk">
            <ref role="3cqZAo" node="2jA_ma3gSP" resolve="rRoots" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2jA_ma2Dn9" role="1B3o_S" />
      <node concept="3uibUv" id="2jA_ma2REB" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="5Eit_YPPCV6" role="11_B2D">
          <ref role="3uigEE" to="bl6v:~RNode" resolve="RNode" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7UogrAGVLiJ" role="jymVt" />
    <node concept="3clFb_" id="2jA_ma7Yv$" role="jymVt">
      <property role="TrG5h" value="toRModule" />
      <node concept="37vLTG" id="2jA_ma8338" role="3clF46">
        <property role="TrG5h" value="module" />
        <node concept="3uibUv" id="2jA_ma8339" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="3clFbS" id="2jA_ma7YvB" role="3clF47">
        <node concept="3cpWs8" id="2jA_ma84yj" role="3cqZAp">
          <node concept="3cpWsn" id="2jA_ma84ym" role="3cpWs9">
            <property role="TrG5h" value="rModule" />
            <node concept="3uibUv" id="5Eit_YPOSnz" role="1tU5fm">
              <ref role="3uigEE" to="bl6v:~RModule" resolve="RModule" />
            </node>
            <node concept="2ShNRf" id="2jA_ma89I3" role="33vP2m">
              <node concept="1pGfFk" id="2jA_ma89Em" role="2ShVmc">
                <ref role="37wK5l" to="bl6v:~RModule.&lt;init&gt;()" resolve="RModule" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2jA_ma7YvH" role="3cqZAp">
          <node concept="1rXfSq" id="2jA_ma8hjU" role="3clFbG">
            <ref role="37wK5l" node="5I6f3mSOUYB" resolve="fillRModule" />
            <node concept="37vLTw" id="2jA_ma8iJ5" role="37wK5m">
              <ref role="3cqZAo" node="2jA_ma8338" resolve="module" />
            </node>
            <node concept="37vLTw" id="2jA_ma8llZ" role="37wK5m">
              <ref role="3cqZAo" node="2jA_ma84ym" resolve="rModule" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2jA_ma7YvL" role="3cqZAp">
          <node concept="37vLTw" id="2jA_ma8cjP" role="3cqZAk">
            <ref role="3cqZAo" node="2jA_ma84ym" resolve="rModule" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="5Eit_YPOR64" role="3clF45">
        <ref role="3uigEE" to="bl6v:~RModule" resolve="RModule" />
      </node>
      <node concept="3Tm1VV" id="2jA_ma7YvO" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5I6f3mSOYVM" role="jymVt" />
    <node concept="3clFb_" id="5I6f3mSOUYB" role="jymVt">
      <property role="TrG5h" value="fillRModule" />
      <node concept="3clFbS" id="5I6f3mSOUYC" role="3clF47">
        <node concept="3clFbF" id="5I6f3mSOUYD" role="3cqZAp">
          <node concept="2OqwBi" id="1zyYLgjWxIF" role="3clFbG">
            <node concept="2OqwBi" id="5I6f3mSOUYI" role="2Oq$k0">
              <node concept="37vLTw" id="5I6f3mSOUYJ" role="2Oq$k0">
                <ref role="3cqZAo" node="5I6f3mSOUZL" resolve="rModule" />
              </node>
              <node concept="liA8E" id="1zyYLgjWv7C" role="2OqNvi">
                <ref role="37wK5l" to="bl6v:~RModule.getModuleName()" resolve="getModuleName" />
              </node>
            </node>
            <node concept="liA8E" id="1zyYLgjW$vm" role="2OqNvi">
              <ref role="37wK5l" to="ohse:~IMutablePropertyBase.set(java.lang.Object)" resolve="set" />
              <node concept="2OqwBi" id="5I6f3mSOUYF" role="37wK5m">
                <node concept="37vLTw" id="5I6f3mSOUYG" role="2Oq$k0">
                  <ref role="3cqZAo" node="5I6f3mSOUZJ" resolve="sModule" />
                </node>
                <node concept="liA8E" id="5I6f3mSOUYH" role="2OqNvi">
                  <ref role="37wK5l" to="lui2:~SModule.getModuleName()" resolve="getModuleName" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="58QDHkDqOZM" role="3cqZAp">
          <node concept="2OqwBi" id="1zyYLgjW_W2" role="3clFbG">
            <node concept="2OqwBi" id="58QDHkDqPSy" role="2Oq$k0">
              <node concept="37vLTw" id="58QDHkDqPvQ" role="2Oq$k0">
                <ref role="3cqZAo" node="5I6f3mSOUZL" resolve="rModule" />
              </node>
              <node concept="liA8E" id="1zyYLgjW_kn" role="2OqNvi">
                <ref role="37wK5l" to="bl6v:~RModule.isPackaged()" resolve="isPackaged" />
              </node>
            </node>
            <node concept="liA8E" id="1zyYLgjWANp" role="2OqNvi">
              <ref role="37wK5l" to="ohse:~IMutablePropertyBase.set(java.lang.Object)" resolve="set" />
              <node concept="2OqwBi" id="58QDHkDqRbx" role="37wK5m">
                <node concept="37vLTw" id="58QDHkDqR1W" role="2Oq$k0">
                  <ref role="3cqZAo" node="5I6f3mSOUZJ" resolve="sModule" />
                </node>
                <node concept="liA8E" id="58QDHkDqRyE" role="2OqNvi">
                  <ref role="37wK5l" to="lui2:~SModule.isPackaged()" resolve="isPackaged" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="58QDHkDqRRa" role="3cqZAp">
          <node concept="2OqwBi" id="1zyYLgjWC9Q" role="3clFbG">
            <node concept="2OqwBi" id="58QDHkDqSkn" role="2Oq$k0">
              <node concept="37vLTw" id="58QDHkDqRR8" role="2Oq$k0">
                <ref role="3cqZAo" node="5I6f3mSOUZL" resolve="rModule" />
              </node>
              <node concept="liA8E" id="1zyYLgjWBy3" role="2OqNvi">
                <ref role="37wK5l" to="bl6v:~RModule.isReadOnly()" resolve="isReadOnly" />
              </node>
            </node>
            <node concept="liA8E" id="1zyYLgjWD08" role="2OqNvi">
              <ref role="37wK5l" to="ohse:~IMutablePropertyBase.set(java.lang.Object)" resolve="set" />
              <node concept="2OqwBi" id="58QDHkDqULm" role="37wK5m">
                <node concept="37vLTw" id="58QDHkDqUpT" role="2Oq$k0">
                  <ref role="3cqZAo" node="5I6f3mSOUZJ" resolve="sModule" />
                </node>
                <node concept="liA8E" id="58QDHkDqVad" role="2OqNvi">
                  <ref role="37wK5l" to="lui2:~SModule.isReadOnly()" resolve="isReadOnly" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5I6f3mSOUYL" role="3cqZAp">
          <node concept="3clFbS" id="5I6f3mSOUYM" role="3clFbx">
            <node concept="3cpWs8" id="5I6f3mSOUYN" role="3cqZAp">
              <node concept="3cpWsn" id="5I6f3mSOUYO" role="3cpWs9">
                <property role="TrG5h" value="midr" />
                <node concept="3uibUv" id="5I6f3mSOUYP" role="1tU5fm">
                  <ref role="3uigEE" to="z1c3:~ModuleId$Regular" resolve="ModuleId.Regular" />
                </node>
                <node concept="1eOMI4" id="5I6f3mSOUYQ" role="33vP2m">
                  <node concept="10QFUN" id="5I6f3mSOUYR" role="1eOMHV">
                    <node concept="3uibUv" id="5I6f3mSOUYS" role="10QFUM">
                      <ref role="3uigEE" to="z1c3:~ModuleId$Regular" resolve="ModuleId.Regular" />
                    </node>
                    <node concept="2OqwBi" id="5I6f3mSOUYT" role="10QFUP">
                      <node concept="37vLTw" id="5I6f3mSOUYU" role="2Oq$k0">
                        <ref role="3cqZAo" node="5I6f3mSOUZJ" resolve="sModule" />
                      </node>
                      <node concept="liA8E" id="5I6f3mSOUYV" role="2OqNvi">
                        <ref role="37wK5l" to="lui2:~SModule.getModuleId()" resolve="getModuleId" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1clIRS$VU1m" role="3cqZAp">
              <node concept="2OqwBi" id="1clIRS$VVrN" role="3clFbG">
                <node concept="2OqwBi" id="1clIRS$VUqN" role="2Oq$k0">
                  <node concept="37vLTw" id="1clIRS$VU1k" role="2Oq$k0">
                    <ref role="3cqZAo" node="5I6f3mSOUZL" resolve="rModule" />
                  </node>
                  <node concept="liA8E" id="1clIRS$VUHp" role="2OqNvi">
                    <ref role="37wK5l" to="bl6v:~RModule.getModuleId()" resolve="getModuleId" />
                  </node>
                </node>
                <node concept="liA8E" id="1clIRS$VX3G" role="2OqNvi">
                  <ref role="37wK5l" to="ohse:~IMutablePropertyBase.set(java.lang.Object)" resolve="set" />
                  <node concept="2OqwBi" id="6MRzD0qZvrc" role="37wK5m">
                    <node concept="2OqwBi" id="6MRzD0qZv4Y" role="2Oq$k0">
                      <node concept="37vLTw" id="6MRzD0qZv4Z" role="2Oq$k0">
                        <ref role="3cqZAo" node="5I6f3mSOUYO" resolve="midr" />
                      </node>
                      <node concept="liA8E" id="6MRzD0qZv50" role="2OqNvi">
                        <ref role="37wK5l" to="z1c3:~ModuleId$Regular.getUUID()" resolve="getUUID" />
                      </node>
                    </node>
                    <node concept="liA8E" id="6MRzD0qZvV2" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~UUID.toString()" resolve="toString" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="5I6f3mSOUZ4" role="3clFbw">
            <node concept="3uibUv" id="5I6f3mSOUZ5" role="2ZW6by">
              <ref role="3uigEE" to="z1c3:~ModuleId$Regular" resolve="ModuleId.Regular" />
            </node>
            <node concept="2OqwBi" id="5I6f3mSOUZ6" role="2ZW6bz">
              <node concept="37vLTw" id="5I6f3mSOUZ7" role="2Oq$k0">
                <ref role="3cqZAo" node="5I6f3mSOUZJ" resolve="sModule" />
              </node>
              <node concept="liA8E" id="5I6f3mSOUZ8" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SModule.getModuleId()" resolve="getModuleId" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="5I6f3mSOUZ9" role="9aQIa">
            <node concept="3clFbS" id="5I6f3mSOUZa" role="9aQI4">
              <node concept="YS8fn" id="5I6f3mSOUZb" role="3cqZAp">
                <node concept="2ShNRf" id="5I6f3mSOUZc" role="YScLw">
                  <node concept="1pGfFk" id="5I6f3mSOUZd" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;(java.lang.String)" resolve="UnsupportedOperationException" />
                    <node concept="2OqwBi" id="5I6f3mSOUZe" role="37wK5m">
                      <node concept="2OqwBi" id="5I6f3mSOUZf" role="2Oq$k0">
                        <node concept="2OqwBi" id="5I6f3mSOUZg" role="2Oq$k0">
                          <node concept="37vLTw" id="5I6f3mSOUZh" role="2Oq$k0">
                            <ref role="3cqZAo" node="5I6f3mSOUZJ" resolve="sModule" />
                          </node>
                          <node concept="liA8E" id="5I6f3mSOUZi" role="2OqNvi">
                            <ref role="37wK5l" to="lui2:~SModule.getModuleId()" resolve="getModuleId" />
                          </node>
                        </node>
                        <node concept="liA8E" id="5I6f3mSOUZj" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                        </node>
                      </node>
                      <node concept="liA8E" id="5I6f3mSOUZk" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Class.getCanonicalName()" resolve="getCanonicalName" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="5I6f3mSOUZl" role="3eNLev">
            <node concept="3clFbS" id="5I6f3mSOUZm" role="3eOfB_">
              <node concept="3cpWs8" id="5I6f3mSOUZn" role="3cqZAp">
                <node concept="3cpWsn" id="5I6f3mSOUZo" role="3cpWs9">
                  <property role="TrG5h" value="midf" />
                  <node concept="3uibUv" id="5I6f3mSOUZp" role="1tU5fm">
                    <ref role="3uigEE" to="z1c3:~ModuleId$Foreign" resolve="ModuleId.Foreign" />
                  </node>
                  <node concept="1eOMI4" id="5I6f3mSOUZq" role="33vP2m">
                    <node concept="10QFUN" id="5I6f3mSOUZr" role="1eOMHV">
                      <node concept="3uibUv" id="5I6f3mSOUZs" role="10QFUM">
                        <ref role="3uigEE" to="z1c3:~ModuleId$Foreign" resolve="ModuleId.Foreign" />
                      </node>
                      <node concept="2OqwBi" id="5I6f3mSOUZt" role="10QFUP">
                        <node concept="37vLTw" id="5I6f3mSOUZu" role="2Oq$k0">
                          <ref role="3cqZAo" node="5I6f3mSOUZJ" resolve="sModule" />
                        </node>
                        <node concept="liA8E" id="5I6f3mSOUZv" role="2OqNvi">
                          <ref role="37wK5l" to="lui2:~SModule.getModuleId()" resolve="getModuleId" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="5I6f3mSOUZw" role="3cqZAp">
                <node concept="2OqwBi" id="1zyYLgjWFfC" role="3clFbG">
                  <node concept="2OqwBi" id="5I6f3mSOUZ_" role="2Oq$k0">
                    <node concept="37vLTw" id="5I6f3mSOUZA" role="2Oq$k0">
                      <ref role="3cqZAo" node="5I6f3mSOUZL" resolve="rModule" />
                    </node>
                    <node concept="liA8E" id="1zyYLgjWEFj" role="2OqNvi">
                      <ref role="37wK5l" to="bl6v:~RModule.getModuleId()" resolve="getModuleId" />
                    </node>
                  </node>
                  <node concept="liA8E" id="1zyYLgjWG7e" role="2OqNvi">
                    <ref role="37wK5l" to="ohse:~IMutablePropertyBase.set(java.lang.Object)" resolve="set" />
                    <node concept="2OqwBi" id="5I6f3mSOUZy" role="37wK5m">
                      <node concept="37vLTw" id="5I6f3mSOUZz" role="2Oq$k0">
                        <ref role="3cqZAo" node="5I6f3mSOUZo" resolve="midf" />
                      </node>
                      <node concept="liA8E" id="5I6f3mSOUZ$" role="2OqNvi">
                        <ref role="37wK5l" to="z1c3:~ModuleId$Foreign.getName()" resolve="getName" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ZW3vV" id="5I6f3mSOUZC" role="3eO9$A">
              <node concept="3uibUv" id="5I6f3mSOUZD" role="2ZW6by">
                <ref role="3uigEE" to="z1c3:~ModuleId$Foreign" resolve="ModuleId.Foreign" />
              </node>
              <node concept="2OqwBi" id="5I6f3mSOUZE" role="2ZW6bz">
                <node concept="37vLTw" id="5I6f3mSOUZF" role="2Oq$k0">
                  <ref role="3cqZAo" node="5I6f3mSOUZJ" resolve="sModule" />
                </node>
                <node concept="liA8E" id="5I6f3mSOUZG" role="2OqNvi">
                  <ref role="37wK5l" to="lui2:~SModule.getModuleId()" resolve="getModuleId" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="31oJ12vpumU" role="3cqZAp">
          <node concept="2OqwBi" id="31oJ12vpxsA" role="3clFbG">
            <node concept="2OqwBi" id="31oJ12vpvcv" role="2Oq$k0">
              <node concept="37vLTw" id="31oJ12vpumS" role="2Oq$k0">
                <ref role="3cqZAo" node="5I6f3mSOUZL" resolve="rModule" />
              </node>
              <node concept="liA8E" id="31oJ12vpvHm" role="2OqNvi">
                <ref role="37wK5l" to="bl6v:~RModule.getModels()" resolve="getModels" />
              </node>
            </node>
            <node concept="liA8E" id="31oJ12vpC7o" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.addAll(java.util.Collection)" resolve="addAll" />
              <node concept="1rXfSq" id="31oJ12vrgxg" role="37wK5m">
                <ref role="37wK5l" node="31oJ12vpJoc" resolve="modelsList" />
                <node concept="37vLTw" id="31oJ12vrhLg" role="37wK5m">
                  <ref role="3cqZAo" node="5I6f3mSOUZJ" resolve="sModule" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5I6f3mSOUZH" role="1B3o_S" />
      <node concept="3cqZAl" id="5I6f3mSOUZI" role="3clF45" />
      <node concept="37vLTG" id="5I6f3mSOUZJ" role="3clF46">
        <property role="TrG5h" value="sModule" />
        <node concept="3uibUv" id="5I6f3mSOUZK" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="37vLTG" id="5I6f3mSOUZL" role="3clF46">
        <property role="TrG5h" value="rModule" />
        <node concept="3uibUv" id="5Eit_YPOUWJ" role="1tU5fm">
          <ref role="3uigEE" to="bl6v:~RModule" resolve="RModule" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="Fhwl$awSPq" role="jymVt" />
    <node concept="3clFb_" id="2jA_ma7CHG" role="jymVt">
      <property role="TrG5h" value="toRModel" />
      <node concept="37vLTG" id="2jA_ma7FOt" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="2jA_ma7FOu" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="3clFbS" id="2jA_ma7CHJ" role="3clF47">
        <node concept="3cpWs8" id="2jA_ma7Ilz" role="3cqZAp">
          <node concept="3cpWsn" id="2jA_ma7IlA" role="3cpWs9">
            <property role="TrG5h" value="rModel" />
            <node concept="3uibUv" id="5Eit_YPPc3G" role="1tU5fm">
              <ref role="3uigEE" to="bl6v:~RModel" resolve="RModel" />
            </node>
            <node concept="2ShNRf" id="2jA_ma7KY1" role="33vP2m">
              <node concept="1pGfFk" id="2jA_ma7KUk" role="2ShVmc">
                <ref role="37wK5l" to="bl6v:~RModel.&lt;init&gt;()" resolve="RModel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2jA_ma7CHP" role="3cqZAp">
          <node concept="1rXfSq" id="2jA_ma7CHQ" role="3clFbG">
            <ref role="37wK5l" node="4XQ2p$w3v5G" resolve="fillRModel" />
            <node concept="37vLTw" id="2jA_ma7UhI" role="37wK5m">
              <ref role="3cqZAo" node="2jA_ma7FOt" resolve="model" />
            </node>
            <node concept="37vLTw" id="2jA_ma7VDu" role="37wK5m">
              <ref role="3cqZAo" node="2jA_ma7IlA" resolve="rModel" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2jA_ma7CHT" role="3cqZAp">
          <node concept="37vLTw" id="2jA_ma7Q7w" role="3cqZAk">
            <ref role="3cqZAo" node="2jA_ma7IlA" resolve="rModel" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="5Eit_YPPapv" role="3clF45">
        <ref role="3uigEE" to="bl6v:~RModel" resolve="RModel" />
      </node>
      <node concept="3Tm1VV" id="2jA_ma7CHW" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2jA_ma7AF5" role="jymVt" />
    <node concept="3clFb_" id="4XQ2p$w3v5G" role="jymVt">
      <property role="TrG5h" value="fillRModel" />
      <node concept="3clFbS" id="4XQ2p$w3v5H" role="3clF47">
        <node concept="3clFbJ" id="4XQ2p$w3v5Q" role="3cqZAp">
          <node concept="3clFbS" id="4XQ2p$w3v5R" role="3clFbx">
            <node concept="3cpWs8" id="4XQ2p$w4n_i" role="3cqZAp">
              <node concept="3cpWsn" id="4XQ2p$w4n_j" role="3cpWs9">
                <property role="TrG5h" value="casted" />
                <node concept="3uibUv" id="4XQ2p$w4nOW" role="1tU5fm">
                  <ref role="3uigEE" to="w1kc:~SModelId$RegularSModelId" resolve="SModelId.RegularSModelId" />
                </node>
                <node concept="1eOMI4" id="4XQ2p$w4n_l" role="33vP2m">
                  <node concept="10QFUN" id="4XQ2p$w4n_m" role="1eOMHV">
                    <node concept="3uibUv" id="4XQ2p$w4nIO" role="10QFUM">
                      <ref role="3uigEE" to="w1kc:~SModelId$RegularSModelId" resolve="SModelId.RegularSModelId" />
                    </node>
                    <node concept="2OqwBi" id="4XQ2p$w4n_o" role="10QFUP">
                      <node concept="37vLTw" id="4XQ2p$w4n_p" role="2Oq$k0">
                        <ref role="3cqZAo" node="4XQ2p$w3v6O" resolve="model" />
                      </node>
                      <node concept="liA8E" id="4XQ2p$w4n_q" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SModel.getModelId()" resolve="getModelId" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4XQ2p$w4n_r" role="3cqZAp">
              <node concept="2OqwBi" id="31oJ12vqpRS" role="3clFbG">
                <node concept="2OqwBi" id="4XQ2p$w4n_w" role="2Oq$k0">
                  <node concept="37vLTw" id="4XQ2p$w4n_x" role="2Oq$k0">
                    <ref role="3cqZAo" node="4XQ2p$w3v6Q" resolve="rModel" />
                  </node>
                  <node concept="liA8E" id="31oJ12vqopp" role="2OqNvi">
                    <ref role="37wK5l" to="bl6v:~RModel.getModelId()" resolve="getModelId" />
                  </node>
                </node>
                <node concept="liA8E" id="31oJ12vqrfs" role="2OqNvi">
                  <ref role="37wK5l" to="ohse:~IMutablePropertyBase.set(java.lang.Object)" resolve="set" />
                  <node concept="2OqwBi" id="31oJ12vqswe" role="37wK5m">
                    <node concept="2OqwBi" id="4XQ2p$w4n_t" role="2Oq$k0">
                      <node concept="37vLTw" id="4XQ2p$w4n_u" role="2Oq$k0">
                        <ref role="3cqZAo" node="4XQ2p$w4n_j" resolve="casted" />
                      </node>
                      <node concept="liA8E" id="4XQ2p$w4odT" role="2OqNvi">
                        <ref role="37wK5l" to="w1kc:~SModelId$RegularSModelId.getId()" resolve="getId" />
                      </node>
                    </node>
                    <node concept="liA8E" id="31oJ12vqtKr" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~UUID.toString()" resolve="toString" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="4XQ2p$w3v69" role="3clFbw">
            <node concept="3uibUv" id="4XQ2p$w4n$H" role="2ZW6by">
              <ref role="3uigEE" to="w1kc:~SModelId$RegularSModelId" resolve="SModelId.RegularSModelId" />
            </node>
            <node concept="2OqwBi" id="4XQ2p$w3v6b" role="2ZW6bz">
              <node concept="37vLTw" id="4XQ2p$w3v6c" role="2Oq$k0">
                <ref role="3cqZAo" node="4XQ2p$w3v6O" resolve="model" />
              </node>
              <node concept="liA8E" id="4XQ2p$w3_qr" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getModelId()" resolve="getModelId" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="4XQ2p$w3v6e" role="9aQIa">
            <node concept="3clFbS" id="4XQ2p$w3v6f" role="9aQI4">
              <node concept="YS8fn" id="4XQ2p$w3v6g" role="3cqZAp">
                <node concept="2ShNRf" id="4XQ2p$w3v6h" role="YScLw">
                  <node concept="1pGfFk" id="4XQ2p$w3v6i" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;(java.lang.String)" resolve="UnsupportedOperationException" />
                    <node concept="3cpWs3" id="2ig$0l9OFvb" role="37wK5m">
                      <node concept="Xl_RD" id="2ig$0l9OEOB" role="3uHU7B">
                        <property role="Xl_RC" value="Unknown ModelID: " />
                      </node>
                      <node concept="2OqwBi" id="4XQ2p$w3v6j" role="3uHU7w">
                        <node concept="2OqwBi" id="4XQ2p$w3v6k" role="2Oq$k0">
                          <node concept="2OqwBi" id="4XQ2p$w3v6l" role="2Oq$k0">
                            <node concept="37vLTw" id="4XQ2p$w3v6m" role="2Oq$k0">
                              <ref role="3cqZAo" node="4XQ2p$w3v6O" resolve="model" />
                            </node>
                            <node concept="liA8E" id="4XQ2p$w3K5B" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SModel.getModelId()" resolve="getModelId" />
                            </node>
                          </node>
                          <node concept="liA8E" id="4XQ2p$w3v6o" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                          </node>
                        </node>
                        <node concept="liA8E" id="4XQ2p$w3v6p" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~Class.getCanonicalName()" resolve="getCanonicalName" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="4XQ2p$w3v6q" role="3eNLev">
            <node concept="3clFbS" id="4XQ2p$w3v6r" role="3eOfB_">
              <node concept="3cpWs8" id="4XQ2p$w3Mck" role="3cqZAp">
                <node concept="3cpWsn" id="4XQ2p$w3Mcl" role="3cpWs9">
                  <property role="TrG5h" value="casted" />
                  <node concept="3uibUv" id="4XQ2p$w3Mcm" role="1tU5fm">
                    <ref role="3uigEE" to="w1kc:~SModelId$ForeignSModelId" resolve="SModelId.ForeignSModelId" />
                  </node>
                  <node concept="1eOMI4" id="4XQ2p$w3Mdy" role="33vP2m">
                    <node concept="10QFUN" id="4XQ2p$w3Mdv" role="1eOMHV">
                      <node concept="3uibUv" id="4XQ2p$w3Md$" role="10QFUM">
                        <ref role="3uigEE" to="w1kc:~SModelId$ForeignSModelId" resolve="SModelId.ForeignSModelId" />
                      </node>
                      <node concept="2OqwBi" id="4XQ2p$w3Md_" role="10QFUP">
                        <node concept="37vLTw" id="4XQ2p$w3MdA" role="2Oq$k0">
                          <ref role="3cqZAo" node="4XQ2p$w3v6O" resolve="model" />
                        </node>
                        <node concept="liA8E" id="4XQ2p$w3MdB" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SModel.getModelId()" resolve="getModelId" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="31oJ12vqyu4" role="3cqZAp">
                <node concept="2OqwBi" id="31oJ12vqyu6" role="3clFbG">
                  <node concept="2OqwBi" id="31oJ12vqyu7" role="2Oq$k0">
                    <node concept="37vLTw" id="31oJ12vqyu8" role="2Oq$k0">
                      <ref role="3cqZAo" node="4XQ2p$w3v6Q" resolve="rModel" />
                    </node>
                    <node concept="liA8E" id="31oJ12vqyu9" role="2OqNvi">
                      <ref role="37wK5l" to="bl6v:~RModel.getModelId()" resolve="getModelId" />
                    </node>
                  </node>
                  <node concept="liA8E" id="31oJ12vqyua" role="2OqNvi">
                    <ref role="37wK5l" to="ohse:~IMutablePropertyBase.set(java.lang.Object)" resolve="set" />
                    <node concept="3cpWs3" id="31oJ12vqFk$" role="37wK5m">
                      <node concept="Xl_RD" id="31oJ12vqE9J" role="3uHU7B">
                        <property role="Xl_RC" value="foreign:" />
                      </node>
                      <node concept="2OqwBi" id="31oJ12vqyub" role="3uHU7w">
                        <node concept="2OqwBi" id="31oJ12vqyuc" role="2Oq$k0">
                          <node concept="37vLTw" id="31oJ12vqyud" role="2Oq$k0">
                            <ref role="3cqZAo" node="4XQ2p$w3Mcl" resolve="casted" />
                          </node>
                          <node concept="liA8E" id="31oJ12vqyue" role="2OqNvi">
                            <ref role="37wK5l" to="w1kc:~SModelId$ForeignSModelId.getId()" resolve="getId" />
                          </node>
                        </node>
                        <node concept="liA8E" id="31oJ12vqyuf" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.toString()" resolve="toString" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ZW3vV" id="4XQ2p$w3v6H" role="3eO9$A">
              <node concept="3uibUv" id="4XQ2p$w3MaP" role="2ZW6by">
                <ref role="3uigEE" to="w1kc:~SModelId$ForeignSModelId" resolve="SModelId.ForeignSModelId" />
              </node>
              <node concept="2OqwBi" id="4XQ2p$w3v6J" role="2ZW6bz">
                <node concept="37vLTw" id="4XQ2p$w3v6K" role="2Oq$k0">
                  <ref role="3cqZAo" node="4XQ2p$w3v6O" resolve="model" />
                </node>
                <node concept="liA8E" id="4XQ2p$w3_HP" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.getModelId()" resolve="getModelId" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="2ig$0l9OeZM" role="3eNLev">
            <node concept="2ZW3vV" id="2ig$0l9Og5n" role="3eO9$A">
              <node concept="3uibUv" id="2ig$0l9OgqK" role="2ZW6by">
                <ref role="3uigEE" to="w1kc:~SModelId$IntegerSModelId" resolve="SModelId.IntegerSModelId" />
              </node>
              <node concept="2OqwBi" id="2ig$0l9OfQ_" role="2ZW6bz">
                <node concept="37vLTw" id="2ig$0l9OfKR" role="2Oq$k0">
                  <ref role="3cqZAo" node="4XQ2p$w3v6O" resolve="model" />
                </node>
                <node concept="liA8E" id="2ig$0l9OfZa" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.getModelId()" resolve="getModelId" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="2ig$0l9OeZO" role="3eOfB_">
              <node concept="3cpWs8" id="2ig$0l9OgsH" role="3cqZAp">
                <node concept="3cpWsn" id="2ig$0l9OgsI" role="3cpWs9">
                  <property role="TrG5h" value="casted" />
                  <node concept="3uibUv" id="2ig$0l9OgFO" role="1tU5fm">
                    <ref role="3uigEE" to="w1kc:~SModelId$IntegerSModelId" resolve="SModelId.IntegerSModelId" />
                  </node>
                  <node concept="1eOMI4" id="2ig$0l9OgsK" role="33vP2m">
                    <node concept="10QFUN" id="2ig$0l9OgsL" role="1eOMHV">
                      <node concept="3uibUv" id="2ig$0l9OgEx" role="10QFUM">
                        <ref role="3uigEE" to="w1kc:~SModelId$IntegerSModelId" resolve="SModelId.IntegerSModelId" />
                      </node>
                      <node concept="2OqwBi" id="2ig$0l9OgsN" role="10QFUP">
                        <node concept="37vLTw" id="2ig$0l9OgsO" role="2Oq$k0">
                          <ref role="3cqZAo" node="4XQ2p$w3v6O" resolve="model" />
                        </node>
                        <node concept="liA8E" id="2ig$0l9OgsP" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SModel.getModelId()" resolve="getModelId" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="31oJ12vqMrr" role="3cqZAp">
                <node concept="2OqwBi" id="31oJ12vqMrs" role="3clFbG">
                  <node concept="2OqwBi" id="31oJ12vqMrt" role="2Oq$k0">
                    <node concept="37vLTw" id="31oJ12vqMru" role="2Oq$k0">
                      <ref role="3cqZAo" node="4XQ2p$w3v6Q" resolve="rModel" />
                    </node>
                    <node concept="liA8E" id="31oJ12vqMrv" role="2OqNvi">
                      <ref role="37wK5l" to="bl6v:~RModel.getModelId()" resolve="getModelId" />
                    </node>
                  </node>
                  <node concept="liA8E" id="31oJ12vqMrw" role="2OqNvi">
                    <ref role="37wK5l" to="ohse:~IMutablePropertyBase.set(java.lang.Object)" resolve="set" />
                    <node concept="2OqwBi" id="31oJ12vqMrx" role="37wK5m">
                      <node concept="37vLTw" id="31oJ12vqMrz" role="2Oq$k0">
                        <ref role="3cqZAo" node="2ig$0l9OgsI" resolve="casted" />
                      </node>
                      <node concept="liA8E" id="31oJ12vqMr_" role="2OqNvi">
                        <ref role="37wK5l" to="w1kc:~SModelId$IntegerSModelId.toString()" resolve="toString" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="5CDZnbmhdns" role="3eNLev">
            <node concept="2ZW3vV" id="5CDZnbmhfkT" role="3eO9$A">
              <node concept="3uibUv" id="5CDZnbmhjMC" role="2ZW6by">
                <ref role="3uigEE" to="i290:~JavaPackageModelId" resolve="JavaPackageModelId" />
              </node>
              <node concept="2OqwBi" id="5CDZnbmhe$g" role="2ZW6bz">
                <node concept="37vLTw" id="5CDZnbmhdWa" role="2Oq$k0">
                  <ref role="3cqZAo" node="4XQ2p$w3v6O" resolve="model" />
                </node>
                <node concept="liA8E" id="5CDZnbmhf81" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.getModelId()" resolve="getModelId" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="5CDZnbmhdnu" role="3eOfB_">
              <node concept="3cpWs8" id="5CDZnbmhlng" role="3cqZAp">
                <node concept="3cpWsn" id="5CDZnbmhlnh" role="3cpWs9">
                  <property role="TrG5h" value="casted" />
                  <node concept="3uibUv" id="5CDZnbmhlVa" role="1tU5fm">
                    <ref role="3uigEE" to="i290:~JavaPackageModelId" resolve="JavaPackageModelId" />
                  </node>
                  <node concept="1eOMI4" id="5CDZnbmhlnj" role="33vP2m">
                    <node concept="10QFUN" id="5CDZnbmhlnk" role="1eOMHV">
                      <node concept="3uibUv" id="5CDZnbmhlXg" role="10QFUM">
                        <ref role="3uigEE" to="i290:~JavaPackageModelId" resolve="JavaPackageModelId" />
                      </node>
                      <node concept="2OqwBi" id="5CDZnbmhlnm" role="10QFUP">
                        <node concept="37vLTw" id="5CDZnbmhlnn" role="2Oq$k0">
                          <ref role="3cqZAo" node="4XQ2p$w3v6O" resolve="model" />
                        </node>
                        <node concept="liA8E" id="5CDZnbmhlno" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SModel.getModelId()" resolve="getModelId" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="31oJ12vqWyQ" role="3cqZAp">
                <node concept="2OqwBi" id="31oJ12vqWyR" role="3clFbG">
                  <node concept="2OqwBi" id="31oJ12vqWyS" role="2Oq$k0">
                    <node concept="37vLTw" id="31oJ12vqWyT" role="2Oq$k0">
                      <ref role="3cqZAo" node="4XQ2p$w3v6Q" resolve="rModel" />
                    </node>
                    <node concept="liA8E" id="31oJ12vqWyU" role="2OqNvi">
                      <ref role="37wK5l" to="bl6v:~RModel.getModelId()" resolve="getModelId" />
                    </node>
                  </node>
                  <node concept="liA8E" id="31oJ12vqWyV" role="2OqNvi">
                    <ref role="37wK5l" to="ohse:~IMutablePropertyBase.set(java.lang.Object)" resolve="set" />
                    <node concept="2OqwBi" id="31oJ12vqWyW" role="37wK5m">
                      <node concept="37vLTw" id="31oJ12vqWyX" role="2Oq$k0">
                        <ref role="3cqZAo" node="5CDZnbmhlnh" resolve="casted" />
                      </node>
                      <node concept="liA8E" id="31oJ12vqWyY" role="2OqNvi">
                        <ref role="37wK5l" to="i290:~PackageModelId.toString()" resolve="toString" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5LWLxbUekuz" role="3cqZAp">
          <node concept="2OqwBi" id="5LWLxbUetPe" role="3clFbG">
            <node concept="2OqwBi" id="5LWLxbUenkV" role="2Oq$k0">
              <node concept="37vLTw" id="5LWLxbUekux" role="2Oq$k0">
                <ref role="3cqZAo" node="4XQ2p$w3v6Q" resolve="rModel" />
              </node>
              <node concept="liA8E" id="5LWLxbUeq$t" role="2OqNvi">
                <ref role="37wK5l" to="bl6v:~RModel.getModelName()" resolve="getModelName" />
              </node>
            </node>
            <node concept="liA8E" id="5LWLxbUewSh" role="2OqNvi">
              <ref role="37wK5l" to="ohse:~IMutablePropertyBase.set(java.lang.Object)" resolve="set" />
              <node concept="2OqwBi" id="5LWLxbUe_P4" role="37wK5m">
                <node concept="37vLTw" id="5LWLxbUezwV" role="2Oq$k0">
                  <ref role="3cqZAo" node="4XQ2p$w3v6O" resolve="model" />
                </node>
                <node concept="liA8E" id="5LWLxbUeC8g" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.getModelName()" resolve="getModelName" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2jA_ma90Cc" role="3cqZAp">
          <node concept="2OqwBi" id="2jA_ma96vU" role="3clFbG">
            <node concept="2OqwBi" id="2jA_ma9247" role="2Oq$k0">
              <node concept="37vLTw" id="2jA_ma90Ca" role="2Oq$k0">
                <ref role="3cqZAo" node="4XQ2p$w3v6Q" resolve="rModel" />
              </node>
              <node concept="liA8E" id="2jA_ma947f" role="2OqNvi">
                <ref role="37wK5l" to="bl6v:~RModel.getRootNodes()" resolve="getRootNodes" />
              </node>
            </node>
            <node concept="liA8E" id="2jA_ma9af3" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.addAll(java.util.Collection)" resolve="addAll" />
              <node concept="1rXfSq" id="2jA_ma9cdw" role="37wK5m">
                <ref role="37wK5l" node="2jA_ma2F4d" resolve="rootsList" />
                <node concept="37vLTw" id="2jA_ma9fYZ" role="37wK5m">
                  <ref role="3cqZAo" node="4XQ2p$w3v6O" resolve="model" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4XQ2p$w3v5I" role="3cqZAp">
          <node concept="2OqwBi" id="31oJ12vqhuz" role="3clFbG">
            <node concept="2OqwBi" id="4XQ2p$w3v5N" role="2Oq$k0">
              <node concept="37vLTw" id="4XQ2p$w3v5O" role="2Oq$k0">
                <ref role="3cqZAo" node="4XQ2p$w3v6Q" resolve="rModel" />
              </node>
              <node concept="liA8E" id="31oJ12vqg1A" role="2OqNvi">
                <ref role="37wK5l" to="bl6v:~RModel.getModuleName()" resolve="getModuleName" />
              </node>
            </node>
            <node concept="liA8E" id="31oJ12vqiPd" role="2OqNvi">
              <ref role="37wK5l" to="ohse:~IMutablePropertyBase.set(java.lang.Object)" resolve="set" />
              <node concept="2OqwBi" id="5LWLxbUeMDh" role="37wK5m">
                <node concept="2OqwBi" id="4XQ2p$w3v5K" role="2Oq$k0">
                  <node concept="37vLTw" id="4XQ2p$w3v5L" role="2Oq$k0">
                    <ref role="3cqZAo" node="4XQ2p$w3v6O" resolve="model" />
                  </node>
                  <node concept="liA8E" id="4XQ2p$w3JPG" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                  </node>
                </node>
                <node concept="liA8E" id="5LWLxbUeP0v" role="2OqNvi">
                  <ref role="37wK5l" to="lui2:~SModule.getModuleName()" resolve="getModuleName" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="34zpjGx6d9A" role="3cqZAp">
          <node concept="2OqwBi" id="31oJ12vq9O4" role="3clFbG">
            <node concept="2OqwBi" id="34zpjGx6d$S" role="2Oq$k0">
              <node concept="37vLTw" id="34zpjGx6d9$" role="2Oq$k0">
                <ref role="3cqZAo" node="4XQ2p$w3v6Q" resolve="rModel" />
              </node>
              <node concept="liA8E" id="31oJ12vq8o_" role="2OqNvi">
                <ref role="37wK5l" to="bl6v:~RModel.isReadOnly()" resolve="isReadOnly" />
              </node>
            </node>
            <node concept="liA8E" id="31oJ12vqceS" role="2OqNvi">
              <ref role="37wK5l" to="ohse:~IMutablePropertyBase.set(java.lang.Object)" resolve="set" />
              <node concept="2OqwBi" id="34zpjGx6f8$" role="37wK5m">
                <node concept="37vLTw" id="34zpjGx6f8_" role="2Oq$k0">
                  <ref role="3cqZAo" node="4XQ2p$w3v6O" resolve="model" />
                </node>
                <node concept="liA8E" id="34zpjGx6f8A" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.isReadOnly()" resolve="isReadOnly" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4XQ2p$w3v6M" role="1B3o_S" />
      <node concept="3cqZAl" id="4XQ2p$w3v6N" role="3clF45" />
      <node concept="37vLTG" id="4XQ2p$w3v6O" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="4XQ2p$w3J5w" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="37vLTG" id="4XQ2p$w3v6Q" role="3clF46">
        <property role="TrG5h" value="rModel" />
        <node concept="3uibUv" id="5Eit_YPPfuN" role="1tU5fm">
          <ref role="3uigEE" to="bl6v:~RModel" resolve="RModel" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4TOnZ98DcQG" role="jymVt" />
    <node concept="3clFb_" id="2jA_ma7748" role="jymVt">
      <property role="TrG5h" value="toRNode" />
      <node concept="37vLTG" id="2jA_ma7nki" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="2jA_ma7nkj" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3clFbS" id="2jA_ma774b" role="3clF47">
        <node concept="3cpWs6" id="7I2W7Rzo_vB" role="3cqZAp">
          <node concept="2OqwBi" id="7I2W7Rzp05$" role="3cqZAk">
            <node concept="10M0yZ" id="7I2W7RzpUdY" role="2Oq$k0">
              <ref role="3cqZAo" to="bl6v:~NodeSynchronizer.INSTANCE" resolve="INSTANCE" />
              <ref role="1PxDUh" to="bl6v:~NodeSynchronizer" resolve="NodeSynchronizer" />
            </node>
            <node concept="liA8E" id="7I2W7Rzp2xk" role="2OqNvi">
              <ref role="37wK5l" to="bl6v:~NodeSynchronizer.getOrCreateRNode(org.jetbrains.mps.openapi.model.SNode)" resolve="getOrCreateRNode" />
              <node concept="37vLTw" id="7I2W7Rzp4sk" role="37wK5m">
                <ref role="3cqZAo" node="2jA_ma7nki" resolve="node" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="5Eit_YPPMX9" role="3clF45">
        <ref role="3uigEE" to="bl6v:~RNode" resolve="RNode" />
      </node>
      <node concept="3Tm1VV" id="2jA_ma7_fz" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7aWSAo_Msv6" role="jymVt" />
    <node concept="3Tm1VV" id="4XQ2p$w1IaZ" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="1zyYLgjXriR">
    <property role="3GE5qa" value="server" />
    <property role="TrG5h" value="Server" />
    <node concept="2tJIrI" id="1zyYLgjXwja" role="jymVt" />
    <node concept="312cEu" id="6Jg9HTa6xHe" role="jymVt">
      <property role="TrG5h" value="ServerConfiguration" />
      <node concept="312cEg" id="1zyYLgjXrmr" role="jymVt">
        <property role="TrG5h" value="port" />
        <node concept="3Tm6S6" id="1zyYLgjXrms" role="1B3o_S" />
        <node concept="10Oyi0" id="1zyYLgjXrmt" role="1tU5fm" />
        <node concept="3cmrfG" id="1zyYLgjXvWa" role="33vP2m">
          <property role="3cmrfH" value="8888" />
        </node>
      </node>
      <node concept="312cEg" id="1zyYLgjXrmy" role="jymVt">
        <property role="TrG5h" value="repo" />
        <node concept="3Tm6S6" id="1zyYLgjXrmz" role="1B3o_S" />
        <node concept="3uibUv" id="1zyYLgjXrm$" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
        <node concept="10Nm6u" id="1zyYLgjXrm_" role="33vP2m" />
      </node>
      <node concept="2tJIrI" id="1zyYLgjXrmT" role="jymVt" />
      <node concept="3clFbW" id="1zyYLgjXrmU" role="jymVt">
        <node concept="37vLTG" id="1zyYLgjXrmV" role="3clF46">
          <property role="TrG5h" value="repo" />
          <node concept="3uibUv" id="1zyYLgjXrmW" role="1tU5fm">
            <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
          </node>
        </node>
        <node concept="3cqZAl" id="1zyYLgjXrmX" role="3clF45" />
        <node concept="3Tm1VV" id="1zyYLgjXrmY" role="1B3o_S" />
        <node concept="3clFbS" id="1zyYLgjXrmZ" role="3clF47">
          <node concept="3clFbF" id="1zyYLgjXrn0" role="3cqZAp">
            <node concept="37vLTI" id="1zyYLgjXrn1" role="3clFbG">
              <node concept="37vLTw" id="1zyYLgjXrn2" role="37vLTx">
                <ref role="3cqZAo" node="1zyYLgjXrmV" resolve="repo" />
              </node>
              <node concept="2OqwBi" id="1zyYLgjXrn3" role="37vLTJ">
                <node concept="Xjq3P" id="1zyYLgjXrn4" role="2Oq$k0" />
                <node concept="2OwXpG" id="1zyYLgjXrn5" role="2OqNvi">
                  <ref role="2Oxat5" node="1zyYLgjXrmy" resolve="repo" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="1zyYLgjXrn6" role="jymVt" />
      <node concept="3clFb_" id="1zyYLgjXrn7" role="jymVt">
        <property role="TrG5h" value="getRepo" />
        <node concept="3clFbS" id="1zyYLgjXrn8" role="3clF47">
          <node concept="3cpWs6" id="1zyYLgjXrn9" role="3cqZAp">
            <node concept="37vLTw" id="1zyYLgjXrna" role="3cqZAk">
              <ref role="3cqZAo" node="1zyYLgjXrmy" resolve="repo" />
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="1zyYLgjXrnb" role="1B3o_S" />
        <node concept="3uibUv" id="1zyYLgjXrnc" role="3clF45">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="2tJIrI" id="1zyYLgjXrnd" role="jymVt" />
      <node concept="3clFb_" id="1zyYLgjXrne" role="jymVt">
        <property role="TrG5h" value="port" />
        <node concept="3clFbS" id="1zyYLgjXrnf" role="3clF47">
          <node concept="3clFbF" id="1zyYLgjXrng" role="3cqZAp">
            <node concept="37vLTI" id="1zyYLgjXrnh" role="3clFbG">
              <node concept="37vLTw" id="1zyYLgjXrni" role="37vLTx">
                <ref role="3cqZAo" node="1zyYLgjXrnq" resolve="port" />
              </node>
              <node concept="2OqwBi" id="1zyYLgjXrnj" role="37vLTJ">
                <node concept="Xjq3P" id="1zyYLgjXrnk" role="2Oq$k0" />
                <node concept="2OwXpG" id="1zyYLgjXrnl" role="2OqNvi">
                  <ref role="2Oxat5" node="1zyYLgjXrmr" resolve="port" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="1zyYLgjXrnm" role="3cqZAp">
            <node concept="Xjq3P" id="1zyYLgjXrnn" role="3cqZAk" />
          </node>
        </node>
        <node concept="3Tm1VV" id="1zyYLgjXrno" role="1B3o_S" />
        <node concept="3uibUv" id="1zyYLgjXrnp" role="3clF45">
          <ref role="3uigEE" node="6Jg9HTa6xHe" resolve="Server.ServerConfiguration" />
        </node>
        <node concept="37vLTG" id="1zyYLgjXrnq" role="3clF46">
          <property role="TrG5h" value="port" />
          <node concept="10Oyi0" id="1zyYLgjXrnr" role="1tU5fm" />
        </node>
      </node>
      <node concept="3clFb_" id="1zyYLgjXrns" role="jymVt">
        <property role="TrG5h" value="getPort" />
        <node concept="3clFbS" id="1zyYLgjXrnt" role="3clF47">
          <node concept="3cpWs6" id="1zyYLgjXrnu" role="3cqZAp">
            <node concept="2OqwBi" id="1zyYLgjXrnv" role="3cqZAk">
              <node concept="Xjq3P" id="1zyYLgjXrnw" role="2Oq$k0" />
              <node concept="2OwXpG" id="1zyYLgjXrnx" role="2OqNvi">
                <ref role="2Oxat5" node="1zyYLgjXrmr" resolve="port" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="1zyYLgjXrny" role="1B3o_S" />
        <node concept="10Oyi0" id="1zyYLgjXrnz" role="3clF45" />
      </node>
      <node concept="2tJIrI" id="1zyYLgjXrn$" role="jymVt" />
      <node concept="3clFb_" id="1zyYLgjXroq" role="jymVt">
        <property role="TrG5h" value="print" />
        <node concept="3clFbS" id="1zyYLgjXror" role="3clF47">
          <node concept="3clFbF" id="3o_PK4OU3MV" role="3cqZAp">
            <node concept="1rXfSq" id="3o_PK4OU3MT" role="3clFbG">
              <ref role="37wK5l" node="3o_PK4OSYBF" resolve="log" />
              <node concept="Xl_RD" id="3o_PK4OUe2c" role="37wK5m">
                <property role="Xl_RC" value="Server configuration" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3o_PK4OUo6E" role="3cqZAp">
            <node concept="1rXfSq" id="3o_PK4OUo6F" role="3clFbG">
              <ref role="37wK5l" node="3o_PK4OSYBF" resolve="log" />
              <node concept="3cpWs3" id="3o_PK4OUYmn" role="37wK5m">
                <node concept="37vLTw" id="3o_PK4OV0iP" role="3uHU7w">
                  <ref role="3cqZAo" node="1zyYLgjXrmr" resolve="port" />
                </node>
                <node concept="Xl_RD" id="3o_PK4OUAwN" role="3uHU7B">
                  <property role="Xl_RC" value="  Port            : " />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="1zyYLgjXroE" role="1B3o_S" />
        <node concept="3cqZAl" id="1zyYLgjXroF" role="3clF45" />
      </node>
      <node concept="3Tm1VV" id="6Jg9HTa6xHf" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1zyYLgjXrmf" role="jymVt" />
    <node concept="Wx3nA" id="5SYYrGB_nXY" role="jymVt">
      <property role="TrG5h" value="INSTANCE" />
      <node concept="3Tm6S6" id="5SYYrGB_nT0" role="1B3o_S" />
      <node concept="3uibUv" id="1zyYLgjXujX" role="1tU5fm">
        <ref role="3uigEE" node="1zyYLgjXriR" resolve="Server" />
      </node>
      <node concept="10Nm6u" id="5SYYrGB_o2T" role="33vP2m" />
    </node>
    <node concept="312cEg" id="4XQ2p$w28wC" role="jymVt">
      <property role="TrG5h" value="trafoToRModel" />
      <node concept="3Tm6S6" id="4XQ2p$w280X" role="1B3o_S" />
      <node concept="3uibUv" id="1zyYLgjXv1u" role="1tU5fm">
        <ref role="3uigEE" node="4XQ2p$w1IaY" resolve="SModelToRModelTransformator" />
      </node>
    </node>
    <node concept="312cEg" id="6Jg9HTa7nVE" role="jymVt">
      <property role="TrG5h" value="serverConfiguration" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6Jg9HTa7kzs" role="1B3o_S" />
      <node concept="3uibUv" id="1zyYLgjXwLA" role="1tU5fm">
        <ref role="3uigEE" node="6Jg9HTa6xHe" resolve="Server.ServerConfiguration" />
      </node>
    </node>
    <node concept="312cEg" id="1zyYLgjYjAj" role="jymVt">
      <property role="TrG5h" value="rServer" />
      <node concept="3Tm6S6" id="1zyYLgjYiXV" role="1B3o_S" />
      <node concept="3uibUv" id="5Eit_YPOBai" role="1tU5fm">
        <ref role="3uigEE" to="bl6v:~RServer" resolve="RServer" />
      </node>
    </node>
    <node concept="312cEg" id="6bUfznvlwzu" role="jymVt">
      <property role="TrG5h" value="sNodeChangeListeners" />
      <node concept="3Tm6S6" id="6bUfznvltpw" role="1B3o_S" />
      <node concept="3uibUv" id="6bUfznvlvZa" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="6bUfznvlwkl" role="11_B2D">
          <ref role="3uigEE" to="v18h:~Pair" resolve="Pair" />
          <node concept="3uibUv" id="6bUfznvlwvL" role="11_B2D">
            <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
          </node>
          <node concept="3uibUv" id="6bUfznvlwz1" role="11_B2D">
            <ref role="3uigEE" to="lw60:~SNodeChangeListener" resolve="SNodeChangeListener" />
          </node>
        </node>
      </node>
      <node concept="2ShNRf" id="6EmrohVhFJy" role="33vP2m">
        <node concept="1pGfFk" id="6EmrohVhRBy" role="2ShVmc">
          <property role="373rjd" value="true" />
          <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1zyYLgjXY85" role="jymVt" />
    <node concept="3clFbW" id="80AXrSepRD" role="jymVt">
      <node concept="37vLTG" id="6Jg9HTa7wns" role="3clF46">
        <property role="TrG5h" value="serverConfiguration" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="1zyYLgjXxU2" role="1tU5fm">
          <ref role="3uigEE" node="6Jg9HTa6xHe" resolve="Server.ServerConfiguration" />
        </node>
      </node>
      <node concept="3cqZAl" id="80AXrSepRF" role="3clF45" />
      <node concept="3clFbS" id="80AXrSepRH" role="3clF47">
        <node concept="3clFbF" id="6Jg9HTa7wLU" role="3cqZAp">
          <node concept="37vLTI" id="6Jg9HTa7xgR" role="3clFbG">
            <node concept="37vLTw" id="6Jg9HTa7xAg" role="37vLTx">
              <ref role="3cqZAo" node="6Jg9HTa7wns" resolve="serverConfiguration" />
            </node>
            <node concept="2OqwBi" id="6Jg9HTa7wQa" role="37vLTJ">
              <node concept="Xjq3P" id="6Jg9HTa7wLP" role="2Oq$k0" />
              <node concept="2OwXpG" id="6Jg9HTa7wWC" role="2OqNvi">
                <ref role="2Oxat5" node="6Jg9HTa7nVE" resolve="serverConfiguration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4XQ2p$w290A" role="3cqZAp">
          <node concept="37vLTI" id="4XQ2p$w29gZ" role="3clFbG">
            <node concept="2ShNRf" id="4XQ2p$w29mt" role="37vLTx">
              <node concept="1pGfFk" id="4XQ2p$w29kW" role="2ShVmc">
                <ref role="37wK5l" node="4XQ2p$w1QnN" resolve="SModelToRModelTransformator" />
                <node concept="2OqwBi" id="6Jg9HTa7yzC" role="37wK5m">
                  <node concept="37vLTw" id="6Jg9HTa7yqu" role="2Oq$k0">
                    <ref role="3cqZAo" node="6Jg9HTa7wns" resolve="serverConfiguration" />
                  </node>
                  <node concept="2OwXpG" id="1zyYLgjXybI" role="2OqNvi">
                    <ref role="2Oxat5" node="1zyYLgjXrmy" resolve="repo" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="4XQ2p$w2931" role="37vLTJ">
              <node concept="Xjq3P" id="4XQ2p$w290$" role="2Oq$k0" />
              <node concept="2OwXpG" id="4XQ2p$w297F" role="2OqNvi">
                <ref role="2Oxat5" node="4XQ2p$w28wC" resolve="trafoToRModel" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4sxAHuu5uiL" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1zyYLgjXEGc" role="jymVt" />
    <node concept="2tJIrI" id="1zyYLgjYesW" role="jymVt" />
    <node concept="2YIFZL" id="7MdXHVxjuLv" role="jymVt">
      <property role="TrG5h" value="launch" />
      <node concept="37vLTG" id="7MdXHVxjzDC" role="3clF46">
        <property role="TrG5h" value="serverConfiguration" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="1zyYLgjYgsJ" role="1tU5fm">
          <ref role="3uigEE" node="6Jg9HTa6xHe" resolve="Server.ServerConfiguration" />
        </node>
      </node>
      <node concept="3clFbS" id="7MdXHVxjuLy" role="3clF47">
        <node concept="3clFbF" id="1zyYLgjYhkG" role="3cqZAp">
          <node concept="1rXfSq" id="1zyYLgjYhkF" role="3clFbG">
            <ref role="37wK5l" node="1dR4j3lTAYp" resolve="destroy" />
          </node>
        </node>
        <node concept="3clFbF" id="80AXrSevjy" role="3cqZAp">
          <node concept="37vLTI" id="80AXrSevjz" role="3clFbG">
            <node concept="2ShNRf" id="80AXrSevj$" role="37vLTx">
              <node concept="1pGfFk" id="80AXrSevj_" role="2ShVmc">
                <ref role="37wK5l" node="80AXrSepRD" resolve="Server" />
                <node concept="37vLTw" id="1zyYLgjYhWm" role="37wK5m">
                  <ref role="3cqZAo" node="7MdXHVxjzDC" resolve="serverConfiguration" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="1zyYLgjYtJ2" role="37vLTJ">
              <ref role="3cqZAo" node="5SYYrGB_nXY" resolve="INSTANCE" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1zyYLgjYtM9" role="3cqZAp">
          <node concept="2OqwBi" id="1zyYLgjYtRN" role="3clFbG">
            <node concept="37vLTw" id="1zyYLgjYtM7" role="2Oq$k0">
              <ref role="3cqZAo" node="5SYYrGB_nXY" resolve="INSTANCE" />
            </node>
            <node concept="liA8E" id="1zyYLgjYu0f" role="2OqNvi">
              <ref role="37wK5l" node="1zyYLgjYq4t" resolve="start" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1clIRS$VJkQ" role="3cqZAp">
          <node concept="2OqwBi" id="1clIRS$VJxI" role="3clFbG">
            <node concept="37vLTw" id="1clIRS$VJkO" role="2Oq$k0">
              <ref role="3cqZAo" node="5SYYrGB_nXY" resolve="INSTANCE" />
            </node>
            <node concept="liA8E" id="1clIRS$VJEv" role="2OqNvi">
              <ref role="37wK5l" node="1clIRS$UTNJ" resolve="populate" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6d3vaznyn95" role="3cqZAp">
          <node concept="2OqwBi" id="6d3vaznynlF" role="3clFbG">
            <node concept="37vLTw" id="6d3vaznyn93" role="2Oq$k0">
              <ref role="3cqZAo" node="5SYYrGB_nXY" resolve="INSTANCE" />
            </node>
            <node concept="liA8E" id="6d3vaznynwB" role="2OqNvi">
              <ref role="37wK5l" node="52QZQuhn_qc" resolve="subscribeToChanges" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1zyYLgjYhBt" role="3cqZAp">
          <node concept="37vLTw" id="1zyYLgjYhBr" role="3clFbG">
            <ref role="3cqZAo" node="5SYYrGB_nXY" resolve="INSTANCE" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7MdXHVxjs5f" role="1B3o_S" />
      <node concept="3uibUv" id="1zyYLgjYgd5" role="3clF45">
        <ref role="3uigEE" node="1zyYLgjXriR" resolve="Server" />
      </node>
    </node>
    <node concept="2YIFZL" id="1dR4j3lTAYp" role="jymVt">
      <property role="TrG5h" value="destroy" />
      <node concept="3clFbS" id="1dR4j3lTAYs" role="3clF47">
        <node concept="3clFbJ" id="1dR4j3lTE1H" role="3cqZAp">
          <node concept="3clFbS" id="1dR4j3lTE1I" role="3clFbx">
            <node concept="3clFbF" id="6bUfznvnfhx" role="3cqZAp">
              <node concept="2OqwBi" id="6bUfznvnfv4" role="3clFbG">
                <node concept="37vLTw" id="6bUfznvnfhv" role="2Oq$k0">
                  <ref role="3cqZAo" node="5SYYrGB_nXY" resolve="INSTANCE" />
                </node>
                <node concept="liA8E" id="6bUfznvnfCS" role="2OqNvi">
                  <ref role="37wK5l" node="6bUfznvl372" resolve="unsubscribeToChanges" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1dR4j3lTE1J" role="3cqZAp">
              <node concept="2OqwBi" id="1dR4j3lTE1K" role="3clFbG">
                <node concept="liA8E" id="1dR4j3lTE1L" role="2OqNvi">
                  <ref role="37wK5l" node="5SYYrGB_oAA" resolve="kill" />
                </node>
                <node concept="37vLTw" id="1zyYLgjYt_1" role="2Oq$k0">
                  <ref role="3cqZAo" node="5SYYrGB_nXY" resolve="INSTANCE" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1dR4j3lTE1M" role="3cqZAp">
              <node concept="37vLTI" id="1dR4j3lTE1N" role="3clFbG">
                <node concept="10Nm6u" id="1dR4j3lTE1O" role="37vLTx" />
                <node concept="37vLTw" id="1zyYLgjYtC7" role="37vLTJ">
                  <ref role="3cqZAo" node="5SYYrGB_nXY" resolve="INSTANCE" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="1dR4j3lTE1P" role="3clFbw">
            <node concept="10Nm6u" id="1dR4j3lTE1Q" role="3uHU7w" />
            <node concept="37vLTw" id="1zyYLgjYtyc" role="3uHU7B">
              <ref role="3cqZAo" node="5SYYrGB_nXY" resolve="INSTANCE" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1dR4j3lT$_d" role="1B3o_S" />
      <node concept="3cqZAl" id="1dR4j3lTAT0" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="6QloSDeOvWP" role="jymVt">
      <property role="TrG5h" value="isRunning" />
      <node concept="3clFbS" id="6QloSDeOvWR" role="3clF47">
        <node concept="3cpWs6" id="6QloSDeOvWS" role="3cqZAp">
          <node concept="3y3z36" id="6QloSDeOxMU" role="3cqZAk">
            <node concept="10Nm6u" id="6QloSDeOxRb" role="3uHU7w" />
            <node concept="37vLTw" id="1zyYLgjYJVv" role="3uHU7B">
              <ref role="3cqZAo" node="5SYYrGB_nXY" resolve="INSTANCE" />
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="6QloSDeOvWV" role="3clF45" />
      <node concept="3Tm1VV" id="6QloSDeOvWU" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="67iqQ68chf4" role="jymVt" />
    <node concept="2tJIrI" id="67iqQ68chpR" role="jymVt" />
    <node concept="2YIFZL" id="67iqQ68cnKP" role="jymVt">
      <property role="TrG5h" value="focusOn" />
      <node concept="37vLTG" id="67iqQ68crzi" role="3clF46">
        <property role="TrG5h" value="sNode" />
        <node concept="3uibUv" id="67iqQ68crHL" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3clFbS" id="67iqQ68cnKS" role="3clF47">
        <node concept="3clFbF" id="5n0sGH65qXW" role="3cqZAp">
          <node concept="1rXfSq" id="5n0sGH65qXX" role="3clFbG">
            <ref role="37wK5l" node="3o_PK4OSYBF" resolve="log" />
            <node concept="3cpWs3" id="5n0sGH65s8W" role="37wK5m">
              <node concept="37vLTw" id="5n0sGH65soG" role="3uHU7w">
                <ref role="3cqZAo" node="67iqQ68crzi" resolve="sNode" />
              </node>
              <node concept="Xl_RD" id="5n0sGH65qXY" role="3uHU7B">
                <property role="Xl_RC" value="focusOn " />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="67iqQ68dOu4" role="3cqZAp">
          <node concept="2OqwBi" id="5n0sGH65qmN" role="3clFbG">
            <node concept="2OqwBi" id="5n0sGH65mE9" role="2Oq$k0">
              <node concept="37vLTw" id="67iqQ68dOu3" role="2Oq$k0">
                <ref role="3cqZAo" node="5SYYrGB_nXY" resolve="INSTANCE" />
              </node>
              <node concept="2OwXpG" id="5n0sGH65oP$" role="2OqNvi">
                <ref role="2Oxat5" node="1zyYLgjYjAj" resolve="rServer" />
              </node>
            </node>
            <node concept="liA8E" id="5n0sGH65q_d" role="2OqNvi">
              <ref role="37wK5l" to="bl6v:~RServer.focusOn(org.jetbrains.mps.openapi.model.SNode)" resolve="focusOn" />
              <node concept="37vLTw" id="5n0sGH65qLJ" role="37wK5m">
                <ref role="3cqZAo" node="67iqQ68crzi" resolve="sNode" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="67iqQ68ckld" role="1B3o_S" />
      <node concept="3cqZAl" id="67iqQ68cnGR" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="1zyYLgjY$HG" role="jymVt" />
    <node concept="3clFb_" id="1zyYLgjYq4t" role="jymVt">
      <property role="TrG5h" value="start" />
      <node concept="3clFbS" id="1zyYLgjYq4w" role="3clF47">
        <node concept="3clFbF" id="6LuQGsDWhc7" role="3cqZAp">
          <node concept="1rXfSq" id="6LuQGsDWhc5" role="3clFbG">
            <ref role="37wK5l" node="3o_PK4OSYBF" resolve="log" />
            <node concept="Xl_RD" id="6LuQGsDWhwd" role="37wK5m">
              <property role="Xl_RC" value="RD STARTING..." />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1zyYLgjYrXu" role="3cqZAp">
          <node concept="37vLTI" id="1zyYLgjYsf0" role="3clFbG">
            <node concept="2ShNRf" id="1zyYLgjYsul" role="37vLTx">
              <node concept="1pGfFk" id="1zyYLgjYsq_" role="2ShVmc">
                <ref role="37wK5l" to="bl6v:~RServer.&lt;init&gt;(int)" resolve="RServer" />
                <node concept="2OqwBi" id="1zyYLgjYxg8" role="37wK5m">
                  <node concept="37vLTw" id="1zyYLgjYx1d" role="2Oq$k0">
                    <ref role="3cqZAo" node="6Jg9HTa7nVE" resolve="serverConfiguration" />
                  </node>
                  <node concept="2OwXpG" id="1zyYLgjYxmz" role="2OqNvi">
                    <ref role="2Oxat5" node="1zyYLgjXrmr" resolve="port" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="1zyYLgjYrXt" role="37vLTJ">
              <ref role="3cqZAo" node="1zyYLgjYjAj" resolve="rServer" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6LuQGsDWxyH" role="3cqZAp">
          <node concept="1rXfSq" id="6LuQGsDWxyI" role="3clFbG">
            <ref role="37wK5l" node="3o_PK4OSYBF" resolve="log" />
            <node concept="Xl_RD" id="6LuQGsDWxyJ" role="37wK5m">
              <property role="Xl_RC" value="RD STARTED" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1zyYLgjYpn7" role="1B3o_S" />
      <node concept="3cqZAl" id="1zyYLgjYq0B" role="3clF45" />
    </node>
    <node concept="3clFb_" id="5SYYrGB_oAA" role="jymVt">
      <property role="TrG5h" value="kill" />
      <node concept="3clFbS" id="5SYYrGB_oAD" role="3clF47">
        <node concept="3clFbF" id="6LuQGsDWh$5" role="3cqZAp">
          <node concept="1rXfSq" id="6LuQGsDWh$6" role="3clFbG">
            <ref role="37wK5l" node="3o_PK4OSYBF" resolve="log" />
            <node concept="Xl_RD" id="6LuQGsDWh$7" role="37wK5m">
              <property role="Xl_RC" value="RD TERMINATING..." />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6LuQGsDWpYD" role="3cqZAp">
          <node concept="3clFbS" id="6LuQGsDWpYF" role="3clFbx">
            <node concept="3clFbF" id="1zyYLgjYlgH" role="3cqZAp">
              <node concept="2OqwBi" id="1zyYLgjYlse" role="3clFbG">
                <node concept="37vLTw" id="1zyYLgjYlgF" role="2Oq$k0">
                  <ref role="3cqZAo" node="1zyYLgjYjAj" resolve="rServer" />
                </node>
                <node concept="liA8E" id="1zyYLgjYlBF" role="2OqNvi">
                  <ref role="37wK5l" to="bl6v:~RPeer.terminate()" resolve="terminate" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6LuQGsDWpgW" role="3cqZAp">
              <node concept="37vLTI" id="6LuQGsDWp$0" role="3clFbG">
                <node concept="10Nm6u" id="6LuQGsDWpJM" role="37vLTx" />
                <node concept="37vLTw" id="6LuQGsDWpgU" role="37vLTJ">
                  <ref role="3cqZAo" node="1zyYLgjYjAj" resolve="rServer" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6LuQGsDWxMs" role="3cqZAp">
              <node concept="1rXfSq" id="6LuQGsDWxMt" role="3clFbG">
                <ref role="37wK5l" node="3o_PK4OSYBF" resolve="log" />
                <node concept="Xl_RD" id="6LuQGsDWxMu" role="37wK5m">
                  <property role="Xl_RC" value="RD TERMINATED" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="6LuQGsDWqsX" role="3clFbw">
            <node concept="10Nm6u" id="6LuQGsDWqGL" role="3uHU7w" />
            <node concept="37vLTw" id="6LuQGsDWq8R" role="3uHU7B">
              <ref role="3cqZAo" node="1zyYLgjYjAj" resolve="rServer" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5SYYrGB_oxr" role="1B3o_S" />
      <node concept="3cqZAl" id="5SYYrGB_oyw" role="3clF45" />
    </node>
    <node concept="3clFb_" id="1clIRS$UTNJ" role="jymVt">
      <property role="TrG5h" value="populate" />
      <node concept="3clFbS" id="1clIRS$UTNM" role="3clF47">
        <node concept="3clFbF" id="6LuQGsDWi1v" role="3cqZAp">
          <node concept="1rXfSq" id="6LuQGsDWi1w" role="3clFbG">
            <ref role="37wK5l" node="3o_PK4OSYBF" resolve="log" />
            <node concept="Xl_RD" id="6LuQGsDWi1x" role="37wK5m">
              <property role="Xl_RC" value="RD POPULATING..." />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5cuxciIdxFE" role="3cqZAp">
          <node concept="3cpWsn" id="5cuxciIdxFF" role="3cpWs9">
            <property role="TrG5h" value="rModules" />
            <node concept="_YKpA" id="5cuxciIdxFG" role="1tU5fm">
              <node concept="3uibUv" id="5Eit_YPOGkt" role="_ZDj9">
                <ref role="3uigEE" to="bl6v:~RModule" resolve="RModule" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="gLnjM2gCun" role="3cqZAp">
          <node concept="1PaTwC" id="gLnjM2gCuo" role="1aUNEU">
            <node concept="3oM_SD" id="gLnjM2gDVX" role="1PaTwD">
              <property role="3oM_SC" value="TODO:" />
            </node>
            <node concept="3oM_SD" id="gLnjM2gDVZ" role="1PaTwD">
              <property role="3oM_SC" value="Move" />
            </node>
            <node concept="3oM_SD" id="gLnjM2gDWb" role="1PaTwD">
              <property role="3oM_SC" value="module" />
            </node>
            <node concept="3oM_SD" id="gLnjM2gDW2" role="1PaTwD">
              <property role="3oM_SC" value="filtering" />
            </node>
            <node concept="3oM_SD" id="gLnjM2gDW6" role="1PaTwD">
              <property role="3oM_SC" value="functionality" />
            </node>
            <node concept="3oM_SD" id="gLnjM2gDWh" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="gLnjM2gDWo" role="1PaTwD">
              <property role="3oM_SC" value="RServiceModel" />
            </node>
            <node concept="3oM_SD" id="gLnjM2gDWw" role="1PaTwD">
              <property role="3oM_SC" value="level" />
            </node>
            <node concept="3oM_SD" id="gLnjM2gDY8" role="1PaTwD">
              <property role="3oM_SC" value="so" />
            </node>
            <node concept="3oM_SD" id="gLnjM2gDYk" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="gLnjM2gDXk" role="1PaTwD">
              <property role="3oM_SC" value="RClients" />
            </node>
            <node concept="3oM_SD" id="gLnjM2gDXV" role="1PaTwD">
              <property role="3oM_SC" value="can" />
            </node>
            <node concept="3oM_SD" id="gLnjM2gDYx" role="1PaTwD">
              <property role="3oM_SC" value="decide" />
            </node>
            <node concept="3oM_SD" id="gLnjM2gDYJ" role="1PaTwD">
              <property role="3oM_SC" value="which" />
            </node>
            <node concept="3oM_SD" id="gLnjM2gDYY" role="1PaTwD">
              <property role="3oM_SC" value="modules" />
            </node>
            <node concept="3oM_SD" id="gLnjM2gDZL" role="1PaTwD">
              <property role="3oM_SC" value="are" />
            </node>
            <node concept="3oM_SD" id="gLnjM2gE1c" role="1PaTwD">
              <property role="3oM_SC" value="they" />
            </node>
            <node concept="3oM_SD" id="gLnjM2gE1v" role="1PaTwD">
              <property role="3oM_SC" value="interested" />
            </node>
            <node concept="3oM_SD" id="gLnjM2gE1N" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="gLnjM2gE0B" role="1PaTwD">
              <property role="3oM_SC" value="" />
            </node>
          </node>
        </node>
        <node concept="1QHqEK" id="1clIRS$V0W7" role="3cqZAp">
          <node concept="1QHqEC" id="1clIRS$V0W8" role="1QHqEI">
            <node concept="3clFbS" id="1clIRS$V0W9" role="1bW5cS">
              <node concept="3cpWs8" id="2sNbwb$bNBs" role="3cqZAp">
                <node concept="3cpWsn" id="2sNbwb$bNBt" role="3cpWs9">
                  <property role="TrG5h" value="filter" />
                  <node concept="3uibUv" id="2sNbwb$bNBu" role="1tU5fm">
                    <ref role="3uigEE" node="2sNbwb$7DZ$" resolve="SModelToRModelTransformator.ModulesFilter" />
                  </node>
                  <node concept="2ShNRf" id="2sNbwb$bVeM" role="33vP2m">
                    <node concept="HV5vD" id="2sNbwb$bWHh" role="2ShVmc">
                      <ref role="HV5vE" node="2sNbwb$7DZ$" resolve="SModelToRModelTransformator.ModulesFilter" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2sNbwb$bY_w" role="3cqZAp">
                <node concept="37vLTI" id="2sNbwb$c2y0" role="3clFbG">
                  <node concept="3clFbT" id="2sNbwb$c3K0" role="37vLTx" />
                  <node concept="2OqwBi" id="2sNbwb$bZSH" role="37vLTJ">
                    <node concept="37vLTw" id="2sNbwb$bY_u" role="2Oq$k0">
                      <ref role="3cqZAo" node="2sNbwb$bNBt" resolve="filter" />
                    </node>
                    <node concept="2OwXpG" id="2sNbwb$c16U" role="2OqNvi">
                      <ref role="2Oxat5" node="2sNbwb$7VdI" resolve="isReadOnly" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2sNbwb$c5Gi" role="3cqZAp">
                <node concept="37vLTI" id="2sNbwb$c92N" role="3clFbG">
                  <node concept="3clFbT" id="2sNbwb$cas2" role="37vLTx" />
                  <node concept="2OqwBi" id="2sNbwb$c6Ew" role="37vLTJ">
                    <node concept="37vLTw" id="2sNbwb$c5Gg" role="2Oq$k0">
                      <ref role="3cqZAo" node="2sNbwb$bNBt" resolve="filter" />
                    </node>
                    <node concept="2OwXpG" id="2sNbwb$c7Sx" role="2OqNvi">
                      <ref role="2Oxat5" node="2sNbwb$7GtM" resolve="isPackaged" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2sNbwb$ccJM" role="3cqZAp">
                <node concept="37vLTI" id="2sNbwb$cjew" role="3clFbG">
                  <node concept="2OqwBi" id="2sNbwb$cdHP" role="37vLTJ">
                    <node concept="37vLTw" id="2sNbwb$ccJK" role="2Oq$k0">
                      <ref role="3cqZAo" node="2sNbwb$bNBt" resolve="filter" />
                    </node>
                    <node concept="2OwXpG" id="2sNbwb$ceVN" role="2OqNvi">
                      <ref role="2Oxat5" node="2sNbwb$7VSq" resolve="nameContains" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="2sNbwb$ck_q" role="37vLTx">
                    <property role="Xl_RC" value="todos.sandbox" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="5cuxciId$pg" role="3cqZAp">
                <node concept="37vLTI" id="5cuxciIdBfB" role="3clFbG">
                  <node concept="2OqwBi" id="5cuxciIdBYQ" role="37vLTx">
                    <node concept="37vLTw" id="5cuxciIdBD_" role="2Oq$k0">
                      <ref role="3cqZAo" node="4XQ2p$w28wC" resolve="trafoToRModel" />
                    </node>
                    <node concept="liA8E" id="5cuxciIdClm" role="2OqNvi">
                      <ref role="37wK5l" node="4XQ2p$w1ISK" resolve="modulesList" />
                      <node concept="37vLTw" id="2sNbwb$cn2f" role="37wK5m">
                        <ref role="3cqZAo" node="2sNbwb$bNBt" resolve="filter" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="5cuxciIdA5t" role="37vLTJ">
                    <ref role="3cqZAo" node="5cuxciIdxFF" resolve="rModules" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1clIRS$V1gr" role="ukAjM">
            <node concept="37vLTw" id="1clIRS$V14d" role="2Oq$k0">
              <ref role="3cqZAo" node="6Jg9HTa7nVE" resolve="serverConfiguration" />
            </node>
            <node concept="2OwXpG" id="1clIRS$V1u2" role="2OqNvi">
              <ref role="2Oxat5" node="1zyYLgjXrmy" resolve="repo" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5cuxciIdDDJ" role="3cqZAp">
          <node concept="2OqwBi" id="1JZTJHQODS9" role="3clFbG">
            <node concept="37vLTw" id="1JZTJHQODnO" role="2Oq$k0">
              <ref role="3cqZAo" node="1zyYLgjYjAj" resolve="rServer" />
            </node>
            <node concept="liA8E" id="1JZTJHQOEor" role="2OqNvi">
              <ref role="37wK5l" to="bl6v:~RPeer.queue(kotlin.jvm.functions.Function0)" resolve="queue" />
              <node concept="1bVj0M" id="1NhN3aa03Pl" role="37wK5m">
                <node concept="3clFbS" id="1NhN3aa03Pm" role="1bW5cS">
                  <node concept="9aQIb" id="1NhN3aa0biO" role="3cqZAp">
                    <node concept="3clFbS" id="1NhN3aa0biP" role="9aQI4">
                      <node concept="3clFbF" id="1JZTJHQORfa" role="3cqZAp">
                        <node concept="2OqwBi" id="1clIRS$VcbT" role="3clFbG">
                          <node concept="2OqwBi" id="1clIRS$V69g" role="2Oq$k0">
                            <node concept="2OqwBi" id="1clIRS$V5fM" role="2Oq$k0">
                              <node concept="37vLTw" id="1clIRS$V4Xb" role="2Oq$k0">
                                <ref role="3cqZAo" node="1zyYLgjYjAj" resolve="rServer" />
                              </node>
                              <node concept="2OwXpG" id="5Eit_YPQRsR" role="2OqNvi">
                                <ref role="2Oxat5" to="bl6v:~RPeer.model" resolve="model" />
                              </node>
                            </node>
                            <node concept="liA8E" id="1clIRS$V72C" role="2OqNvi">
                              <ref role="37wK5l" to="bl6v:~RServiceModel.getModules()" resolve="getModules" />
                            </node>
                          </node>
                          <node concept="liA8E" id="1clIRS$Vz_h" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~List.addAll(java.util.Collection)" resolve="addAll" />
                            <node concept="37vLTw" id="1JZTJHQOYmg" role="37wK5m">
                              <ref role="3cqZAo" node="5cuxciIdxFF" resolve="rModules" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="5cuxciIcvzC" role="3cqZAp">
                    <node concept="1rXfSq" id="5cuxciIcvzD" role="3clFbG">
                      <ref role="37wK5l" node="3o_PK4OSYBF" resolve="log" />
                      <node concept="Xl_RD" id="5cuxciIcvzE" role="37wK5m">
                        <property role="Xl_RC" value="RD POPULATED 2" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="1NhN3aa0qsA" role="3cqZAp">
                    <node concept="10M0yZ" id="1NhN3aa0rnN" role="3cqZAk">
                      <ref role="1PxDUh" to="v18h:~Unit" resolve="Unit" />
                      <ref role="3cqZAo" to="v18h:~Unit.INSTANCE" resolve="INSTANCE" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5cuxciIdDxY" role="3cqZAp" />
        <node concept="3clFbF" id="5cuxciIcuNL" role="3cqZAp">
          <node concept="1rXfSq" id="5cuxciIcuNM" role="3clFbG">
            <ref role="37wK5l" node="3o_PK4OSYBF" resolve="log" />
            <node concept="Xl_RD" id="5cuxciIcuNN" role="37wK5m">
              <property role="Xl_RC" value="RD POPULATED 1" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1clIRS$USZ1" role="1B3o_S" />
      <node concept="3cqZAl" id="1clIRS$UTNy" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="52QZQuhnymt" role="jymVt" />
    <node concept="3clFb_" id="52QZQuhn_qc" role="jymVt">
      <property role="TrG5h" value="subscribeToChanges" />
      <node concept="3clFbS" id="52QZQuhn_qf" role="3clF47">
        <node concept="3clFbH" id="74XMZ$igHKt" role="3cqZAp" />
        <node concept="1QHqEK" id="52QZQuhohb$" role="3cqZAp">
          <node concept="1QHqEC" id="52QZQuhohb_" role="1QHqEI">
            <node concept="3clFbS" id="52QZQuhohbA" role="1bW5cS">
              <node concept="2Gpval" id="52QZQuhohbB" role="3cqZAp">
                <node concept="2GrKxI" id="52QZQuhohbC" role="2Gsz3X">
                  <property role="TrG5h" value="module" />
                </node>
                <node concept="2OqwBi" id="52QZQuhohbD" role="2GsD0m">
                  <node concept="2OqwBi" id="52QZQuhohbE" role="2Oq$k0">
                    <node concept="37vLTw" id="52QZQuhohbF" role="2Oq$k0">
                      <ref role="3cqZAo" node="6Jg9HTa7nVE" resolve="serverConfiguration" />
                    </node>
                    <node concept="2OwXpG" id="52QZQuhohbG" role="2OqNvi">
                      <ref role="2Oxat5" node="1zyYLgjXrmy" resolve="repo" />
                    </node>
                  </node>
                  <node concept="liA8E" id="52QZQuhohbH" role="2OqNvi">
                    <ref role="37wK5l" to="lui2:~SRepository.getModules()" resolve="getModules" />
                  </node>
                </node>
                <node concept="3clFbS" id="52QZQuhohbI" role="2LFqv$">
                  <node concept="3clFbJ" id="6d3vaznxkNW" role="3cqZAp">
                    <node concept="3clFbS" id="6d3vaznxkNY" role="3clFbx">
                      <node concept="3N13vt" id="6d3vaznxpWg" role="3cqZAp" />
                    </node>
                    <node concept="2OqwBi" id="6d3vaznxnx1" role="3clFbw">
                      <node concept="2GrUjf" id="6d3vaznxmaV" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="52QZQuhohbC" resolve="module" />
                      </node>
                      <node concept="liA8E" id="6d3vaznxoYK" role="2OqNvi">
                        <ref role="37wK5l" to="lui2:~SModule.isReadOnly()" resolve="isReadOnly" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="6d3vaznxrW3" role="3cqZAp">
                    <node concept="3clFbS" id="6d3vaznxrW5" role="3clFbx">
                      <node concept="3N13vt" id="6d3vaznx_Qp" role="3cqZAp" />
                    </node>
                    <node concept="2OqwBi" id="6d3vaznxzs8" role="3clFbw">
                      <node concept="2GrUjf" id="6d3vaznxy6y" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="52QZQuhohbC" resolve="module" />
                      </node>
                      <node concept="liA8E" id="6d3vaznx$vj" role="2OqNvi">
                        <ref role="37wK5l" to="lui2:~SModule.isPackaged()" resolve="isPackaged" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="6d3vaznxBU8" role="3cqZAp">
                    <node concept="3clFbS" id="6d3vaznxBU9" role="3clFbx">
                      <node concept="3N13vt" id="6d3vaznxBUa" role="3cqZAp" />
                    </node>
                    <node concept="22lmx$" id="6d3vaznxKN$" role="3clFbw">
                      <node concept="3clFbC" id="6d3vaznxIxW" role="3uHU7B">
                        <node concept="2OqwBi" id="6d3vaznxBUb" role="3uHU7B">
                          <node concept="2GrUjf" id="6d3vaznxBUc" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="52QZQuhohbC" resolve="module" />
                          </node>
                          <node concept="liA8E" id="6d3vaznxGZ5" role="2OqNvi">
                            <ref role="37wK5l" to="lui2:~SModule.getModuleName()" resolve="getModuleName" />
                          </node>
                        </node>
                        <node concept="10Nm6u" id="6d3vaznxJzG" role="3uHU7w" />
                      </node>
                      <node concept="3fqX7Q" id="6d3vaznxY$f" role="3uHU7w">
                        <node concept="2OqwBi" id="6d3vaznxY$h" role="3fr31v">
                          <node concept="2OqwBi" id="6d3vaznxY$i" role="2Oq$k0">
                            <node concept="2GrUjf" id="6d3vaznxY$j" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="52QZQuhohbC" resolve="module" />
                            </node>
                            <node concept="liA8E" id="6d3vaznxY$k" role="2OqNvi">
                              <ref role="37wK5l" to="lui2:~SModule.getModuleName()" resolve="getModuleName" />
                            </node>
                          </node>
                          <node concept="liA8E" id="6d3vaznxY$l" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                            <node concept="Xl_RD" id="6d3vaznxY$m" role="37wK5m">
                              <property role="Xl_RC" value="todos.sandbox" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2Gpval" id="52QZQuhohbJ" role="3cqZAp">
                    <node concept="2GrKxI" id="52QZQuhohbK" role="2Gsz3X">
                      <property role="TrG5h" value="model" />
                    </node>
                    <node concept="2OqwBi" id="52QZQuhohbL" role="2GsD0m">
                      <node concept="2GrUjf" id="52QZQuhohbM" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="52QZQuhohbC" resolve="module" />
                      </node>
                      <node concept="liA8E" id="52QZQuhohbN" role="2OqNvi">
                        <ref role="37wK5l" to="lui2:~SModule.getModels()" resolve="getModels" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="52QZQuhohbO" role="2LFqv$">
                      <node concept="3clFbJ" id="52QZQuhohbP" role="3cqZAp">
                        <node concept="3clFbS" id="52QZQuhohbQ" role="3clFbx">
                          <node concept="3cpWs8" id="6bUfznvmjOi" role="3cqZAp">
                            <node concept="3cpWsn" id="6bUfznvmjOj" role="3cpWs9">
                              <property role="TrG5h" value="listener" />
                              <node concept="3uibUv" id="6bUfznvmjOk" role="1tU5fm">
                                <ref role="3uigEE" to="lw60:~SNodeChangeListener" resolve="SNodeChangeListener" />
                              </node>
                              <node concept="2ShNRf" id="52QZQuhohbV" role="33vP2m">
                                <node concept="1pGfFk" id="6d3vaznwFs$" role="2ShVmc">
                                  <ref role="37wK5l" to="lw60:~SNodeChangeListener.&lt;init&gt;(eu.sioux.mps.rserver.RServer,org.jetbrains.mps.openapi.module.SRepository)" resolve="SNodeChangeListener" />
                                  <node concept="37vLTw" id="6d3vaznwGOe" role="37wK5m">
                                    <ref role="3cqZAo" node="1zyYLgjYjAj" resolve="rServer" />
                                  </node>
                                  <node concept="2OqwBi" id="6d3vazn$07o" role="37wK5m">
                                    <node concept="37vLTw" id="6d3vaznzZcl" role="2Oq$k0">
                                      <ref role="3cqZAo" node="6Jg9HTa7nVE" resolve="serverConfiguration" />
                                    </node>
                                    <node concept="2OwXpG" id="6d3vazn$1vQ" role="2OqNvi">
                                      <ref role="2Oxat5" node="1zyYLgjXrmy" resolve="repo" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="6bUfznvlDKk" role="3cqZAp">
                            <node concept="2OqwBi" id="6bUfznvlG95" role="3clFbG">
                              <node concept="37vLTw" id="6bUfznvlDKi" role="2Oq$k0">
                                <ref role="3cqZAo" node="6bUfznvlwzu" resolve="sNodeChangeListeners" />
                              </node>
                              <node concept="liA8E" id="6bUfznvlJ5W" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                                <node concept="2ShNRf" id="6bUfznvlN3E" role="37wK5m">
                                  <node concept="1pGfFk" id="6bUfznvlMZS" role="2ShVmc">
                                    <ref role="37wK5l" to="v18h:~Pair.&lt;init&gt;(java.lang.Object,java.lang.Object)" resolve="Pair" />
                                    <node concept="3uibUv" id="6bUfznvlMZT" role="1pMfVU">
                                      <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                                    </node>
                                    <node concept="3uibUv" id="6bUfznvlMZU" role="1pMfVU">
                                      <ref role="3uigEE" to="lw60:~SNodeChangeListener" resolve="SNodeChangeListener" />
                                    </node>
                                    <node concept="2GrUjf" id="6bUfznvlPlT" role="37wK5m">
                                      <ref role="2Gs0qQ" node="52QZQuhohbK" resolve="model" />
                                    </node>
                                    <node concept="37vLTw" id="6bUfznvmx2P" role="37wK5m">
                                      <ref role="3cqZAo" node="6bUfznvmjOj" resolve="listener" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="52QZQuhohbR" role="3cqZAp">
                            <node concept="2OqwBi" id="52QZQuhohbS" role="3clFbG">
                              <node concept="2GrUjf" id="52QZQuhohbT" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="52QZQuhohbK" resolve="model" />
                              </node>
                              <node concept="liA8E" id="52QZQuhohbU" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SModel.addChangeListener(org.jetbrains.mps.openapi.model.SNodeChangeListener)" resolve="addChangeListener" />
                                <node concept="37vLTw" id="6bUfznvmyq1" role="37wK5m">
                                  <ref role="3cqZAo" node="6bUfznvmjOj" resolve="listener" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="4MEjkLfrYp7" role="3cqZAp">
                            <node concept="1rXfSq" id="4MEjkLfrYp8" role="3clFbG">
                              <ref role="37wK5l" node="3o_PK4OSYBF" resolve="log" />
                              <node concept="3cpWs3" id="4MEjkLfrYp9" role="37wK5m">
                                <node concept="Xl_RD" id="4MEjkLfrYpa" role="3uHU7B">
                                  <property role="Xl_RC" value="add listener: " />
                                </node>
                                <node concept="37vLTw" id="4MEjkLfs3QZ" role="3uHU7w">
                                  <ref role="3cqZAo" node="6bUfznvmjOj" resolve="listener" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2ZW3vV" id="52QZQuhohd7" role="3clFbw">
                          <node concept="3uibUv" id="52QZQuhohd8" role="2ZW6by">
                            <ref role="3uigEE" to="mhbf:~EditableSModel" resolve="EditableSModel" />
                          </node>
                          <node concept="2GrUjf" id="52QZQuhohd9" role="2ZW6bz">
                            <ref role="2Gs0qQ" node="52QZQuhohbK" resolve="model" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="5$3XJKrX_xA" role="3cqZAp">
                <node concept="2OqwBi" id="5$3XJKrXD0z" role="3clFbG">
                  <node concept="37vLTw" id="5$3XJKrXBGp" role="2Oq$k0">
                    <ref role="3cqZAo" node="1zyYLgjYjAj" resolve="rServer" />
                  </node>
                  <node concept="liA8E" id="5$3XJKrXRsa" role="2OqNvi">
                    <ref role="37wK5l" to="bl6v:~RPeer.addChangeListener(eu.sioux.mps.rserver.listeners.IChangeListener)" resolve="addChangeListener" />
                    <node concept="2ShNRf" id="5$3XJKrXT2j" role="37wK5m">
                      <node concept="1pGfFk" id="5$3XJKrY6PH" role="2ShVmc">
                        <ref role="37wK5l" to="lw60:~RNodeChangeListener.&lt;init&gt;(eu.sioux.mps.rserver.RServer,org.jetbrains.mps.openapi.module.SRepository)" resolve="RNodeChangeListener" />
                        <node concept="37vLTw" id="5$3XJKrY84r" role="37wK5m">
                          <ref role="3cqZAo" node="1zyYLgjYjAj" resolve="rServer" />
                        </node>
                        <node concept="2OqwBi" id="5$3XJKrYbkT" role="37wK5m">
                          <node concept="37vLTw" id="5$3XJKrYamL" role="2Oq$k0">
                            <ref role="3cqZAo" node="6Jg9HTa7nVE" resolve="serverConfiguration" />
                          </node>
                          <node concept="2OwXpG" id="5$3XJKrYcWQ" role="2OqNvi">
                            <ref role="2Oxat5" node="1zyYLgjXrmy" resolve="repo" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="52QZQuhohda" role="ukAjM">
            <node concept="37vLTw" id="52QZQuhohdb" role="2Oq$k0">
              <ref role="3cqZAo" node="6Jg9HTa7nVE" resolve="serverConfiguration" />
            </node>
            <node concept="2OwXpG" id="52QZQuhohdc" role="2OqNvi">
              <ref role="2Oxat5" node="1zyYLgjXrmy" resolve="repo" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="52QZQuhn$yy" role="1B3o_S" />
      <node concept="3cqZAl" id="52QZQuhnAKD" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="6bUfznvkRng" role="jymVt" />
    <node concept="3clFb_" id="6bUfznvl372" role="jymVt">
      <property role="TrG5h" value="unsubscribeToChanges" />
      <node concept="3clFbS" id="6bUfznvl375" role="3clF47">
        <node concept="2Gpval" id="6E$AAaR7YsN" role="3cqZAp">
          <node concept="2GrKxI" id="6E$AAaR7YsP" role="2Gsz3X">
            <property role="TrG5h" value="pair" />
          </node>
          <node concept="37vLTw" id="6E$AAaR80h1" role="2GsD0m">
            <ref role="3cqZAo" node="6bUfznvlwzu" resolve="sNodeChangeListeners" />
          </node>
          <node concept="3clFbS" id="6E$AAaR7YsT" role="2LFqv$">
            <node concept="3clFbF" id="6E$AAaR89mi" role="3cqZAp">
              <node concept="2OqwBi" id="6E$AAaR89mj" role="3clFbG">
                <node concept="2OqwBi" id="6E$AAaR89mk" role="2Oq$k0">
                  <node concept="2GrUjf" id="6E$AAaR8c05" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="6E$AAaR7YsP" resolve="pair" />
                  </node>
                  <node concept="liA8E" id="6E$AAaR89mm" role="2OqNvi">
                    <ref role="37wK5l" to="v18h:~Pair.getFirst()" resolve="getFirst" />
                  </node>
                </node>
                <node concept="liA8E" id="6E$AAaR89mn" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.removeChangeListener(org.jetbrains.mps.openapi.model.SNodeChangeListener)" resolve="removeChangeListener" />
                  <node concept="2OqwBi" id="6E$AAaR89mo" role="37wK5m">
                    <node concept="2GrUjf" id="6E$AAaR8dXX" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="6E$AAaR7YsP" resolve="pair" />
                    </node>
                    <node concept="liA8E" id="6E$AAaR89mq" role="2OqNvi">
                      <ref role="37wK5l" to="v18h:~Pair.getSecond()" resolve="getSecond" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4MEjkLfrynL" role="3cqZAp">
              <node concept="1rXfSq" id="4MEjkLfrynJ" role="3clFbG">
                <ref role="37wK5l" node="3o_PK4OSYBF" resolve="log" />
                <node concept="3cpWs3" id="4MEjkLfrRob" role="37wK5m">
                  <node concept="Xl_RD" id="4MEjkLfr$N0" role="3uHU7B">
                    <property role="Xl_RC" value="remove listener: " />
                  </node>
                  <node concept="2OqwBi" id="4MEjkLfrAew" role="3uHU7w">
                    <node concept="2GrUjf" id="4MEjkLfrAex" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="6E$AAaR7YsP" resolve="pair" />
                    </node>
                    <node concept="liA8E" id="4MEjkLfrAey" role="2OqNvi">
                      <ref role="37wK5l" to="v18h:~Pair.getSecond()" resolve="getSecond" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6E$AAaR8iWi" role="3cqZAp">
          <node concept="2OqwBi" id="6E$AAaR8lLN" role="3clFbG">
            <node concept="37vLTw" id="6E$AAaR8iWg" role="2Oq$k0">
              <ref role="3cqZAo" node="6bUfznvlwzu" resolve="sNodeChangeListeners" />
            </node>
            <node concept="liA8E" id="6E$AAaR8qV3" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.clear()" resolve="clear" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6bUfznvl0SC" role="1B3o_S" />
      <node concept="3cqZAl" id="6bUfznvl34X" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="1zyYLgjY5HR" role="jymVt" />
    <node concept="2YIFZL" id="3o_PK4OSYBF" role="jymVt">
      <property role="TrG5h" value="log" />
      <node concept="3clFbS" id="3o_PK4OSYBH" role="3clF47">
        <node concept="abc8K" id="3o_PK4OSYBI" role="3cqZAp">
          <node concept="Xl_RD" id="3o_PK4OSYBJ" role="abp_N">
            <property role="Xl_RC" value="[" />
          </node>
          <node concept="2YIFZM" id="3o_PK4OSYBK" role="abp_N">
            <ref role="1Pybhc" to="bl6v:~ExtensionsKt" resolve="ExtensionsKt" />
            <ref role="37wK5l" to="bl6v:~ExtensionsKt.currentThread()" resolve="currentThread" />
          </node>
          <node concept="Xl_RD" id="3o_PK4OSYBL" role="abp_N">
            <property role="Xl_RC" value="] RServer: " />
          </node>
          <node concept="37vLTw" id="3o_PK4OSYBM" role="abp_N">
            <ref role="3cqZAo" node="3o_PK4OSYBP" resolve="msg" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="3o_PK4OSYBO" role="3clF45" />
      <node concept="37vLTG" id="3o_PK4OSYBP" role="3clF46">
        <property role="TrG5h" value="msg" />
        <node concept="17QB3L" id="3o_PK4OSYBQ" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="3o_PK4OSYBN" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1zyYLgjXwM$" role="jymVt" />
    <node concept="3Tm1VV" id="1zyYLgjXriS" role="1B3o_S" />
  </node>
</model>

