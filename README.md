# AfricaCryptoChainx – Official Assets & Token Repository

## Status (December 4, 2025)
- **Mainnet**: Under active development — audit-first launch Q2 2026  
- **Testnet**: Public beta Q1 2026  
- **Tokens**: No live contracts yet — all addresses announced post-audit  
- **Live Today**: ACCXBot for wallet creation & testing → https://t.me/accxbot  

This repo houses verified assets for the ACCX ecosystem once deployed. Community contributions welcome after testnet.

## Planned Assets (42 African Digital Assets)
When mainnet launches, this will include:  
- **ACCX**: Native governance/utility token (BEP-20 on BSC initially for early access; 1:1 migration to ACCX L1 at mainnet launch)  
- **AFR**: Africoin (remittances)  
- **AFT**: AfroToken (DeFi lending)  
- **SHC**: Sahara Coin (creator economy)  
- **SAV**: Savanna Token (agricultural yield)  
- +37 more (region-specific: NAI, ZAM, GHS, KES, etc.)  

All will have: logos, decimals (18), symbols, socials, and verified contracts. Initial BSC deployment (chain ID 56) for interoperability; full migration to ACCX L1 (chain ID 17777) via 1:1 bridge/swap mechanism (atomic upgrade with no loss of value).

## How to Prepare Your Token for ACCX Integration
Submissions open post-testnet. Requirements:  
- Real utility & circulation (min. 1M supply, audited code)  
- African focus (financial inclusion, remittances, agriculture, etc.)  
- No rugs, no spam — founder (@Patrickoto91) verifies personally  

**Process (future)**:  
1. Fork this repo  
2. Add `info.json` in `/blockchains/accx/assets/` (template below)  
3. PR with proof of audit + whitepaper  
4. Approved → added to tokenlist.json for ACCX Wallet  

**Template (`info.json` example for ACCX)**:
```json
{
  "name": "AfricaCryptoChainx",
  "symbol": "ACCX",
  "address": "[POST-AUDIT-ADDRESS]",
  "decimals": 18,
  "chainId": 17777,  // ACCX L1 primary; use 56 for BSC bridge version
  "logoURI": "https://github.com/Africacryptochainx-Com/raw/main/assets/accx-logo.png",
  "website": "https://africacryptochainx.com",
  "description": "Sovereign L1 for Africa's billion users – fast, low-cost, mobile-first.",
  "socials": {
    "telegram": "https://t.me/accxcommunity",
    "twitter": "https://twitter.com/AfricaCryptoChainx",
    "github": "https://github.com/Africacryptochainx-Com"
  }
}
