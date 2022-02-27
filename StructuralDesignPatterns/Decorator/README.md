# Decorator Design Pattern

A structural design pattern is used to complement the functionality of inheritance. Inheritance is used to reuse methods/variables from a parent class into a set of child classes. It introduces a great flexibility to share a same code among different classes. For example, a single "sample" method could be shared with multiple montiors that sample the same interface. However, inheritance only provides this capability in static way (you cannot modify it in runtime. It turns to be a fixed structure). What if you want to bring this flexibility in run time as well?

Decorator pattern aims to mix inheritance and aggregation togather to provide the inheritance flexibility in both static/dynamic fashion.

The basic idea is to split the class being used into a core class and decorator classes. Decorator classes instantiates the core class in it and decorates it.

Decorator pattern is widely used in verification. However, many verification engineers don't know that they already implement it in their own benches. Test plan includes a set of stimulus that verification engineer is planning to inject to the DUT. Although this test plan is written in a document ahead. The stimulus is not implemented in a single class. Instead, it is split into:

- Transaction classes.
- Sequence classes.
- Test classes.

Stimulus splitting into three layers of classes provides a dynamic flexibility to reuse/implement a wide set of functionality in a minimal set of codelines.

## Demo

[EDA playground](https://edaplayground.com/x/DCzQ)