contract main {




// =====================  Runtime code  =====================


#
#  - migrateJoeLP(uint256 arg1)
#  - updateStakingRewards()
#  - migratePangoLP(uint256 arg1)
#  - migrateOPMN(uint256 arg1)
#
const oldJoeLP = 0xbe67a9673935ad4ecdfdff397f944198eb868996

const oldStaking = 0x5e0113123b63b44f0afda2fb2919ab9904c74eda

const pangoFactory = 0xefa94de7a4656d787667c749f7e1223d71e9fd88

const joeFactory = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10

const oldOPMN = 0xd8b9f9b8dd11b9f6a1e0c7da6a2690720fdc8da3

const oldPangoLP = 0xbbd098c7a0335d4237fbdd14b91efed163b29e4a

const WAVAX = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7


uint256 stor0;
address LQFDAddress;
address stakingContractAddress;
address joeLPAddress;
address pangoLPAddress;

function LQFD() payable {
    return LQFDAddress
}

function joeLP() payable {
    return joeLPAddress
}

function pangoLP() payable {
    return pangoLPAddress
}

function stakingContract() payable {
    return stakingContractAddress
}

function _fallback() payable {
    revert
}

function updateStaking() payable {
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    require ext_code.size(0xd8b9f9b8dd11b9f6a1e0c7da6a2690720fdc8da3)
    staticcall 0xd8b9f9b8dd11b9f6a1e0c7da6a2690720fdc8da3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x5e0113123b63b44f0afda2fb2919ab9904c74eda)
    call 0x5e0113123b63b44f0afda2fb2919ab9904c74eda.deposit(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args 0xbbd098c7a0335d4237fbdd14b91efed163b29e4a, ext_call.return_data[0] / 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x5e0113123b63b44f0afda2fb2919ab9904c74eda)
    call 0x5e0113123b63b44f0afda2fb2919ab9904c74eda.deposit(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args 0xbe67a9673935ad4ecdfdff397f944198eb868996, ext_call.return_data[0] / 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0 = 1
}



}
