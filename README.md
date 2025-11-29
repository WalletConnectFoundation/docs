# WalletConnect Network Docs

This repository is currently under development. If you come across any issues, please report them.

## Development

Install the [Mintlify CLI](https://www.npmjs.com/package/mint) to preview your documentation changes locally. To install, use the following command:

```
npm i -g mint
```

Run the following command at the root of your documentation, where your `docs.json` is located:

```
mint dev
```

View your local preview at `http://localhost:3000`.

## Need help?

### Resources
- [WalletConnect Docs](https://docs.walletconnect.network/)
- [WalletConnect Community](https://discord.walletconnect.network/)
```markdown
# AfricaCryptoChainx WalletConnect Integration

*Integration guide for ACCX ecosystem (Work in Progress)*

## Overview
WalletConnect integration guides for AfricaCryptoChainx wallets, dApps, and ecosystem projects. This documentation covers Web3Modal setup, signing protocols, and multi-chain support for ACCX tokens.

## Development Setup
```bash
npm install -g mintlify
mintlify dev
```

## Supported Chains
| Chain               | Chain ID | RPC Endpoint                          | Status   |
|---------------------|----------|---------------------------------------|----------|
| Binance Smart Chain | 56       | https://bsc-dataseed.binance.org      | Live     |
| BSC Testnet         | 97       | https://data-seed-prebsc-1-s1.binance.org | Testing |
| Ethereum            | 1        | https://mainnet.infura.io/v3/YOUR_KEY | Planned |
| ACCX Native         | TBD      | TBD                                   | Planned |

## Quick Start
```javascript
import { WalletConnectConnector } from 'wagmi/connectors/walletConnect'
import { bsc } from 'wagmi/chains'

const connector = new WalletConnectConnector({
  chains: [bsc],
  options: {
    projectId: 'YOUR_WALLETCONNECT_PROJECT_ID',
    showQrModal: true,
    metadata: {
      name: 'AfricaCryptoChainx Wallet',
      description: 'Secure ACCX DeFi & P2P Wallet',
      url: 'https://africacryptochainx.com',
      icons: ['https://africacryptochainx.com/logo.png']
    }
  }
})
```

## Example Usage
```javascript
function ConnectButton() {
  const { connect } = useConnect({ connector })
  const { address } = useAccount()
  
  return (
    <button onClick={() => connect()}>
      {address ? `Connected: ${address}` : 'Connect ACCX Wallet'}
    </button>
  )
}
```

## Resources
- **Website**: https://africacryptochainx.com
- **GitHub**: https://github.com/Africacryptochainx-Com
- **Telegram Bot**: https://t.me/accxbot
- **WalletConnect Docs**: https://docs.walletconnect.com/

---

*AfricaCryptoChainx – Bridging African users to Web3*
```
