contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor3;
address stor4;
address stor5;
address stor6;
address stor7;
address target_token_address;
uint256 stor9;
uint256 stor10;
address stor11;
address stor12;
uint256 stor12;
uint256 stor13; offset 32
uint256 stor13;

function target_token_address() {
    return target_token_address
}

function _fallback() payable {
    revert
}

function sub_7824738f(?) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    target_token_address = arg1
}

function sub_be6cb59c(?) {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_3a143661(?) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_208457db(?) {
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[160] = target_token_address
    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[196] = uint256(stor13.field_0)
    mem[228] = 0
    mem[292] = this.address
    mem[324] = 1756181673
    mem[260] = 160
    mem[356] = 2
    mem[388 len 0] = None
    require ext_code.size(stor6)
    call stor6.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args uint256(stor13.field_0), 0, 160, address(this.address), 1756181673, 2, mem[388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    require mem[192 len 4], Mask(224, 0, stor13.field_32) <= 4294967296
    require mem[192 len 4], Mask(224, 0, stor13.field_32) + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 0, stor13.field_32) + 192] <= 4294967296 and mem[192 len 4], Mask(224, 0, stor13.field_32) + (32 * mem[mem[192 len 4], Mask(224, 0, stor13.field_32) + 192]) + 32 <= return_data.size
}

function sub_2ee7c096(?) {
    require ext_code.size(stor5)
    staticcall stor5.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args target_token_address, stor2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor7)
    staticcall stor7.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args target_token_address, stor2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not address(ext_call.return_data[0]):
        if not ext_call.return_data[12 len 20]:
            revert with 0, 'np'
        uint256(stor12) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor12))
    else:
        stor11 = address(ext_call.return_data[0])
        if ext_call.return_data[12 len 20]:
            uint256(stor12) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor12))
    require ext_code.size(target_token_address)
    staticcall target_token_address.0x70a08231 with:
            gas gas_remaining wei
           args stor11
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor9 = ext_call.return_data[0]
    require ext_code.size(target_token_address)
    staticcall target_token_address.0x70a08231 with:
            gas gas_remaining wei
           args address(stor12)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor10 = ext_call.return_data[0]
    if stor9 < 1:
        revert with 0, 'np'
    if stor10 < 1:
        revert with 0, 'np'
    idx = 0
    while idx < 2:
        mem[96] = 0x29f5f2cd00000000000000000000000000000000000000000000000000000000
        require ext_code.size(this.address)
        call this.address.0x29f5f2cd with:
             gas gas_remaining wei
        if ext_call.success:
            idx = idx + 1
            continue 
        idx = 0
        while idx < 2:
            mem[96] = 0x208457db00000000000000000000000000000000000000000000000000000000
            require ext_code.size(this.address)
            call this.address.0x208457db with:
                 gas gas_remaining wei
            if not ext_call.success:
            idx = idx + 1
            continue 
    idx = 0
    while idx < 2:
        mem[96] = 0x208457db00000000000000000000000000000000000000000000000000000000
        require ext_code.size(this.address)
        call this.address.0x208457db with:
             gas gas_remaining wei
        if not ext_call.success:
        idx = idx + 1
        continue 
}

function sub_29f5f2cd(?) {
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 2
    mem[128] = stor3
    mem[160] = target_token_address
    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[196] = uint256(stor13.field_0)
    mem[228] = 0
    mem[292] = this.address
    mem[324] = 1756181673
    mem[260] = 160
    mem[356] = 2
    mem[388 len 0] = None
    require ext_code.size(stor4)
    call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args uint256(stor13.field_0), 0, 160, address(this.address), 1756181673, 2, mem[388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _40 = mem[192 len 4], Mask(224, 0, stor13.field_32)
    require mem[192 len 4], Mask(224, 0, stor13.field_32) <= 4294967296
    require mem[192 len 4], Mask(224, 0, stor13.field_32) + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 0, stor13.field_32) + 192] <= 4294967296 and mem[192 len 4], Mask(224, 0, stor13.field_32) + (32 * mem[mem[192 len 4], Mask(224, 0, stor13.field_32) + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 0, stor13.field_32) + 192]
    _43 = mem[_40 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_40 + 192])] = mem[_40 + 224 len floor32(mem[_40 + 192])]
    mem[(32 * _43) + ceil32(return_data.size) + 288] = stor3
    require ext_code.size(target_token_address)
    staticcall target_token_address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * _43) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _43) + ceil32(return_data.size) + 324] = ext_call.return_data[0]
    mem[(32 * _43) + ceil32(return_data.size) + 356] = 0
    mem[(32 * _43) + ceil32(return_data.size) + 420] = this.address
    mem[(32 * _43) + ceil32(return_data.size) + 452] = 1756181673
    mem[(32 * _43) + ceil32(return_data.size) + 388] = 160
    mem[(32 * _43) + ceil32(return_data.size) + 484] = 2
    mem[(32 * _43) + ceil32(return_data.size) + 516 len 0] = None
    require ext_code.size(stor6)
    call stor6.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), 1756181673, 2, mem[(32 * _43) + ceil32(return_data.size) + 516 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _43) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _43) + (2 * ceil32(return_data.size)) + 320
    require return_data.size >= 32
    require mem[(32 * _43) + ceil32(return_data.size) + 320 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[(32 * _43) + ceil32(return_data.size) + 320 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[(32 * _43) + ceil32(return_data.size) + 320 len 4], ext_call.return_data[0 len 28] + (32 * _43) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _43) + ceil32(return_data.size) + 320 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * _43) + ceil32(return_data.size) + 320 len 4], ext_call.return_data[0 len 28] + (32 * _43) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
}



}
