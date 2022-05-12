contract main {




// =====================  Runtime code  =====================


const params = 0xec2ebc6e5c53def0bc3af8d612bc75972ca401e8, ext_code.hash(0xec2ebc6e5c53def0bc3af8d612bc75972ca401e8), Array(len=100, data=setAuthorityAndDelay(address arg1, address arg2, uint256 arg3), 0x194964f933be66736c55e672, 129328315, 0x86fcf1b49372d98fa275ca916d6c1a08fe05a125, 24 * 3600, 0xec2ebc6e5c53def0bc3af8d612bc7597 >> 512, Mask(32, -768, setAuthorityAndDelay(address arg1, address arg2, uint256 arg3), 0x194964f933be66736c55e672, 129328315, 0x86fcf1b49372d98fa275ca916d6c1a08fe05a125, 24 * 3600, 0xec2ebc6e5c53def0bc3af8d612bc7597) << 768), block.timestamp + 300


function _fallback() payable {
    revert
}

function soul(address arg1) payable {
    require calldata.size - 4 >= 32
    return ext_code.hash(arg1)
}

function params(address arg1, address arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    return address(arg1), ext_code.hash(arg1), 128, block.timestamp + 300, 100, arg4, address(arg1) << 64 >> 512, 0
}



}
