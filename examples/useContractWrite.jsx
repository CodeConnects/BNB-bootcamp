/*
In this example, we import the useContractWrite() hook from wagmi/core 
and initialize it for both the approve() function and the swap() function 
using the ABI and contract address for each function.

We then define a handleSwap() function 
that calls the approve() function first, 
passing in the exchange contract address and the amount of tokens to approve. 
Once the approve() transaction has been mined, 
we call the swap() function to execute the trade, 
passing in the amount of tokens to trade, 
the input token address, the output token address, and the user address.

Finally, we render a button that triggers the handleSwap() function when clicked.
*/

import { useContractWrite } from '@wagmi/core';
import { TOKEN_ABI } from './tokenAbi'; // import the ABI of your token contract
import { EXCHANGE_ABI } from './exchangeAbi'; // import the ABI of your exchange contract

// create a new instance of the contract for your token and exchange
const tokenContract = new ethers.Contract(TOKEN_ADDRESS, TOKEN_ABI, provider.getSigner());
const exchangeContract = new ethers.Contract(EXCHANGE_ADDRESS, EXCHANGE_ABI, provider.getSigner());

function MyComponent() {
  // initialize the useContractWrite hook for the approve function
  const { mutate: approve } = useContractWrite(
    tokenContract,
    'approve',
  );

  // initialize the useContractWrite hook for the swap function
  const { mutate: swap } = useContractWrite(
    exchangeContract,
    'swap',
  );

  // call the approve function before calling the swap function
  const handleSwap = async () => {
    try {
      // first, call the approve function to approve the exchange to spend tokens on your behalf
      await approve(EXCHANGE_ADDRESS, AMOUNT_TO_APPROVE);

      // once the approve transaction has been mined, call the swap function to execute the trade
      await swap(AMOUNT_TO_TRADE, INPUT_TOKEN_ADDRESS, OUTPUT_TOKEN_ADDRESS, USER_ADDRESS);
    } catch (error) {
      console.error(error);
    }
  };

  // render the component with a button to trigger the handleSwap function
  return (
    <button onClick={handleSwap}>Swap Tokens</button>
  );
}
