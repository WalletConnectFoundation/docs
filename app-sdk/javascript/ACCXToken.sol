**Pull Request Title:**  
feat: add official ACCXToken.sol – owner-locked ERC-20 token contract

**Pull Request Description:**

### Add Official ACCX Token Contract (Owner-Controlled)

This PR introduces the first official smart contract for the AfricaCryptoChainx (ACCX) project: a clean, secure, owner-locked ERC-20 token.

#### Contract Details
- **File:** `contracts/ACCXToken.sol`
- **Name:** AfricaCryptoChainx
- **Symbol:** ACCX
- **Decimals:** 18
- **Total Supply:** 1,000,000,000 ACCX (fixed, minted to deployer on construction)
- **Standard:** OpenZeppelin-inspired ERC-20 implementation (no external dependencies)
- **Key Features:**
  - Full owner control (deployer address is permanent owner)
  - No mint, burn, pause, or tax functions
  - No upgradeability or proxy
  - Simple, auditable code with no backdoors

#### Purpose
- Serves as the canonical token contract for future testnet deployment on Sepolia (Q1 2026 target)
- Designed for maximum security and owner accountability during the pre-mainnet phase
- Ready for independent audit and verification on Etherscan/BscScan

#### Next Steps After Merge
1. Deploy to Sepolia testnet from owner address `0x2f9e1ef59353ec41bf3e0aabbf734547c3d04444`
2. Verify source code on Sepolia Etherscan
3. Update README with verified contract address
4. Begin internal testing (balance checks, transfers)

This contract reflects the project's commitment to radical honesty and single-owner control. No tokens are live yet—this is the preparatory step for a secure, audit-first launch.

**Owner & Sole Approver**  
Patrickoto91 – `0x2f9e1ef59353ec41bf3e0aabbf734547c3d04444`  
December 15, 2025
