<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:93691efb-733b-4838-a800-7c89bf13bf26(eu.sioux.mps.rserver.mpsplugin.ide.plugin)">
  <persistence version="9" />
  <languages>
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="5" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
  </languages>
  <imports>
    <import index="tprs" ref="r:00000000-0000-4000-0000-011c895904a4(jetbrains.mps.ide.actions)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="hyam" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt.event(JDK/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="qkt" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.actionSystem(MPS.IDEA/)" />
    <import index="71xd" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.tools(MPS.Platform/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="alof" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.project(MPS.Platform/)" />
    <import index="6oxs" ref="r:fc7ae910-b6ae-4e31-80d6-9cec753ce70d(eu.sioux.mps.rserver.mpsplugin)" />
    <import index="z1c4" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="bl6v" ref="dee9f226-f8c9-4419-a0d3-66180c5d63a8/java:eu.sioux.mps.rserver(eu.sioux.mps.rserver/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="1204908117386" name="jetbrains.mps.lang.plugin.structure.Separator" flags="ng" index="2a7GMi" />
      <concept id="1207145163717" name="jetbrains.mps.lang.plugin.structure.ElementListContents" flags="ng" index="ftmFs">
        <child id="1207145201301" name="reference" index="ftvYc" />
      </concept>
      <concept id="1203071646776" name="jetbrains.mps.lang.plugin.structure.ActionDeclaration" flags="ng" index="sE7Ow">
        <property id="1207149998849" name="isAlwaysVisible" index="fJN8o" />
        <property id="1205250923097" name="caption" index="2uzpH1" />
        <child id="1203083461638" name="executeFunction" index="tncku" />
        <child id="1217413222820" name="parameter" index="1NuT2Z" />
      </concept>
      <concept id="1203071677434" name="jetbrains.mps.lang.plugin.structure.ToolDeclaration" flags="ng" index="sEfby">
        <child id="1214307129846" name="getComponentBlock" index="2Um5zG" />
      </concept>
      <concept id="1203083511112" name="jetbrains.mps.lang.plugin.structure.ExecuteBlock" flags="in" index="tnohg" />
      <concept id="1203087890642" name="jetbrains.mps.lang.plugin.structure.ActionGroupDeclaration" flags="ng" index="tC5Ba">
        <child id="1204991552650" name="modifier" index="2f5YQi" />
        <child id="1207145245948" name="contents" index="ftER_" />
      </concept>
      <concept id="1203088046679" name="jetbrains.mps.lang.plugin.structure.ActionInstance" flags="ng" index="tCFHf">
        <reference id="1203088061055" name="action" index="tCJdB" />
      </concept>
      <concept id="1203092361741" name="jetbrains.mps.lang.plugin.structure.ModificationStatement" flags="lg" index="tT9cl">
        <reference id="1204992316090" name="point" index="2f8Tey" />
        <reference id="1203092736097" name="modifiedGroup" index="tU$_T" />
      </concept>
      <concept id="1213888653896" name="jetbrains.mps.lang.plugin.structure.InitBlock" flags="in" index="2xpIHi" />
      <concept id="1213888677711" name="jetbrains.mps.lang.plugin.structure.DisposeBlock" flags="in" index="2xpOpl" />
      <concept id="1213888797251" name="jetbrains.mps.lang.plugin.structure.ConceptFunctionParameter_Project" flags="nn" index="2xqhHp" />
      <concept id="1214307303872" name="jetbrains.mps.lang.plugin.structure.GetComponentBlock" flags="in" index="2UmK3q" />
      <concept id="6547237850567458268" name="jetbrains.mps.lang.plugin.structure.BaseToolDeclaration" flags="ng" index="2XNcJY">
        <property id="2498620720770664572" name="position" index="2bmUCM" />
        <child id="8096638938275469615" name="toolDisposeBlock" index="uR5co" />
        <child id="8096638938275469614" name="toolInitBlock" index="uR5cp" />
        <child id="6547237850567462848" name="methodDeclaration" index="2XNbBy" />
        <child id="6547237850567462849" name="fieldDeclaration" index="2XNbBz" />
      </concept>
      <concept id="5538333046911348654" name="jetbrains.mps.lang.plugin.structure.RequiredCondition" flags="ng" index="1oajcY" />
      <concept id="1208528650020" name="jetbrains.mps.lang.plugin.structure.ToolType" flags="in" index="1xUVSX">
        <reference id="1208529537963" name="tool" index="1xYkEM" />
      </concept>
      <concept id="1217252042208" name="jetbrains.mps.lang.plugin.structure.ActionDataParameterDeclaration" flags="ng" index="1DS2jV">
        <reference id="1217252646389" name="key" index="1DUlNI" />
      </concept>
      <concept id="1217252428768" name="jetbrains.mps.lang.plugin.structure.ActionDataParameterReferenceOperation" flags="nn" index="1DTwFV" />
      <concept id="1217413147516" name="jetbrains.mps.lang.plugin.structure.ActionParameter" flags="ng" index="1NuADB">
        <child id="5538333046911298738" name="condition" index="1oa70y" />
      </concept>
    </language>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="481983775135178834" name="jetbrains.mps.lang.plugin.standalone.structure.ProjectPluginDeclaration" flags="ng" index="2uRRBy">
        <child id="481983775135178836" name="initBlock" index="2uRRB$" />
        <child id="481983775135178837" name="disposeBlock" index="2uRRB_" />
      </concept>
      <concept id="481983775135178819" name="jetbrains.mps.lang.plugin.standalone.structure.ProjectPluginDisposeBlock" flags="in" index="2uRRBN" />
      <concept id="481983775135178825" name="jetbrains.mps.lang.plugin.standalone.structure.ProjectPluginInitBlock" flags="in" index="2uRRBT" />
      <concept id="7520713872864775836" name="jetbrains.mps.lang.plugin.standalone.structure.StandalonePluginDescriptor" flags="ng" index="2DaZZR" />
      <concept id="681855071694758165" name="jetbrains.mps.lang.plugin.standalone.structure.GetToolInProjectOperation" flags="nn" index="LR4U6">
        <reference id="681855071694758166" name="tool" index="LR4U5" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
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
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
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
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1213999088275" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierFieldDeclaration" flags="ig" index="2BZ0e9" />
      <concept id="1213999117680" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierFieldAccessOperation" flags="nn" index="2BZ7hE" />
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp">
        <reference id="1218736638915" name="classifier" index="32nkFo" />
      </concept>
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ng" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
      <concept id="1205769003971" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodDeclaration" flags="ng" index="2XrIbr" />
      <concept id="1205769149993" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodCallOperation" flags="nn" index="2XshWL">
        <child id="1205770614681" name="actualArgument" index="2XxRq1" />
      </concept>
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="1168401810208" name="jetbrains.mps.baseLanguage.logging.structure.PrintStatement" flags="nn" index="abc8K">
        <child id="1168401864803" name="textExpression" index="abp_N" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="tC5Ba" id="62lxAqGov_k">
    <property role="TrG5h" value="RServerMpsPlugin" />
    <node concept="tT9cl" id="62lxAqGp$5V" role="2f5YQi">
      <ref role="tU$_T" to="tprs:hyf4LYI" resolve="Tools" />
      <ref role="2f8Tey" to="tprs:hHYwqIT" resolve="customTools" />
    </node>
    <node concept="ftmFs" id="62lxAqGovHl" role="ftER_">
      <node concept="2a7GMi" id="62lxAqGovIg" role="ftvYc" />
      <node concept="tCFHf" id="7PAUTWowSrW" role="ftvYc">
        <ref role="tCJdB" node="62lxAqGovL0" resolve="ShowRServerMpsPluginLauncherTool" />
      </node>
      <node concept="2a7GMi" id="62lxAqGovJc" role="ftvYc" />
    </node>
  </node>
  <node concept="2uRRBy" id="62lxAqGoL9w">
    <property role="TrG5h" value="RServerMpsPluginIDEProject" />
    <node concept="2uRRBT" id="62lxAqGoLhV" role="2uRRB$">
      <node concept="3clFbS" id="62lxAqGoLhW" role="2VODD2">
        <node concept="abc8K" id="3o_PK4OT$t2" role="3cqZAp">
          <node concept="Xl_RD" id="3o_PK4OT$uh" role="abp_N">
            <property role="Xl_RC" value="RServerMpsPlugin [INIT]" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBN" id="7PAUTWowSjd" role="2uRRB_">
      <node concept="3clFbS" id="7PAUTWowSje" role="2VODD2">
        <node concept="abc8K" id="3o_PK4OT$4p" role="3cqZAp">
          <node concept="Xl_RD" id="3o_PK4OT$6s" role="abp_N">
            <property role="Xl_RC" value="RServerMpsPlugin [DISPOSE]" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sEfby" id="62lxAqGoPDI">
    <property role="TrG5h" value="RServerMpsPluginLauncherTool" />
    <property role="2bmUCM" value="2aGS$UDXOxV/RIGHT" />
    <node concept="2XrIbr" id="3o_PK4OT9hd" role="2XNbBy">
      <property role="TrG5h" value="log" />
      <node concept="37vLTG" id="3o_PK4OSYBP" role="3clF46">
        <property role="TrG5h" value="msg" />
        <node concept="17QB3L" id="3o_PK4OSYBQ" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="3o_PK4OT9W$" role="3clF45" />
      <node concept="3clFbS" id="3o_PK4OT9hf" role="3clF47">
        <node concept="abc8K" id="3o_PK4OSYBI" role="3cqZAp">
          <node concept="Xl_RD" id="3o_PK4OSYBJ" role="abp_N">
            <property role="Xl_RC" value="[" />
          </node>
          <node concept="2YIFZM" id="3o_PK4OSYBK" role="abp_N">
            <ref role="37wK5l" to="bl6v:~ExtensionsKt.currentThread()" resolve="currentThread" />
            <ref role="1Pybhc" to="bl6v:~ExtensionsKt" resolve="ExtensionsKt" />
          </node>
          <node concept="Xl_RD" id="3o_PK4OSYBL" role="abp_N">
            <property role="Xl_RC" value="] RServerMpsPlugin: " />
          </node>
          <node concept="37vLTw" id="3o_PK4OSYBM" role="abp_N">
            <ref role="3cqZAo" node="3o_PK4OSYBP" resolve="msg" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2XrIbr" id="5xYAxr6GjiN" role="2XNbBy">
      <property role="TrG5h" value="getCurrentProject" />
      <node concept="3uibUv" id="5xYAxr6HZEd" role="3clF45">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
      <node concept="3clFbS" id="5xYAxr6GjiP" role="3clF47">
        <node concept="3cpWs6" id="5xYAxr6Gkuu" role="3cqZAp">
          <node concept="2OqwBi" id="5xYAxr6GkuX" role="3cqZAk">
            <node concept="2WthIp" id="5xYAxr6Gkv0" role="2Oq$k0" />
            <node concept="2BZ7hE" id="5xYAxr6Gkv2" role="2OqNvi">
              <ref role="2WH_rO" node="6Ut89YPhT8C" resolve="currentProject" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5xYAxr6Gkju" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="4EwtSBhYpe2" role="2XNbBy">
      <property role="TrG5h" value="mpsProject" />
      <node concept="3uibUv" id="4EwtSBhYqw7" role="3clF45">
        <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
      </node>
      <node concept="3clFbS" id="4EwtSBhYpe4" role="3clF47">
        <node concept="3clFbF" id="4EwtSBhYqx$" role="3cqZAp">
          <node concept="2OqwBi" id="2HzhasNzNE7" role="3clFbG">
            <node concept="2OqwBi" id="4EwtSBhYqFm" role="2Oq$k0">
              <node concept="2WthIp" id="4EwtSBhYqFp" role="2Oq$k0" />
              <node concept="2BZ7hE" id="4EwtSBhYqFr" role="2OqNvi">
                <ref role="2WH_rO" node="6Ut89YPhT8C" resolve="currentProject" />
              </node>
            </node>
            <node concept="liA8E" id="2HzhasNzNE9" role="2OqNvi">
              <ref role="37wK5l" to="z1c3:~Project.getComponent(java.lang.Class)" resolve="getComponent" />
              <node concept="3VsKOn" id="2HzhasNzNEa" role="37wK5m">
                <ref role="3VsUkX" to="z1c4:~MPSProject" resolve="MPSProject" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4EwtSBhYqpt" role="1B3o_S" />
    </node>
    <node concept="2BZ0e9" id="6Ut89YPhT8C" role="2XNbBz">
      <property role="TrG5h" value="currentProject" />
      <node concept="3Tm6S6" id="6Ut89YPhT8D" role="1B3o_S" />
      <node concept="3uibUv" id="6Ut89YPhT8E" role="1tU5fm">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
    </node>
    <node concept="2BZ0e9" id="3o_PK4OPAsA" role="2XNbBz">
      <property role="TrG5h" value="launched" />
      <node concept="3Tm6S6" id="3o_PK4OPAsB" role="1B3o_S" />
      <node concept="10P_77" id="3o_PK4OPBG7" role="1tU5fm" />
      <node concept="3clFbT" id="3o_PK4OPBIY" role="33vP2m" />
    </node>
    <node concept="2UmK3q" id="62lxAqGoPDJ" role="2Um5zG">
      <node concept="3clFbS" id="62lxAqGoPDK" role="2VODD2">
        <node concept="3cpWs8" id="62lxAqGoUs_" role="3cqZAp">
          <node concept="3cpWsn" id="62lxAqGoUs$" role="3cpWs9">
            <property role="TrG5h" value="panel" />
            <node concept="3uibUv" id="62lxAqGoUsA" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
            </node>
            <node concept="2ShNRf" id="62lxAqGoUIL" role="33vP2m">
              <node concept="1pGfFk" id="62lxAqGoUIR" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;()" resolve="JPanel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="62lxAqGoUsD" role="3cqZAp">
          <node concept="3cpWsn" id="62lxAqGoUsC" role="3cpWs9">
            <property role="TrG5h" value="launch" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="62lxAqGoUsE" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~JButton" resolve="JButton" />
            </node>
            <node concept="2ShNRf" id="62lxAqGoU_U" role="33vP2m">
              <node concept="1pGfFk" id="62lxAqGoUIF" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JButton.&lt;init&gt;(java.lang.String)" resolve="JButton" />
                <node concept="Xl_RD" id="62lxAqGoUIG" role="37wK5m">
                  <property role="Xl_RC" value="Launch" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="62lxAqGoV1n" role="3cqZAp">
          <node concept="2OqwBi" id="62lxAqGoV2T" role="3clFbG">
            <node concept="37vLTw" id="62lxAqGoV2S" role="2Oq$k0">
              <ref role="3cqZAo" node="62lxAqGoUs$" resolve="panel" />
            </node>
            <node concept="liA8E" id="62lxAqGoV2U" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
              <node concept="37vLTw" id="62lxAqGoV2V" role="37wK5m">
                <ref role="3cqZAo" node="62lxAqGoUsC" resolve="launch" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1cn0c13dLf4" role="3cqZAp" />
        <node concept="3clFbF" id="62lxAqGp2wu" role="3cqZAp">
          <node concept="2OqwBi" id="62lxAqGp2Ht" role="3clFbG">
            <node concept="37vLTw" id="62lxAqGp2Hs" role="2Oq$k0">
              <ref role="3cqZAo" node="62lxAqGoUsC" resolve="launch" />
            </node>
            <node concept="liA8E" id="62lxAqGp2Hu" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~AbstractButton.addActionListener(java.awt.event.ActionListener)" resolve="addActionListener" />
              <node concept="2ShNRf" id="62lxAqGp2Hv" role="37wK5m">
                <node concept="YeOm9" id="62lxAqGp2Hw" role="2ShVmc">
                  <node concept="1Y3b0j" id="62lxAqGp2Hx" role="YeSDq">
                    <ref role="1Y3XeK" to="hyam:~ActionListener" resolve="ActionListener" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3clFb_" id="62lxAqGp2Hy" role="jymVt">
                      <property role="TrG5h" value="actionPerformed" />
                      <node concept="2AHcQZ" id="62lxAqGp2Hz" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                      <node concept="37vLTG" id="62lxAqGp2H$" role="3clF46">
                        <property role="TrG5h" value="e" />
                        <node concept="3uibUv" id="62lxAqGp2H_" role="1tU5fm">
                          <ref role="3uigEE" to="hyam:~ActionEvent" resolve="ActionEvent" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="62lxAqGp2HA" role="3clF47">
                        <node concept="3clFbJ" id="3o_PK4OPCLt" role="3cqZAp">
                          <node concept="3clFbS" id="3o_PK4OPCLv" role="3clFbx">
                            <node concept="3clFbF" id="3o_PK4OTsoG" role="3cqZAp">
                              <node concept="2OqwBi" id="3o_PK4OTsoH" role="3clFbG">
                                <node concept="2WthIp" id="3o_PK4OTsoI" role="2Oq$k0">
                                  <ref role="32nkFo" node="62lxAqGoPDI" resolve="RServerMpsPluginLauncherTool" />
                                </node>
                                <node concept="2XshWL" id="3o_PK4OTsoJ" role="2OqNvi">
                                  <ref role="2WH_rO" node="3o_PK4OT9hd" resolve="log" />
                                  <node concept="Xl_RD" id="3o_PK4OTsoK" role="2XxRq1">
                                    <property role="Xl_RC" value="START" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbH" id="1zyYLgjZ5DD" role="3cqZAp" />
                            <node concept="3cpWs8" id="1zyYLgjZcPY" role="3cqZAp">
                              <node concept="3cpWsn" id="6Ks8zCw5YQf" role="3cpWs9">
                                <property role="TrG5h" value="serverConfiguration" />
                                <node concept="3uibUv" id="1zyYLgjZd6t" role="1tU5fm">
                                  <ref role="3uigEE" to="6oxs:6Jg9HTa6xHe" resolve="Server.ServerConfiguration" />
                                </node>
                                <node concept="2ShNRf" id="6Ks8zCw5Psh" role="33vP2m">
                                  <node concept="1pGfFk" id="6Ks8zCw5UnR" role="2ShVmc">
                                    <ref role="37wK5l" to="6oxs:1zyYLgjXrmU" resolve="ServerConfiguration" />
                                    <node concept="2OqwBi" id="6Ks8zCw5Uom" role="37wK5m">
                                      <node concept="2OqwBi" id="6Ks8zCw5Uon" role="2Oq$k0">
                                        <node concept="2WthIp" id="6Ks8zCw5Uoo" role="2Oq$k0">
                                          <ref role="32nkFo" node="62lxAqGoPDI" resolve="RServerMpsPluginLauncherTool" />
                                        </node>
                                        <node concept="2BZ7hE" id="1zyYLgjZh32" role="2OqNvi">
                                          <ref role="2WH_rO" node="6Ut89YPhT8C" resolve="currentProject" />
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="6Ks8zCw5Uoq" role="2OqNvi">
                                        <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="20zpU42wSUB" role="3cqZAp">
                              <node concept="2OqwBi" id="20zpU42wTeC" role="3clFbG">
                                <node concept="37vLTw" id="20zpU42wSU_" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6Ks8zCw5YQf" resolve="serverConfiguration" />
                                </node>
                                <node concept="liA8E" id="20zpU42wTsp" role="2OqNvi">
                                  <ref role="37wK5l" to="6oxs:1zyYLgjXroq" resolve="print" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbH" id="1zyYLgjZkwo" role="3cqZAp" />
                            <node concept="3cpWs8" id="1cn0c13dzd8" role="3cqZAp">
                              <node concept="3cpWsn" id="1cn0c13dzd9" role="3cpWs9">
                                <property role="TrG5h" value="sc" />
                                <node concept="3uibUv" id="1cn0c13dzda" role="1tU5fm">
                                  <ref role="3uigEE" to="6oxs:1zyYLgjXriR" resolve="Server" />
                                </node>
                                <node concept="2YIFZM" id="5SYYrGB_vn2" role="33vP2m">
                                  <ref role="37wK5l" to="6oxs:7MdXHVxjuLv" resolve="launch" />
                                  <ref role="1Pybhc" to="6oxs:1zyYLgjXriR" resolve="Server" />
                                  <node concept="37vLTw" id="6Ks8zCw5Zn2" role="37wK5m">
                                    <ref role="3cqZAo" node="6Ks8zCw5YQf" resolve="serverConfiguration" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbH" id="4vzY_q_xqf6" role="3cqZAp" />
                            <node concept="3clFbF" id="3o_PK4OTiSb" role="3cqZAp">
                              <node concept="2OqwBi" id="3o_PK4OTqWs" role="3clFbG">
                                <node concept="2WthIp" id="3o_PK4OTqWv" role="2Oq$k0">
                                  <ref role="32nkFo" node="62lxAqGoPDI" resolve="RServerMpsPluginLauncherTool" />
                                </node>
                                <node concept="2XshWL" id="3o_PK4OTqWx" role="2OqNvi">
                                  <ref role="2WH_rO" node="3o_PK4OT9hd" resolve="log" />
                                  <node concept="Xl_RD" id="3o_PK4OTrBh" role="2XxRq1">
                                    <property role="Xl_RC" value="LAUNCHED" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbH" id="3o_PK4OPTqV" role="3cqZAp" />
                            <node concept="3clFbF" id="4vzY_q_xyJK" role="3cqZAp">
                              <node concept="2OqwBi" id="4vzY_q_xzNE" role="3clFbG">
                                <node concept="37vLTw" id="4vzY_q_xyJF" role="2Oq$k0">
                                  <ref role="3cqZAo" node="62lxAqGoUsC" resolve="launch" />
                                </node>
                                <node concept="liA8E" id="4vzY_q_x_5c" role="2OqNvi">
                                  <ref role="37wK5l" to="dxuu:~AbstractButton.setText(java.lang.String)" resolve="setText" />
                                  <node concept="Xl_RD" id="4vzY_q_x_S5" role="37wK5m">
                                    <property role="Xl_RC" value="Destroy" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="3o_PK4OPMgx" role="3cqZAp">
                              <node concept="37vLTI" id="3o_PK4OPNoa" role="3clFbG">
                                <node concept="3clFbT" id="3o_PK4OPOBb" role="37vLTx">
                                  <property role="3clFbU" value="true" />
                                </node>
                                <node concept="2OqwBi" id="3o_PK4OPMg$" role="37vLTJ">
                                  <node concept="2WthIp" id="3o_PK4OPMg_" role="2Oq$k0">
                                    <ref role="32nkFo" node="62lxAqGoPDI" resolve="RServerMpsPluginLauncherTool" />
                                  </node>
                                  <node concept="2BZ7hE" id="3o_PK4OPMgA" role="2OqNvi">
                                    <ref role="2WH_rO" node="3o_PK4OPAsA" resolve="launched" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="3o_PK4OPEG7" role="3clFbw">
                            <node concept="2OqwBi" id="3o_PK4OPEG9" role="3fr31v">
                              <node concept="2WthIp" id="3o_PK4OPEGa" role="2Oq$k0">
                                <ref role="32nkFo" node="62lxAqGoPDI" resolve="RServerMpsPluginLauncherTool" />
                              </node>
                              <node concept="2BZ7hE" id="3o_PK4OPEGb" role="2OqNvi">
                                <ref role="2WH_rO" node="3o_PK4OPAsA" resolve="launched" />
                              </node>
                            </node>
                          </node>
                          <node concept="9aQIb" id="3o_PK4OPE0Z" role="9aQIa">
                            <node concept="3clFbS" id="3o_PK4OPE10" role="9aQI4">
                              <node concept="3clFbF" id="3o_PK4OTu7J" role="3cqZAp">
                                <node concept="2OqwBi" id="3o_PK4OTu7K" role="3clFbG">
                                  <node concept="2WthIp" id="3o_PK4OTu7L" role="2Oq$k0">
                                    <ref role="32nkFo" node="62lxAqGoPDI" resolve="RServerMpsPluginLauncherTool" />
                                  </node>
                                  <node concept="2XshWL" id="3o_PK4OTu7M" role="2OqNvi">
                                    <ref role="2WH_rO" node="3o_PK4OT9hd" resolve="log" />
                                    <node concept="Xl_RD" id="3o_PK4OTu7N" role="2XxRq1">
                                      <property role="Xl_RC" value="STOP" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbH" id="3o_PK4OTlyG" role="3cqZAp" />
                              <node concept="3clFbF" id="1cn0c13dv5W" role="3cqZAp">
                                <node concept="2YIFZM" id="1cn0c13dxDh" role="3clFbG">
                                  <ref role="37wK5l" to="6oxs:1dR4j3lTAYp" resolve="destroy" />
                                  <ref role="1Pybhc" to="6oxs:1zyYLgjXriR" resolve="Server" />
                                </node>
                              </node>
                              <node concept="3clFbH" id="3o_PK4OQ8Nq" role="3cqZAp" />
                              <node concept="3clFbF" id="3o_PK4OTnye" role="3cqZAp">
                                <node concept="2OqwBi" id="3o_PK4OTuOt" role="3clFbG">
                                  <node concept="2WthIp" id="3o_PK4OTuOu" role="2Oq$k0">
                                    <ref role="32nkFo" node="62lxAqGoPDI" resolve="RServerMpsPluginLauncherTool" />
                                  </node>
                                  <node concept="2XshWL" id="3o_PK4OTuOv" role="2OqNvi">
                                    <ref role="2WH_rO" node="3o_PK4OT9hd" resolve="log" />
                                    <node concept="Xl_RD" id="3o_PK4OTuOw" role="2XxRq1">
                                      <property role="Xl_RC" value="STOPPED" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbH" id="3o_PK4OPPOT" role="3cqZAp" />
                              <node concept="3clFbF" id="3o_PK4OQ9FN" role="3cqZAp">
                                <node concept="2OqwBi" id="3o_PK4OQ9FO" role="3clFbG">
                                  <node concept="37vLTw" id="3o_PK4OQ9FP" role="2Oq$k0">
                                    <ref role="3cqZAo" node="62lxAqGoUsC" resolve="launch" />
                                  </node>
                                  <node concept="liA8E" id="3o_PK4OQ9FQ" role="2OqNvi">
                                    <ref role="37wK5l" to="dxuu:~AbstractButton.setText(java.lang.String)" resolve="setText" />
                                    <node concept="Xl_RD" id="3o_PK4OQ9FR" role="37wK5m">
                                      <property role="Xl_RC" value="Launch" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="3o_PK4OPQpg" role="3cqZAp">
                                <node concept="37vLTI" id="3o_PK4OPQph" role="3clFbG">
                                  <node concept="3clFbT" id="3o_PK4OPQpi" role="37vLTx" />
                                  <node concept="2OqwBi" id="3o_PK4OPQpj" role="37vLTJ">
                                    <node concept="2WthIp" id="3o_PK4OPQpk" role="2Oq$k0">
                                      <ref role="32nkFo" node="62lxAqGoPDI" resolve="RServerMpsPluginLauncherTool" />
                                    </node>
                                    <node concept="2BZ7hE" id="3o_PK4OPQpl" role="2OqNvi">
                                      <ref role="2WH_rO" node="3o_PK4OPAsA" resolve="launched" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3Tm1VV" id="62lxAqGp2HX" role="1B3o_S" />
                      <node concept="3cqZAl" id="62lxAqGp2HY" role="3clF45" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1cn0c13deIM" role="3cqZAp" />
        <node concept="3cpWs6" id="62lxAqGoV1q" role="3cqZAp">
          <node concept="37vLTw" id="62lxAqGoV1r" role="3cqZAk">
            <ref role="3cqZAo" node="62lxAqGoUs$" resolve="panel" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2xpIHi" id="6Ut89YPhTfH" role="uR5cp">
      <node concept="3clFbS" id="6Ut89YPhTfI" role="2VODD2">
        <node concept="3clFbF" id="6Ut89YPhTfV" role="3cqZAp">
          <node concept="37vLTI" id="6Ut89YPhTfW" role="3clFbG">
            <node concept="2OqwBi" id="6Ut89YPhTfX" role="37vLTJ">
              <node concept="2WthIp" id="6Ut89YPhTfY" role="2Oq$k0" />
              <node concept="2BZ7hE" id="6Ut89YPhTfZ" role="2OqNvi">
                <ref role="2WH_rO" node="6Ut89YPhT8C" resolve="currentProject" />
              </node>
            </node>
            <node concept="2YIFZM" id="6Ut89YPhTg0" role="37vLTx">
              <ref role="37wK5l" to="alof:~ProjectHelper.fromIdeaProject(com.intellij.openapi.project.Project)" resolve="fromIdeaProject" />
              <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
              <node concept="2xqhHp" id="6Ut89YPhTg1" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2xpOpl" id="1Gf6o97LN7Y" role="uR5co">
      <node concept="3clFbS" id="1Gf6o97LN7Z" role="2VODD2">
        <node concept="3clFbF" id="1Gf6o97LOz7" role="3cqZAp">
          <node concept="2YIFZM" id="1Gf6o97LOzX" role="3clFbG">
            <ref role="37wK5l" to="6oxs:1dR4j3lTAYp" resolve="destroy" />
            <ref role="1Pybhc" to="6oxs:1zyYLgjXriR" resolve="Server" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="62lxAqGovL0">
    <property role="TrG5h" value="ShowRServerMpsPluginLauncherTool" />
    <property role="2uzpH1" value="-----&gt; Show RServerMpsPlugin Launcher &lt;-----" />
    <property role="fJN8o" value="true" />
    <node concept="1DS2jV" id="62lxAqGpcIF" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="62lxAqGpcIG" role="1oa70y" />
    </node>
    <node concept="tnohg" id="62lxAqGovL1" role="tncku">
      <node concept="3clFbS" id="62lxAqGovL2" role="2VODD2">
        <node concept="3cpWs8" id="62lxAqGp9db" role="3cqZAp">
          <node concept="3cpWsn" id="62lxAqGp9da" role="3cpWs9">
            <property role="TrG5h" value="tool" />
            <node concept="2OqwBi" id="62lxAqGp9df" role="33vP2m">
              <node concept="2OqwBi" id="62lxAqGp9dg" role="2Oq$k0">
                <node concept="2WthIp" id="62lxAqGpbUf" role="2Oq$k0" />
                <node concept="1DTwFV" id="62lxAqGpdCf" role="2OqNvi">
                  <ref role="2WH_rO" node="62lxAqGpcIF" resolve="project" />
                </node>
              </node>
              <node concept="LR4U6" id="62lxAqGphWh" role="2OqNvi">
                <ref role="LR4U5" node="62lxAqGoPDI" resolve="RServerMpsPluginLauncherTool" />
              </node>
            </node>
            <node concept="1xUVSX" id="62lxAqGp9BF" role="1tU5fm">
              <ref role="1xYkEM" node="62lxAqGoPDI" resolve="RServerMpsPluginLauncherTool" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="62lxAqGpi4I" role="3cqZAp">
          <node concept="2OqwBi" id="62lxAqGpi5v" role="3clFbG">
            <node concept="37vLTw" id="62lxAqGpi5u" role="2Oq$k0">
              <ref role="3cqZAo" node="62lxAqGp9da" resolve="tool" />
            </node>
            <node concept="liA8E" id="62lxAqGpi5w" role="2OqNvi">
              <ref role="37wK5l" to="71xd:~BaseTool.openToolLater(boolean)" resolve="openToolLater" />
              <node concept="3clFbT" id="62lxAqGpi5x" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2DaZZR" id="62lxAqGp7N7" />
</model>

