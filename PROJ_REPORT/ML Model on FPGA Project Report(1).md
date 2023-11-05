# __Project Report : ML Model on FPGA__
## Introduction
An ML model will be implemented on an FPGA, specifically targeting the MNIST dataset. This model will inherently be accelerated on the FPGA.

## Project Overview
  The aim of this project was to create a Convolutional Neural Network(_basically a machine learning model_) to accurately detect any number between 0-9 from the MNIST dataset.The MNIST (Modified National Institute of Standards and Technology) dataset is a large collection of images of hanndwritten digits.This Neural Network was then to be implemented on an FPGA using Verilog HDL. 
## Contents
| No. | Title                                  |
| --- | ------------------------------------   |
| 1   | Resources utilised                     |
| 2   | Project Workflow                       |
| 2.1 | Neural Network                         |
| 2.2 | Verilog & FPGA's                       |
| 2.3 | Verilog modules for Neural Network     |
| 3   | Conclusion                             |

## Resources utilised
- Jupyter Notebook : for building and testing a CNN(Convolutional Neural Network) using only numpy
- [Chipverify](https://www.chipverify.com/) & [Nandland](https://nandland.com/) : Learning Verilog HDL
- [HDLbits](https://hdlbits.01xz.net/wiki/Main_Page) & [EDAPlayground](https://edaplayground.com/) : For practicing & testing verilog codes
- Intel Quartus Prime : For synthesis & analysis of codes for FPGA

## Project Workflow
### Neural Network
Neural networks are computational models inspired by the structure and functioning of the human brain's interconnected neurons. The basic components of a neural network include: 
1. __Input Layer__: This layer receives the initial data or features that are used as input to the network.
2. __Hidden Layers__: These layers are intermediate layers between the input and output layers. Each neuron in a hidden layer performs a weighted sum of its inputs, applies an activation function, and produces an output that serves as the input for the next layer. 
3. __Output Layer__: This layer produces the final output of the network, which can be in the form of predictions, classifications, or any other desired output.

![Neural_network.jpg](https://hackmd.io/_uploads/B19Be-Vma.jpg)

We began with creating a Convolutional Neural Network for our model . The model is to detect handwritten digits from 0-9 ; the MNIST dataset (60,000 28x28 examples) is used for this purpose. To understand the working of a neural network ,a Python code was written using only the __numpy__ module.This helped us to understand the mathematics behind a neural network.
 

![nn1.png](https://hackmd.io/_uploads/SyzABZ4Q6.png)


### Verilog & FPGA's
Field Programmable Gate Arrays (FPGAs) are semiconductor devices that are based around a matrix of configurable logic blocks (CLBs) connected via programmable interconnects. A FPGA is an Integrated Circuit (IC) that contains an array of reprogammable logic gates/components.FPGA's are programmed using HDL's ; a hardware description language is a specialized computer language used to describe the structure and behavior of electronic circuits, and most commonly, digital logic circuits. Two of the most commonly used HDL's are Verilog HDL and VHDL . HDL's describe the basic layout/design of a circuit /circuit element ranging from basic wires & logic gates to flip-flops and multiplexers(mux).
We learnt and practiced basic gates & operations upto FSM's(Finite State Machines) using HDLbits and EDAPlayground.

### Verilog modules for Neural Network
To implement a Neural Network on an FPGA , it is necessary to create a verilog code to take input pixel values , perform mathematical operations on it , and show output.
We wrote Verilog modules for performing operations such as addition,multiplication & division. Also ,activation functions such as ReLU and sigmoid required separate modules. All these modules used together perform convolution operation.
![conv.gif](https://hackmd.io/_uploads/B1-cRWNm6.gif)
Using Back-Propagation , we determined the optimized values for the weights matrix and used it directly in our Verilog code.Below are the Forward Propagation operations used.
![Screenshot from 2023-11-05 00-08-05.png](https://hackmd.io/_uploads/ByInJMVXa.png)


## Conclusion
We explored the domains of ML, FPGA's and learnt about performing different logical & arithmetic operations in digital circuits.



