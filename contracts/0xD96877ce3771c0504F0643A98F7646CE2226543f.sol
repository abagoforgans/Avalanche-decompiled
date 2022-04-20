contract main {




// =====================  Runtime code  =====================


mapping of address underlyingToCToken;
address comptrollerAddress;
address owner;

function comptroller() payable {
    return comptrollerAddress
}

function owner() payable {
    return owner
}

function underlyingToCToken(address arg1) payable {
    require calldata.size - 4 >= 32
    return underlyingToCToken[arg1]
}

function _fallback() payable {
    revert
}

function maxFlashLoan(address arg1) payable {
    require calldata.size - 4 >= 32
    if not underlyingToCToken[address(arg1)]:
        return 0
    require ext_code.size(underlyingToCToken[address(arg1)])
    staticcall underlyingToCToken[address(arg1)].maxFlashLoan() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function flashFee(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not underlyingToCToken[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0xfe63616e6e6f742066696e642063546f6b656e206f66207468697320756e6465726c79696e6720696e20746865206d617070696e,
                    mem[216 len 12]
    require ext_code.size(underlyingToCToken[address(arg1)])
    staticcall underlyingToCToken[address(arg1)].flashFee(uint256 rg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function removeUnderlyingMapping(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'not owner'
    idx = 0
    while idx < arg1.length:
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[0] = ext_call.return_data[12 len 20]
        mem[32] = 0
        underlyingToCToken[ext_call.return_data[12 len 20]] = 0
        idx = idx + 1
        continue 
    return 1
}

function updateUnderlyingMapping(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'not owner'
    idx = 0
    while idx < arg1.length:
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        staticcall address(cd[((32 * idx) + arg1 + 36)]).underlying() with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[0] = ext_call.return_data[12 len 20]
        mem[32] = 0
        underlyingToCToken[ext_call.return_data[12 len 20]] = address(cd[((32 * idx) + arg1 + 36)])
        idx = idx + 1
        continue 
    return 1
}

function flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if not underlyingToCToken[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0xfe63616e6e6f742066696e642063546f6b656e206f66207468697320756e6465726c79696e6720696e20746865206d617070696e,
                    mem[216 len 12]
    mem[260 len arg4.length] = arg4[all]
    mem[arg4.length + 260] = 0
    require ext_code.size(underlyingToCToken[address(arg2)])
    call underlyingToCToken[address(arg2)].0x5cffe9de with:
         gas gas_remaining wei
        args 0, 0, msg.sender, arg3, 128, arg4.length, arg4[all], mem[arg4.length + 260 len ceil32(arg4.length) - arg4.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}



}
