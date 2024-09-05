Hardhat e Foundry, são duas ferramentas populares que simplificam o processo de criação, teste e implantação de contratos inteligentes.
Hardhat

O Hardhat é um ambiente de desenvolvimento completo escrito em JavaScript (Node.js) que oferece:

    Criação de projetos facilitada: permite começar a desenvolver rapidamente com templates de projetos pré-configurados;

    Ferramentas de testes: possibilita a escrita de testes eficazes para seus contratos inteligentes usando frameworks como Mocha e Chai;

    Implantação simplificada: implanta seus contratos em diferentes redes blockchain com facilidade;

    Extensa comunidade e plugins: aproveita a vasta gama de plugins e recursos desenvolvidos pela comunidade.

Para mais detalhes sobre o Hardhat, explore a documentação oficial da ferramenta.
Foundry

O Foundry, por outro lado, é uma suíte de ferramentas completa escrita em Rust que prioriza a velocidade e a eficiência. Ele oferece:

    Testes rápidos: executa testes de unidade e fuzzing (testes de mutação) significativamente mais rápido do que outras ferramentas;

    Desenvolvimento focado em Solidity: o Foundry é construído especificamente para Solidity, facilitando bastante o desenvolvimento com essa linguagem;

    Ferramentas de linha de comando: gerencia todo o ciclo de vida do seu projeto diretamente do terminal;

    Crescente comunidade e ecossistema: apesar de ser mais recente, o Foundry possui uma comunidade ativa e um ecossistema em constante expansão.

Para mais detalhes sobre o Foundry, explore a documentação oficial da ferramenta.


Foundry é como um framework de testes para Solidity, similar ao JUnit ou pytest, que permite escrever e executar testes automatizados para contratos inteligentes.
A analogia com frameworks de testes tradicionais é bastante precisa. O Foundry permite escrever testes unitários e de integração para garantir a funcionalidade e segurança dos contratos inteligentes antes da implantação.


------------------------------------------


forge create --rpc-url https://rpc.ankr.com/polygon_amoy --private-key 63dc2a12c5f0125a1f9c06e0e591b5c113993c59228bfc2111967d5df3651ce1 src/MeuPrimeiroToken.sol:MeuToken --constructor-args 10000000

Visite o site oficial da MetaMask.
https://metamask.io/



------------------------------------------------
Extensões de blockchain
https://medium.com/coinmonks/the-best-vs-code-extensions-for-blockchain-developers-boosting-efficiency-and-simplifying-2f5ae6940afa



----------------------------------------------------------------------------
Para saber mais: ERC-20 e ERC-721

No contexto da blockchain, os padrões de token ERC-20 e ERC-721 são como moldes que definem como os tokens digitais funcionam na rede Ethereum. Eles garantem compatibilidade e facilitam a criação de tokens com funcionalidades específicas.
ERC-20: O padrão para tokens fungíveis

Imagine o ERC-20 como o padrão para criar moedas digitais dentro da Ethereum. Ele define regras para:

    Transferência de tokens: define como os tokens se movem entre endereços;

    Aprovação de gastos: permite que terceiros (ex.: aplicações descentralizadas) usem seus tokens com sua permissão;

    Saldo de tokens: define como verificar o saldo de um endereço.

Para mais detalhes sobre o ERC-20, explore a sua documentação oficial.
https://ethereum.org/en/developers/docs/standards/tokens/erc-20/

ERC-721: O padrão para tokens não fungíveis (NFTs)

Imagine o ERC-721 como um padrão para criar itens digitais únicos e indivisíveis. Ele define regras para:

    Propriedade única: cada token ERC-721 é exclusivo e possui um dono;

    Metadados: permite associar informações adicionais a cada token, como nome, descrição e imagens;

    Transferência e gerenciamento: define como os NFTs são comprados, vendidos e gerenciados.

Para mais detalhes sobre o ERC-721, explore a sua documentação oficial.
https://ethereum.org/en/developers/docs/standards/tokens/erc-721/


-----------------------------------------------------------------------------------------------------------------------

Os Contratos Inteligentes

