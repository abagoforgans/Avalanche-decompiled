contract main {




// =====================  Runtime code  =====================


address pcsRouterAddress;
mapping of uint256 stor2;
address stor3;

function pcsRouter() {
    return pcsRouterAddress
}

function withdraw() payable {
    if stor3 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this function.'
    stor2[msg.sender] = 0
    call stor3 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor3 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this function.'
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function sub_8cd870f5(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    staticcall address(arg2).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg3), address(arg4)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(arg4).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != address(arg3):
        return eth.balance(arg1), 
               ext_call.return_data[0],
               eth.balance(this.address),
               address(ext_call.return_data[0]),
               ext_call.return_data[32] << 144,
               Mask(112, 0, ext_call.return_data[0])
    return eth.balance(arg1), 
           ext_call.return_data[0],
           eth.balance(this.address),
           address(ext_call.return_data[0]),
           ext_call.return_data[0] << 144,
           Mask(112, 0, ext_call.return_data[32])
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
        emit Received(msg.sender, msg.value);
    if unknown_0x3aeac4e1(?????) == uint32(call.func_hash) >> 224:
        require calldata.size - 4 >= 64
        require arg1 == address(arg1)
        require arg2 == address(arg2)
        if stor3 != msg.sender:
            revert with 0, 'Only owner can call this function.'
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call address(arg1).0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        return bool(ext_call.return_data[0])
    if unknown_0x3ccfd60b(?????) == uint32(call.func_hash) >> 224:
        if stor3 != msg.sender:
            revert with 0, 'Only owner can call this function.'
        stor2[msg.sender] = 0
        call stor3 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if unknown_0x63d35d70(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        return pcsRouterAddress
    require unknown_0x8cd870f5(?????) == uint32(call.func_hash) >> 224
    require not msg.value
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    staticcall address(arg2).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg3), address(arg4)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(arg4).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != address(arg3):
        return eth.balance(arg1), 
               ext_call.return_data[0],
               eth.balance(this.address),
               address(ext_call.return_data[0]),
               ext_call.return_data[32] << 144,
               Mask(112, 0, ext_call.return_data[0])
    return eth.balance(arg1), 
           ext_call.return_data[0],
           eth.balance(this.address),
           address(ext_call.return_data[0]),
           ext_call.return_data[0] << 144,
           Mask(112, 0, ext_call.return_data[32])
}



}
