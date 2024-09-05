import { ethers } from "ethers";
import { toast } from "react-toastify"; // uma forma de implementar um retorno na tela da pessoa usuária de forma mais rápida

const tokenAddress = '0x9fE46736679d2D9a65F0992F2272dE9f3c7fa6e0' //no portal aberto no navegador, no recibo retornado após a publicação do token na Blockchain. PS. Configurado localmente

// Sempre ao instanciar um contrato e interagir com ele, precisamos da chamada ABI (Application Binary Interface), que se comporta como uma interface com as funções que o seu contrato espera receber. 
// Ela vai explicar para o Ethers como deve chamar a função do contrato.
// o balanceOf(), é a única função que desejamos no momento, pois queremos apenas consultar o balanço
// É como se fosse um interface
const tokenABI = [
    "function balanceOf(address owner) view returns (uint256)"
]

export const connectWallet = async () => {
    if(window.ethereum){
        try{
            // pega as contas (endereços conectados na wallets) conectadas com a metamesk
            const accounts = await window.ethereum.request({
                method: 'eth_requestAccounts'
            })
            const account = accounts[0] //pega o primeiro endereço conectado
            const provider = new ethers.BrowserProvider(window.ethereum) //Interação por meio do navegador, em vez de um rpc
            const signer = provider.getSigner() //quem vai assinar as transaçoes para enviar para a blockchain
            const tokenContract = new ethers.Contract(tokenAddress, tokenABI, provider) //istancia o contrato
            const balance = await tokenContract.balanceOf(account)
            const balanceInTokens = ethers.formatUnits(balance, 18)
            return { account, balance: balanceInTokens, provider, signer}
        } catch(e){
            console.error(e)
            toast.error('Erro ao se conectar com a carteira')
        }
    }
}