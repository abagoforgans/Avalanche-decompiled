contract main {




// =====================  Runtime code  =====================


#
#  - withdraw()
#  - sub_b5c5c83e(?)
#
const devFee = 50

const sub_7a4480c2(?) = 50

const leftOver = 900


address USDCAddress;
mapping of struct stor1;
address ceoWalletAddress;
address devWalletAddress;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint8 stor7;

function ceoWallet() payable {
    return ceoWalletAddress
}

function USDC() payable {
    return USDCAddress
}

function devWallet() payable {
    return devWalletAddress
}

function _fallback() payable {
    revert
}

function getInfo() payable {
    return stor1[address(msg.sender)].field_0, stor1[address(msg.sender)].field_256, stor6, stor4, stor5
}

function sub_8f797eb9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if ceoWalletAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only CEO wallet can use this function'
    stor7 = uint8(arg1)
}



}
