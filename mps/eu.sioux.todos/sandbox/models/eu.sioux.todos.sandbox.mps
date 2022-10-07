<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:359567f0-e7c7-4845-a93c-32de23e880d1(eu.sioux.todos.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="29926bc6-d0ab-4f3e-9c75-6ea20990ab84" name="eu.sioux.todos" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="29926bc6-d0ab-4f3e-9c75-6ea20990ab84" name="eu.sioux.todos">
      <concept id="6343360017566328097" name="eu.sioux.todos.structure.TodoReference" flags="ng" index="29vc5M">
        <reference id="6343360017566328098" name="todo" index="29vc5L" />
      </concept>
      <concept id="8055681094316877452" name="eu.sioux.todos.structure.TodoList" flags="ng" index="Hnu7a">
        <child id="8055681094316877454" name="items" index="Hnu78" />
      </concept>
      <concept id="8055681094316877453" name="eu.sioux.todos.structure.Todo" flags="ng" index="Hnu7b">
        <property id="8055681094316877552" name="priority" index="Hnu6Q" />
        <child id="6343360017566328103" name="dependentOn" index="29vc5O" />
        <child id="5251913681081310021" name="subItems" index="2ffL3J" />
      </concept>
    </language>
  </registry>
  <node concept="Hnu7a" id="2S6YArfTg38">
    <property role="TrG5h" value="Chores" />
    <node concept="Hnu7b" id="7F0HLOV3lvz" role="Hnu78">
      <property role="TrG5h" value="Filling the washing machine" />
      <property role="Hnu6Q" value="6ZbxOp2_ArG/HIGH" />
      <node concept="Hnu7b" id="1A0P2jx9wrH" role="2ffL3J">
        <property role="TrG5h" value="nromal cloths" />
      </node>
      <node concept="Hnu7b" id="1A0P2jx9wrL" role="2ffL3J">
        <property role="TrG5h" value="low cloths" />
        <property role="Hnu6Q" value="6ZbxOp2_ArD/LOW" />
      </node>
    </node>
    <node concept="Hnu7b" id="7F0HLOV3lvG" role="Hnu78">
      <property role="TrG5h" value="Cleaning the house" />
      <property role="Hnu6Q" value="6ZbxOp2_ArG/HIGH" />
    </node>
    <node concept="Hnu7b" id="4BbPUEyKe0F" role="Hnu78">
      <property role="TrG5h" value="Normal dfgfg" />
    </node>
    <node concept="Hnu7b" id="3zWirJxaZn2" role="Hnu78">
      <property role="Hnu6Q" value="6ZbxOp2_ArD/LOW" />
      <property role="TrG5h" value="Taking over the world" />
    </node>
    <node concept="Hnu7b" id="2HmZqw9vd9w" role="Hnu78">
      <property role="TrG5h" value="Working" />
      <property role="Hnu6Q" value="6ZbxOp2_ArD/LOW" />
      <node concept="Hnu7b" id="2HmZqw9vd9F" role="2ffL3J">
        <property role="TrG5h" value="Read e-mails" />
        <node concept="29vc5M" id="4gX3T3T9teV" role="29vc5O">
          <ref role="29vc5L" node="4BbPUEyKe0F" resolve="Normal dfgfg" />
        </node>
      </node>
      <node concept="Hnu7b" id="4Yc7aICv1h7" role="2ffL3J">
        <property role="TrG5h" value="deleting the server" />
        <node concept="29vc5M" id="4gX3T3T9teX" role="29vc5O">
          <ref role="29vc5L" node="2yjPfKGB5WH" resolve="Take a morning run" />
        </node>
      </node>
      <node concept="29vc5M" id="$7tnRv5i4_" role="29vc5O">
        <ref role="29vc5L" node="2HmZqw9vd9F" resolve="Read e-mails" />
      </node>
    </node>
    <node concept="Hnu7b" id="2HmZqw9vd9M" role="Hnu78">
      <property role="TrG5h" value="Take a run" />
      <property role="Hnu6Q" value="6ZbxOp2_ArG/HIGH" />
      <node concept="Hnu7b" id="2yjPfKGB5WH" role="2ffL3J">
        <property role="TrG5h" value="Take a morning run" />
        <property role="Hnu6Q" value="6ZbxOp2_ArG/HIGH" />
      </node>
      <node concept="Hnu7b" id="12HzbWp11RL" role="2ffL3J">
        <property role="TrG5h" value="Take evening run" />
        <property role="Hnu6Q" value="6ZbxOp2_ArG/HIGH" />
      </node>
    </node>
  </node>
  <node concept="Hnu7a" id="5mCCjk8XfXJ">
    <property role="TrG5h" value="WorkTasks" />
    <node concept="Hnu7b" id="5mCCjk8XfXK" role="Hnu78">
      <property role="TrG5h" value="BUMBLE" />
      <property role="Hnu6Q" value="6ZbxOp2_ArG/HIGH" />
      <node concept="Hnu7b" id="5mCCjk8XfXT" role="2ffL3J">
        <property role="TrG5h" value="Awesome RServer" />
      </node>
      <node concept="Hnu7b" id="5mCCjk8XfXX" role="2ffL3J">
        <property role="TrG5h" value="SuperME" />
      </node>
    </node>
    <node concept="Hnu7b" id="5mCCjk8XfXM" role="Hnu78">
      <property role="TrG5h" value="LITEQ" />
    </node>
    <node concept="Hnu7b" id="5mCCjk8XfXP" role="Hnu78">
      <property role="TrG5h" value="Log10" />
      <node concept="Hnu7b" id="5mCCjk8XfYc" role="2ffL3J">
        <property role="TrG5h" value="boring stuff" />
      </node>
    </node>
  </node>
</model>

