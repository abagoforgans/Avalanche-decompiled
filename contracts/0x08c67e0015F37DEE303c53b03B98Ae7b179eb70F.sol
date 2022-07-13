contract main {




// =====================  Runtime code  =====================


#
#  - buy(uint256 arg1)
#
address usdcAddress;
address rainbowAddress;
address treasuryAddress;
uint256 sub_9069d814;
uint256 sub_fef3cd85;
uint256 sub_6678755a;

function usdc() payable {
    return usdcAddress
}

function treasury() payable {
    return treasuryAddress
}

function sub_6678755a(?) payable {
    return sub_6678755a
}

function sub_9069d814(?) payable {
    return sub_9069d814
}

function rainbow() payable {
    return rainbowAddress
}

function sub_fef3cd85(?) payable {
    return sub_fef3cd85
}

function _fallback() payable {
    revert
}

function sub_88d85407(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if treasuryAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the treasury can perform this action'
    sub_6678755a = arg1
}

function sub_b123290a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if treasuryAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the treasury can perform this action'
    sub_fef3cd85 = arg1
}

function sub_b9af98c2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if treasuryAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the treasury can perform this action'
    sub_9069d814 = arg1
}



}
