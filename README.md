# Number Theory: Addition

In this lab, you’ve learned about One Hot and Binary state machines and how to build them.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

### Compare and contrast One Hot and Binary encodings
One Hot encoding is a lot easier to implement as we don't need to look at the value of multiple D-flipflops. However, it becomes very hard to implement at large values of N. For Binary encoding, it has a lot of don't care values as it accounts for states that don't exist due to the nature of the log_2(N states).

### Which method did your team find easier, and why?
One Hot was easier to implement, at least for this lab, because we only had to worry about the individual states rather than creating new logic to detect the state. One D-FF = one state, which was a lot easier to grasp.

### In what conditions would you have to use one over the other? Think about resource utilization on the FPGA.
Binary encoding would most likely be the industry standard as devices are extremely complex and utilizing log_2(N state) would be very useful for minimizing how much implementation you need. For example, we had 100 states to account for, we would only need 7 D-FFs for Binary encoding versus 100 D-FFs for One Hot.
