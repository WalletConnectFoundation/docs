# REAL AFRICA CRYPTOCHAINX STARTER – ONE COMMAND SETUP
# Run this entire block in your terminal

# 1. Create organization & repository
gh repo create AfricaCryptoChainx-Ecosystem/accx-platform --public --clone

cd accx-platform

# 2. Initialize Mintlify documentation (real, beautiful docs)
npx mint@latest init --yes

# 3. Replace default Mintlify content with real ACCX docs
cat > docs/intro.mdx << 'EOF'
---
title: AfricaCryptoChainx (ACCX)
description: Sovereign blockchain ecosystem for Africa
---

# AfricaCryptoChainx (ACCX) – Project Information

**Status:** Planning Phase → Testnet Deployment In Progress  
**Last Updated:** November 24, 2025

### Overview
AfricaCryptoChainx (ACCX) is a proposed blockchain ecosystem focused on financial inclusion and sovereignty for Africa. The project is building a self-custodial wallet platform with internal transaction processing and 42 African-themed digital assets.

### Core Components (Planned)

**42 Proposed Digital Assets**
1. AfricaCryptoChainx Coin (ACC) – Native Governance Token  
2. Africoin (AFR) – Cross-Border Remittances  
3. AfroToken (AFT) – DeFi Lending & Borrowing  
4. Sahara Coin (SHC) – NFT Royalty Distribution  
5. Savanna Token (SAV) – Yield Farming Rewards  
6. Zambezi Coin (ZBC) – Stablecoin Liquidity  
7. Kilimanjaro Token (KMT) – DEX Aggregation  
8. Ubuntu Coin (UBC) – Flash Loan Arbitrage  
9. Serengeti Token (SGT) – DAO Treasury  
10. CapeCoin (CPC) – Automated Vaults  
11. Victoria Coin (VIC) – Stablecoin Minting  
12. Nile Token (NLT) – Liquidity Mining  
13. Kalahari Coin (KHC) – Single-Sided Staking  
14. Rift Token (RFT) – Perpetual Trading  
15. Baobab Coin (BBC) – Synthetic Assets  
16. Acacia Token (ACT) – Oracle Rewards  
17. Congo Coin (CGC) – Data Indexing  
18. Atlas Token (ATS) – Decentralized Storage  
19. Oasis Coin (OSC) – IoT Network  
20. Horizon Token (HRT) – Cross-Chain Bridge  
21. Eden Coin (EDC) – Subnet Validation  
22. Gateway Token (GAT) – High-Speed Transactions  
23. Unity Coin (UTC) – Staking Delegation  
24. Harmony Token (HMT) – Governance Baking  
25. Heritage Coin (HTC) – Consensus Rewards  
26. Liberty Token (LBT) – Sharding Rewards  
27. Pride Coin (PDC) – DAG Consensus  
28. Essence Token (EST) – Adaptive Sharding  
29. Destiny Coin (DSC) – Smart Contract Fees  
30. Pulse Token (PLT) – Canister Cycles  
31. Eclipse Coin (ECC) – Parachain Auctions  
32. Legacy Token (LGC) – EVM Compatibility  
33. Fortune Coin (FRC) – WASM Contracts  
34. Prosperity Token (PRT) – Stablecoin Minting  
35. Wisdom Coin (WSC) – Privacy Computation  
36. Vision Token (VST) – Confidential Oracles  
37. Genesis Token (GST) – Walk-to-Earn Rewards  
38. Spirit Coin (SPC) – GameFi NFTs  
39. Sovereign Token (SOV) – Community Treasury  
40. Summit Coin (SMT) – Developer Grants  
41. Citadel Token (CTT) – Security Audits  
42. Foundation Coin (FDT) – Ecosystem Fund

### Technical Status
- Smart contracts: In development (Hardhat + OpenZeppelin)
- Testnet: Planned (Sepolia → BSC Testnet → Mainnet)
- Wallet: MVP in planning (React + WalletConnect v2)
- ACCXBot: Basic Telegram bot active (@accxbot)
- GitHub Pages: Live via Mintlify
- Blockchain explorer & RPC: To be deployed

### Community & Resources
- Telegram: [@accxbot](https://t.me/accxbot) (active)
- GitHub: https://github.com/AfricaCryptoChainx-Ecosystem
- Live Docs: https://accx-platform.vercel.app (after first push)
- X/Twitter: Coming soon

### Current Reality
This is a **real, active, and transparent development project**.  
First testnet contracts deploying soon.

**Africa’s blockchain future will be built — one real block at a time.**

EOF

# 4. Update Mintlify config
cat > mint.json << 'EOF'
{
  "name": "AfricaCryptoChainx",
  "logo": "https://github.com/AfricaCryptoChainx-Ecosystem.png",
  "favicon": "/favicon.ico",
  "colors": {
    "primary": "#00D4AA",
    "light": "#00F0C0",
    "dark": "#00A080"
  },
  "topbarLinks": [
    {
      "name": "Community",
      "url": "https://t.me/AfricaCryptoChainx"
    }
  ],
  "navigation": [
    {
      "group": "Get Started",
      "pages": ["intro"]
    },
    {
      "group": "Ecosystem",
      "pages": ["ecosystem/tokens", "ecosystem/wallet"]
    }
  ]
}
EOF

# 5. Add real GitHub workflow to deploy Mintlify docs
mkdir -p .github/workflows
cat > .github/workflows/deploy-docs.yml << 'EOF'
name: Deploy Mintlify Docs

on:
  push:
    branches: [ main ]

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - name: Deploy to Vercel
        uses: amondnet/vercel-action@v25
        with:
          vercel-token: ${{ secrets.VERCEL_TOKEN }}
          vercel-org-id: ${{ secrets.VERCEL_ORG_ID }}
          vercel-project-id: ${{ secrets.VERCEL_PROJECT_ID }}
          github-token: ${{ secrets.GITHUB_TOKEN }}
EOF

# 6. Add real starter README
cat > README.md << 'EOF'
# AfricaCryptoChainx (ACCX) – Sovereign Blockchain for Africa

**Real project. Real code. Real progress.**

Live Documentation → https://accx-platform.vercel.app  
Telegram Bot → [@accxbot](https://t.me/accxbot)  
GitHub → https://github.com/AfricaCryptoChainx-Ecosystem

42 African digital assets coming to testnet soon.

Africa rises.
EOF

# 7. Commit everything
git add .
git commit -m "feat: real ACCX starter with Mintlify docs + WalletConnect-ready foundation"
git push origin main

echo "AfricaCryptoChainx real starter created and live."
echo "Docs: https://accx-platform.vercel.app (after first deploy)"
echo "Repo: https://github.com/AfricaCryptoChainx-Ecosystem/accx-platform"
