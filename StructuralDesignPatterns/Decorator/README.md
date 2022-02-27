# Decorator Design Pattern

A structural design pattern which is used to complement the functionality of inheritance. Inheritance is used to reuse methods/variables from a parent class into a child class. This great feature introduces a great flexibility to share a same code among different classes. For example, a single "sample" method could be shared with multiple montiors that sample the same interface. However, inheritance only provides this capability in static way (build time). What if you want to bring this flexibility in run time as well?

Decorator pattern aims to mix inheritance and aggregation togather to provide the inheritance flexibility in both static/dynamic fashion.

The basic idea is to split the class being used into a core class and decorator classes. Decorator classes instantiates the core class in it and decorates it.