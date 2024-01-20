# An Empirical Study of Language features usage in C/C++

[TOC]



## Topic introduction

### Abstract

本项目旨在分析目标语言`C/C++`的各项语言特性和机制在开源项目中的使用情况。在实现中将目标特性划分为了$\text{Template \& Modular Programming}$ 、$\text{Concurrency \&Multithreading}$、$\text{Memory Management}$、$\text{Exception Handling}$、$\text{Polymorphism \& Overloading}$、$\text{Reference Control}$、$\text{Function}$、$\text{Type System}$等八个类别，并在每一类别中选取了相应的若干特征项；继而利用我们完成的工具`CCScaner`对一批开源项目仓库进行了统计分析，得到统计结果。本项目将基于这一统计结果进行进一步的分析与讨论，以加深对这一经典语言的诸多特性的理解；并与现有的基于其他高级语言特性的相关研究结论进行对照，从而在新的角度认识不同语言特性在实际应用中的作用。

### Target

1.  整理汇总`我们所关注的C/C++`语言特征，划分成为不同类别，并在每一类别中选取若干具有代表性的特征项

2.  基于我们完成的工具`CCScaner`分析`C/C++`的各项语言特征在开源项目中的使用情况，获得基础数据

3.  对得到的基础数据进行分析与讨论，关注：

    1.  `C/C++`语言中的那些特性具有比较显著的影响，并得到大量应用
    2.  不同领域语言使用者的特性使用倾向

    等等。

4.  与现有的基于其他高级语言特性的相关研究进行对照，进行进一步的讨论

## Design

>   这一部分不涉及具体实现，主要侧重功能预期

### Tools for generating trees

#### Tools we have explored

>   pycparser, pygccxml, treesitter, lib-clang

#### Why tree-sitter?



### CCScaner

>   预期功能介绍

### `C/C++` Features

>   特征表格

### Data set

>   仓库数据集的选取

### Data analysis

>   希望得到数据之后按照何种方式进行分析

### Technical route

>   开发路线（时间线）



## Division of labor & Contribution ratio



## Implementation

### Inner structure of CCScaner



### How to analyze a repository?



## Data & Analysis

### Raw data

>   对不同仓库统计出来的原始数据

### Analysis

>   对数据分析的部分，可能会有多个子项



## Conclusion



## Reference