Você pode estar se perguntando o porquê desse nome, Smart Contracts (Contratos Inteligentes). Esse nome para os programas que escrevemos em blockchain vem porque é um conceito que já existia antes da blockchain, que foi só uma ferramenta que permite que esses contratos sejam criados.

Esse conceito vem lá desde os anos 1990, tinha sido proposto pelo Nick Szabo, que é um criptógrafo e estudioso da área do Direito. Ele tinha proposto o seguinte: se conseguiríamos escrever um contrato que fosse autoexecutável, que você escrevesse os acordos e depois quando as condições para aqueles acordos acontecessem, eles já fossem executados automaticamente, sem depender de uma intervenção humana posterior.

O exemplo que fica muito claro para entender é quando compramos um refrigerante nas máquinas automáticas. Ali é como se tivesse um acordo estabelecido, onde colocamos a nossa moeda, selecionamos o refrigerante e esse acordo se autoexecuta.

Quando o sistema identifica o nosso pagamento, ele já libera o refrigerante. O que era proposto era se conseguíssemos fazer isso com coisas mais complexas, como, por exemplo, a transferência da propriedade de um imóvel ou de um carro.

E o que a blockchain fez foi justamente ser uma ferramenta onde podemos construir acordos desse tipo. E por isso esses programas escritos para a blockchain são chamados de contratos inteligentes.


------------------------------------------------------------------------------------------------------------------------------------------------

https://remix.ethereum.org/

IDE para progamar com solidity



Imagine um editor de código online e gratuito, onde você pode escrever, testar e implantar contratos inteligentes na blockchain Ethereum, sem precisar instalar nenhum programa em seu computador. Esse é o objetivo do Remix IDE, uma ferramenta completa e acessível para pessoas desenvolvedoras.
Vantagens

    Tudo em um só lugar: o Remix IDE oferece um ambiente completo para desenvolvimento blockchain diretamente no seu navegador. Você não precisa configurar nada, basta acessar https://remix.ethereum.org/ e começar a programar;

    Suporte a Solidity: Solidity é a linguagem de programação mais popular para contratos inteligentes, e é totalmente suportada pelo Remix IDE, com recursos como destaque de sintaxe, autocompletar de código e detecção de erros;*

    Compilador Solidity integrado: transforma o seu código Solidity em um formato executável pela blockchain com apenas um clique;

    Depurador de código: identifica e corrige erros no seu código com facilidade usando o depurador integrado, que permite executar o código passo a passo e inspecionar variáveis;

    Simulador de blockchain: testa seus contratos inteligentes em um ambiente seguro e isolado, sem gastar criptomoedas reais, antes de implantá-los na blockchain real;

    Conexão com carteiras e redes: é possível conectar o Remix IDE à sua carteira MetaMask para implantar seus contratos inteligentes em diferentes redes Ethereum, como a rede principal ou redes de teste.



------------------------------------------------------------------------------------------------------------------------------------------------

Plataformas para subir ambiente
https://www.techtarget.com/searchcio/feature/Top-9-blockchain-platforms-to-consider

https://www.hyperledger.org
https://corda.net/
https://consensys.io/

------------------------------------------------------------------------------------------------------------------------------------------------
Link sobre o padrão ERC-20

https://eips.ethereum.org/EIPS/eip-20


------------------------------------------------------------------------------------------------------------------------------------------------
Site com libs para escrever smart contracts

https://wizard.openzeppelin.com/


------------------------------------------------------------------------------------------------------------------------------------------------
1. Clonando o Repositório com Submódulos
Quando você clona um repositório que contém submódulos, você deve adicionar a opção --recurse-submodules no comando git clone para garantir que os submódulos também sejam clonados automaticamente.

Comando:

bash
Copy code
git clone --recurse-submodules <url-do-repositorio>
Isso vai garantir que o Git clone o repositório principal e inicialize e atualize todos os submódulos listados no arquivo .gitmodules.

2. Inicializando e Atualizando Submódulos (Após Clonar)
Se você já clonou o repositório sem a opção --recurse-submodules, ou se os submódulos não foram baixados automaticamente, você pode inicializá-los e atualizá-los manualmente usando os seguintes comandos:

Inicializar Submódulos
Este comando configura os submódulos, mas não baixa ainda o conteúdo deles.

