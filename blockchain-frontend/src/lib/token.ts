import { error } from "console";
import { ethers } from "ethers";
import { toast } from "react-toastify";

// essa variavel serve para definir quem irá receber o pagamento
const bankAddress = '0x70997970C51812dc3A010C7d01b50e0d17dc79C8'

export const buyProduct = async (address: string, price: number) => {
    const contractAddress = '0x9fE46736679d2D9a65F0992F2272dE9f3c7fa6e0'
    const tokenABI = [
        "function transfer(address to, uint amount) public returns (bool)"
    ]

    const provider = new ethers.BrowserProvider(window.ethereum)
    const signer = await provider.getSigner()
    const erc20 = new ethers.Contract(contractAddress, tokenABI, signer)

    try{
        const tx = await erc20.transfer(bankAddress, ethers.parseUnits(price.toString(), 18))
        const receipt = await tx.wait()
        toast.info("Enviado")
        return {
            isSuccess: true,
            txHash: receipt.hash,
            error: null,
        }
    } catch(error){
        console.log(error)
        return {
            isSuccess: false,
            txHash: null,
            error,
        }
    }
}