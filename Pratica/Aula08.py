import numpy as np

def main():
    # Inputs
    X = np.array([0.5, 0.5]) # X1 and X2 as an array

    # Arrays for weights and biases
    inputWeights = np.array([[0.2, 0.1], # Weights for X1 -> H1 and X1 -> H2
    [0.2, 0.1]]) # Weights for X2 -> H1 and X2 -> H2
    hiddenBiases = np.array([0.3, 0.3]) # Biases for H1 and H2
    outputWeights = np.array([0.5, 0.5]) # Weights for H1 -> O and H2 -> O
    outputBiases = np.array([0.3]) # Bias for O

    # Get the output from the networ
    O = forward_pass(X, inputWeights, hiddenBiases, outputWeights, outputBiases)
    print("Output:", O)

# Run the main function
if __name__ == "__main__":
    main()

def sigmoid(x):
    1 / (1 + np.exp(-x))

def f(x):
    np.where(x > 0.5, 1, 0)

def compute_layoer_outputs(inputs, weights, biases, activation_funcion):

def forward_pass(x, inpurt_weights, hidden_biases, output)weights, output_biases):
