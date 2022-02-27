# Delegation Design Pattern

Delegatin design pattern is to provide a way to override a method in any of the parent classes in your class tree hierarchy.

Delegation design pattern is not widely categorized as a structural design pattern. However, I implemented it beyond StructuralDesignPatterns section since it is the most appropriate section to it.


## Problem Identification

Consider the following class tree hiararchy:
										parent
                                          |
                                   _______|_________________________________
                                  |                                         |
                                  |                                         |
                                child1                                    child2
                                  |                                         |
        __________________________|                                         |___________________
       |                          |                                         |                   |
       child1Child1               child2Child1                           child1Child2           child2Child2



Consider that we have a virtual method implemented in parent called FuncVirtual(). This FuncVirtual method may be overridden in any of the descendent classes. In case that FuncVirtual method is overridden in child2 class, it will affect only child1Child2 and child2Child2 classes (right side branch) without affecting any of child1 class or its child ones.

Consider that this class hierarchy is already implemented in a package which you are not allowed to modify. There are two possible scenarios you may face when you import this non-touch package into your project.

1. The first one is when you want to override FuncVirtual in any of childxChildX classes. This case is quite easy since what all you have to make is to extend it into your project scope, then override the funcVirtual method.

2. The sceond one is when you want to change FuncVirtual implementation in any of parent classes like parent, child1 or child2. Without delgation design pattern support, you will have to override that particular parent and re-implement all of its child classes again so as to be implemented from the new parent instead of the old parent.


## Idea

It is to provide an static object into the top parent of type parent in addition to a static methods to set that instantiated parent object.

All methods that support delegation should ask first if that static parent object is null or not. It if is null, then it should behaves like a default implementation. Otherwise, it should import the default implementation from that static parent object.


## Note

Starting from SV 2012 version, SV LRM starts to support multiple inheritence which enables a single child class to be inherited from multiple parents. Although this feature is added to SV, Delegation pattern still required to provide a dynamic configurability to any tree-hierarchy classes.


## Demo
[EDA PlayGround](https://www.edaplayground.com/x/NSQa)