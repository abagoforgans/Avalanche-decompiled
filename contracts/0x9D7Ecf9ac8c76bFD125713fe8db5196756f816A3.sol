contract main {




// =====================  Runtime code  =====================


#
#  - sub_71b3177a(?)
#  - deposit(uint256 arg1, uint256 arg2, address arg3)
#  - compound(uint256 arg1)
#  - deposit(uint256 arg1)
#
address owner;
address chefAddress;
address routerAddress;
address factoryAddress;
address rewardTokenAddress;
address WAVAXAddress;
array of address sub_baa2e9c2;

function chef() {
    return chefAddress
}

function WAVAX() {
    return WAVAXAddress
}

function owner() {
    return owner
}

function sub_baa2e9c2(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= sub_baa2e9c2.length:
        revert with 'NH{q', 50
    return sub_baa2e9c2[arg1]
}

function factory() {
    return factoryAddress
}

function rewardToken() {
    return rewardTokenAddress
}

function router() {
    return routerAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_821f3a05(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < sub_baa2e9c2.length:
        mem[0] = 6
        sub_baa2e9c2[idx] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function addStablecoin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Bad address'
    sub_baa2e9c2.length++
    sub_baa2e9c2[sub_baa2e9c2.length] = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_7a1dec53(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    staticcall chefAddress.poolInfo(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if not bool(ceil32(return_data.size) + 224 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    staticcall chefAddress.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args arg1, address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not bool((2 * ceil32(return_data.size)) + 288 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    staticcall ext_call.return_data[12 len 20].token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall ext_call.return_data[12 len 20].token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args ext_call.return_data[12 len 20]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    staticcall address(ext_call.return_data[0]).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    return ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 
           ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0],
           address(ext_call.return_data[0]),
           address(ext_call.return_data[0])
}



}
