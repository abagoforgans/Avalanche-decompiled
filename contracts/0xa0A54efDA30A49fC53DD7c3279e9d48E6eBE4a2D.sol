contract main {




// =====================  Runtime code  =====================


address SELFAddress;
address pairAddress;
address token0Address;
address sub_5b32044fAddress;
address iPairAddress;

function token0() {
    return token0Address
}

function iPair() {
    return iPairAddress
}

function SELF() {
    return SELFAddress
}

function sub_5b32044f(?) {
    return sub_5b32044fAddress
}

function pair() {
    return pairAddress
}

function _fallback() payable {
    revert
}

function withdrawEth() {
    if SELFAddress != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call SELFAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if SELFAddress != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args SELFAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_32a9f7b7(?) {
    require ext_code.size(sub_5b32044fAddress)
    call sub_5b32044fAddress.createPair() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(token0Address)
    staticcall token0Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(iPairAddress)
    staticcall iPairAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[0] and 997 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 997 * ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / 997 * ext_call.return_data[0]:
        revert with 'NH{q', 17
    if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
        revert with 'NH{q', 17
    if 1000 * ext_call.return_data[18 len 14] > (-997 * ext_call.return_data[0]) - 1:
        revert with 'NH{q', 17
    if not (1000 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]):
        revert with 'NH{q', 18
    require ext_code.size(token0Address)
    call token0Address.0xa9059cbb with:
         gas gas_remaining wei
        args pairAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(iPairAddress)
    call iPairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), SELFAddress, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
