# Chain of Responsibility Design Pattern

## Definition

It is to a behavioral design pattern which enables verification engineer to split a big processing function/task into smaller ones. Instead of
writing a big function that is about 100+ lines which could be:
- Hard to maintain.
- Not reliable to change due to adding/removing features.
- Buggy.

## Suggested Applications

### 1-Scoreboard
For both local (agent) scoreboard and global (environment) scoreboard, It may receive objects of many types. Each object may need a special handling before doing the comparison. Encapsulating the code for different types of objects into the same method will be the worst decision, verification engineer may take.

### 2- RAL predictor.
In a special type of RAL predictor where registers are not only updated by direct Read/Write access. Instead, it could be changed due to other inputs change. In this case, it would be a good option not to encapsulate all the handling algorithm into a single function in the predictor.


## Demo
[EDA playground](https://edaplayground.com/x/fkkX)