git submodule init


Atualizar Submódulos
Depois de inicializá-los, este comando baixa o conteúdo dos submódulos na versão correta, conforme especificado no commit.

git submodule update


Ou você pode combinar os dois comandos:

git submodule update --init


Isso faz com que o Git inicialize e faça o download dos submódulos automaticamente, trazendo todos os arquivos necessários para o projeto.



------------------------------------------------------------------------------------------------------------------------------------------------
Instalando um projeto com foundry

```
forge init bank-token --no-commit
```
```
forge install OpenZeppelin/openzeppelin-contracts --no-commit
```

------------------------------------------------------------------------------------------------------------------------------------------------

RPC - Remote procedure call

ponto de conexão com a blockchain

Imagine que você quer enviar uma carta. Você precisa escrever a carta, colocá-la em um envelope, endereçá-la corretamente e, por fim, enviá-la pelos Correios. No mundo das blockchains, enviar uma transação com sua carteira digital funciona de forma semelhante: você precisa de um "carteiro" para entregar sua solicitação à rede blockchain. É aí que entram os provedores RPC (Remote Procedure Call), como QuickNode, Alchemy e Infura.


O papel dos provedores RPC
Ponte entre a carteira e a Blockchain

Sua carteira, como a MetaMask, precisa se comunicar com a rede blockchain para enviar transações, verificar saldos ou interagir com contratos inteligentes. Os provedores RPC atuam como intermediários nesse processo, fornecendo um ponto de acesso confiável e eficiente à blockchain. Sem esses provedores, cada usuário teria que operar seu próprio nó da blockchain, o que pode ser impraticável para muitos devido aos altos custos e complexidade técnica.
Infraestrutura robusta

Executar um nó completo da blockchain (um computador que valida e retransmite transações) pode ser caro e complexo. Os provedores RPC possuem infraestrutura especializada e otimizada para garantir conexões rápidas e confiáveis à blockchain. Eles lidam com o armazenamento de grandes volumes de dados e garantem que a rede continue operando sem interrupções, independentemente do tráfego ou da carga de transações.
Simplicidade

Ao utilizar um provedor RPC, as pessoas desenvolvedoras não precisam se preocupar em configurar e manter sua própria infraestrutura de blockchain. Isso acelera o tempo de desenvolvimento e reduz os custos operacionais, permitindo o foco na inovação e na melhoria contínua de seus aplicativos.
Principais provedores RPC
QuickNode

Conhecido por sua velocidade e interface amigável, o QuickNode oferece suporte a diversas blockchains, além de ferramentas de análise e monitoramento. Seus recursos incluem sincronização rápida de nós, acesso a APIs personalizadas e suporte dedicado ao cliente, tornando-o uma escolha popular entre pessoas desenvolvedoras que buscam desempenho e facilidade de uso.
Alchemy

Oferece recursos avançados para pessoas desenvolvedoras, como APIs dedicadas a NFTs, notificações em tempo real e ferramentas de depuração. Alchemy também investe em segurança e desempenho, com funcionalidades como caching de dados, redundância de servidores e proteção contra ataques DDoS.
Infura

Um dos provedores mais populares, o Infura é conhecido por sua confiabilidade e escalabilidade, sendo utilizado por grandes empresas e projetos blockchain. Infura oferece uma infraestrutura altamente resiliente, com suporte para múltiplas redes blockchain e integração fácil com ferramentas de desenvolvimento populares. Além disso, sua API é otimizada para lidar com grandes volumes de tráfego, tornando-a ideal para projetos que exigem alta disponibilidade e performance.



------------------------------------------------------------------------------------------------------------------------------------------------
Explorer da blockchain ethereum

https://etherscan.io/


------------------------------------------------------------------------------------------------------------------------------------------------
Projeto front
https://github.com/alura-cursos/3876-blockchain-frontend/archive/refs/heads/projeto_inicial.zip


------------------------------------------------------------------------------------------------------------------------------------------------
Rodando em uma rede blockchain local
Servidor local de blockchain ether
```
anvil
```

Fazendo deplou de um script
```
forge script script/DeployBankToken.s.sol --broadcast --rpc-url http://localhost:8545 --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80
```