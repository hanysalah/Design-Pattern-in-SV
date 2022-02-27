# Singlton Design Pattern

Singlton Design Pattern is used when we want to make sure that only a single instance of a certain class will be created.

## Applications

- UVM Report Server where there should be a single shared object for the UVM server to collect errors/warnings/info over all
  SV entities (class, module, interface, package, ..... etc).

- UVM commandline parser which is used to parse run time argument.

- One of the possible usage of singlton design pattern is in automatic coverage driven verification through which the test
  will iterate in infinite loop untill the functional coverage hit a certain value

## Demo

[EDA Playground](https://edaplayground.com/x/s3Ax)