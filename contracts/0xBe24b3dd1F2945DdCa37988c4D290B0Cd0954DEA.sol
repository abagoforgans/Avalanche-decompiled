contract main {




// =====================  Runtime code  =====================


uint256 fee;
address oraiAddress;
address oracleAddress;
uint256 random;
uint256 sub_8997ce4e;
uint256 sub_2e22873e;

function orai() payable {
    return oraiAddress
}

function sub_2e22873e(?) payable {
    return sub_2e22873e
}

function random() payable {
    return random
}

function oracle() payable {
    return oracleAddress
}

function sub_8997ce4e(?) payable {
    return sub_8997ce4e
}

function fee() payable {
    return fee
}

function _fallback() payable {
    revert
}

function fulfillRandomness(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    random = arg2
    sub_2e22873e = arg1
}

function randomnessRequest(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(oracleAddress)
    call oracleAddress.getFee() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(oraiAddress)
    call oraiAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args oracleAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(oracleAddress)
    call oracleAddress.0xbc5fc532 with:
         gas gas_remaining wei
        args arg1, 64, 64, address(this.address), 0x1f1f897f00000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_8997ce4e = ext_call.return_data[0]
}

function getRandomSeed(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(oracleAddress)
    call oracleAddress.getFee() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(oraiAddress)
    call oraiAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args oracleAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 196] = arg1
    mem[(2 * ceil32(return_data.size)) + 228] = 64
    mem[(2 * ceil32(return_data.size)) + 260] = 64
    mem[(2 * ceil32(return_data.size)) + 292 len 64] = address(this.address), 0x1f1f897f00000000000000000000000000000000000000000000000000000000
    require ext_code.size(oracleAddress)
    call oracleAddress.0xbc5fc532 with:
         gas gas_remaining wei
        args arg1, 64, 64, address(this.address), 0x1f1f897f00000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_8997ce4e = ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 192] = random
    return memory
      from (4 * ceil32(return_data.size)) + 192
       len (5 * ceil32(return_data.size)) + 32
}



}
