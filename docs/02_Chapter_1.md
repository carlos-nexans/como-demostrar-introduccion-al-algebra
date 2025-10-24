# Chapter 1

## Code

\pagebreak
### Method 1: Simple Markdown Code Block

```python
import numpy as np
    
def incmatrix(genl1,genl2):
    m = len(genl1)
    n = len(genl2)
    M = None #to become the incidence matrix
    VT = np.zeros((n*m,1), int)  #dummy variable
    
    #compute the bitwise xor matrix
    M1 = bitxormatrix(genl1)
    M2 = np.triu(bitxormatrix(genl2),1) 

    for i in range(m-1):
        for j in range(i+1, m):
            [r,c] = np.where(M2 == M1[i,j])
            for k in range(len(r)):
                VT[(i)*n + r[k]] = 1
                VT[(i)*n + c[k]] = 1
                VT[(j)*n + r[k]] = 1
                VT[(j)*n + c[k]] = 1
                
                if M is None:
                    M = np.copy(VT)
                else:
                    M = np.concatenate((M, VT), 1)
                
                VT = np.zeros((n*m,1), int)
    
    return M
```

\pagebreak
### Method 2: LaTeX Minted (Better Syntax Highlighting)

```python
import numpy as np
    
def incmatrix(genl1,genl2):
    m = len(genl1)
    n = len(genl2)
    M = None #to become the incidence matrix
    VT = np.zeros((n*m,1), int)  #dummy variable
    
    #compute the bitwise xor matrix
    M1 = bitxormatrix(genl1)
    M2 = np.triu(bitxormatrix(genl2),1) 

    for i in range(m-1):
        for j in range(i+1, m):
            [r,c] = np.where(M2 == M1[i,j])
            for k in range(len(r)):
                VT[(i)*n + r[k]] = 1
                VT[(i)*n + c[k]] = 1
                VT[(j)*n + r[k]] = 1
                VT[(j)*n + c[k]] = 1
                
                if M is None:
                    M = np.copy(VT)
                else:
                    M = np.concatenate((M, VT), 1)
                
                VT = np.zeros((n*m,1), int)
    
    return M
```


\pagebreak
## Image example

\begin{figure}[htbp]
\centering
\includegraphics[width=0.9\textwidth]{./assets/example_image.png}
\caption{Transformer Architecture}
\end{figure}

\pagebreak

## Table

+-----------------------+----------------------+
| Good                  | Bad                  |
+=======================+======================+
| ```cpp                | ```cpp               |
| int foo() {           | int foo() {          |
|     int result = 4;   |     int x = 4;       |
|     return result;    |     return x;        |
| }                     | }                    |
| ```                   | ```                  |
+-----------------------+----------------------+


\pagebreak