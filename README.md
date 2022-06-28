# sample-token-staking
## Prerequisite
install nodejs and npm 
[download](https://nodejs.org/en/download/)

install truffle
```cmd
npm install -g truffle
```

initial truffle project
```cmd
truffle init
```

install openzeppelin
```cmd
npm install --save @openzeppelin/contracts
```

install truffle-assertions
```cmd
npm install --save truffle-assertions
```

## Compile smart contract
```cmd
truffle compile
```

## Run truffle test environment
```cmd
truffle develop
```

### Deploy smart contract
```truffle(develop)
truffle(develop)> migrate
```

### Debug
```truffle(develop)
truffle(develop)> debug <address>
```

## Run test with Ganache
should edit config #[truffle-config.js](truffle-config.js) in networks:development 
```cmd
truffle test
```

## Deploy smart contract to Ganache
```cmd
truffle migrate --network development
```

truffle console --network development