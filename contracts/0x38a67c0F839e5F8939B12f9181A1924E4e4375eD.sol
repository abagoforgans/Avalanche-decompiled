contract main {




// =====================  Runtime code  =====================


#
#  - swap(address arg1, uint256 arg2, uint256 arg3)
#
const ROUTER = 0x60ae616a2155ee3d9a68541ba4544862310933d4

const WAVAX = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7

const USDC = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664

const USDCAVAX = 0xa389f9430876455c36478deea9769b7ca4e3ddb1

const MIM = 0x130966628846bfd36ff31a822705796e8cb8c18d

const DEGENBOX = 0x1fc83f75499b7620d53757f0b01e2ae626aae530

const MIMAVAX = 0x781655d802670bba3c89aebaaea59d3182fd755d


function _fallback() payable {
    revert
}



}
