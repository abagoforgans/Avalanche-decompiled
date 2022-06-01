contract main {




// =====================  Runtime code  =====================


const sub_458fd396(?) = eth.balance(this.address)


address stor0;
address stor1;
address stor2;
address stor4;
address stor5;
address stor6;
address stor7;
array of struct sub_4359ab5f;
address sub_ffc0d003Address;

function sub_4359ab5f(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_4359ab5f.length
    return sub_4359ab5f[arg1].field_0
}

function sub_ffc0d003(?) {
    return sub_ffc0d003Address
}

function sub_a3f9a085(?) {
  stop
}

function _fallback() payable {
  stop
}

function wrap() {
    require ext_code.size(stor6)
    call stor6.deposit() with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c204af93(?) {
    require ext_code.size(stor7)
    staticcall stor7.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getFactoryAddress() {
    require ext_code.size(sub_ffc0d003Address)
    staticcall sub_ffc0d003Address.0x3d82497e with:
            gas gas_remaining wei
           args stor0, stor1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function sub_eaa7c891(?) {
    require ext_code.size(stor7)
    staticcall stor7.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor7)
    call stor7.0xa9059cbb with:
         gas gas_remaining wei
        args 0x8c62b2235a5d4b0c1e730e8639b2216bed852f66, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function unwrap() {
    require ext_code.size(stor7)
    staticcall stor7.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor6)
    call stor6.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call this.address with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function sub_18bab15d(?) {
    require ext_code.size(sub_ffc0d003Address)
    staticcall sub_ffc0d003Address.0x3d82497e with:
            gas gas_remaining wei
           args stor0, stor1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 1
    mem[128] = address(ext_call.return_data[0])
    mem[160] = 0x9e269b6800000000000000000000000000000000000000000000000000000000
    mem[164] = eth.balance(this.address)
    mem[196] = 96
    mem[260] = 1
    mem[292 len 0] = None
    mem[228] = 160
    mem[324] = sub_4359ab5f.length
    if not sub_4359ab5f.length:
        require ext_code.size(stor5)
        staticcall stor5.0x9e269b68 with:
                gas gas_remaining wei
               args eth.balance(this.address), 96, 160, 1, mem[292], sub_4359ab5f.length
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 160
        require return_data.size >= 32
        _28 = mem[160 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
        require mem[160 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= 4294967296
        require mem[160 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 32 <= return_data.size
        require mem[mem[160 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 160] <= 4294967296 and mem[160 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + (32 * mem[mem[160 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 160]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 160] = mem[mem[160 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 160]
        _31 = mem[_28 + 160]
        mem[ceil32(return_data.size) + 192 len floor32(mem[_28 + 160])] = mem[_28 + 192 len floor32(mem[_28 + 160])]
        mem[(32 * _31) + ceil32(return_data.size) + 192] = 32
        mem[(32 * _31) + ceil32(return_data.size) + 224] = mem[ceil32(return_data.size) + 160]
        mem[(32 * _31) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
        return 32, mem[(32 * _31) + ceil32(return_data.size) + 224 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
    mem[0] = 8
    mem[356] = address(sub_4359ab5f.field_0)
    idx = 356
    s = 0
    while (32 * sub_4359ab5f.length) + 356 > idx + 32:
        mem[idx + 32] = sub_4359ab5f[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require ext_code.size(stor5)
    staticcall stor5.0x9e269b68 with:
            gas gas_remaining wei
           args eth.balance(this.address), 96, 160, 1, mem[292], sub_4359ab5f.length, mem[356 len 32 * sub_4359ab5f.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 160
    require return_data.size >= 32
    _48 = mem[160 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
    require mem[160 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= 4294967296
    require mem[160 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 32 <= return_data.size
    require mem[mem[160 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 160] <= 4294967296 and mem[160 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + (32 * mem[mem[160 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 160]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 160] = mem[mem[160 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 160]
    _51 = mem[_48 + 160]
    mem[ceil32(return_data.size) + 192 len floor32(mem[_48 + 160])] = mem[_48 + 192 len floor32(mem[_48 + 160])]
    mem[(32 * _51) + ceil32(return_data.size) + 192] = 32
    mem[(32 * _51) + ceil32(return_data.size) + 224] = mem[ceil32(return_data.size) + 160]
    mem[(32 * _51) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
    return 32, mem[(32 * _51) + ceil32(return_data.size) + 224 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
}

function sub_07305f2e(?) {
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 2
    mem[128] = stor1
    mem[160] = stor6
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = ext_call.return_data[0]
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(stor4)
    staticcall stor4.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _47 = mem[192 len 4], ext_call.return_data[0 len 28]
    require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
    _50 = mem[_47 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_47 + 192])] = mem[_47 + 224 len floor32(mem[_47 + 192])]
    mem[(32 * _50) + ceil32(return_data.size) + 228] = this.address
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(32 * _50) + ceil32(return_data.size) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 < mem[ceil32(return_data.size) + 192]
    _75 = mem[ceil32(return_data.size) + 256]
    mem[(32 * _50) + ceil32(return_data.size) + 224] = 0x676528d100000000000000000000000000000000000000000000000000000000
    mem[(32 * _50) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
    mem[(32 * _50) + ceil32(return_data.size) + 260] = _75
    mem[(32 * _50) + ceil32(return_data.size) + 324] = this.address
    mem[(32 * _50) + ceil32(return_data.size) + 356] = block.timestamp
    mem[(32 * _50) + ceil32(return_data.size) + 292] = 160
    mem[(32 * _50) + ceil32(return_data.size) + 388] = 2
    mem[(32 * _50) + ceil32(return_data.size) + 420 len 0] = None
    require ext_code.size(stor4)
    call stor4.swapExactTokensForAVAX(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], _75, Array(len=2, data=mem[(32 * _50) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _50) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _50) + (2 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    require mem[(32 * _50) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[(32 * _50) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[(32 * _50) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * _50) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _50) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * _50) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * _50) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
}



}
