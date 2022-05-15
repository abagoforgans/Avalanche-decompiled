contract main {




// =====================  Runtime code  =====================


address owner;
address minterAddress;

function minter() {
    return minterAddress
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function setupMinter(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 34, code.data[7306 len 34], mem[198 len 30]
    minterAddress = arg1
}

function sub_270314d3(?) {
    require calldata.size - 4 >= 160
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + 160
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 192] = arg3 << 248
    _23 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 193 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 193] = mem[ceil32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 192 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32) + 256, mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 193])
    mem[_23 + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 193] = arg4 << 248
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = _23 + arg1.length + 2
    return address(sha3(0, this.address, sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]]), arg5))
}

function sub_d98eea60(?) {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + 160
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    if owner != msg.sender:
        revert with 0, 32, 34, code.data[7306 len 34], mem[ceil32(arg1.length) + ceil32(arg2.length) + 262 len 30]
    if not minterAddress:
        revert with 0, 'ERROR: Zero address'
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 192] = arg3 << 248
    _55 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 193 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 193] = mem[ceil32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 192 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32) + 256, mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 193])
    mem[_55 + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 193] = arg4 << 248
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = _55 + arg1.length + 2
    _101 = sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]])
    mem[_55 + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 226 len 4787] = code.data[2519 len 4787]
    mem[_55 + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 194] = 4787
    mem[64] = floor32(_55 + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 5044)
    if eth.balance(this.address) < 0:
        revert with 0, 'Create2: insufficient balance'
    create2 contract with 0 wei
                    salt: _101
                    code: code.data[2519 len 4787]
    if not address(create2.new_address):
        revert with 0, 'Create2: Failed on deploy'
    mem[floor32(_55 + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 5044)] = 0xde7ea79d00000000000000000000000000000000000000000000000000000000
    mem[floor32(_55 + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 5044) + 68] = arg3
    mem[floor32(_55 + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 5044) + 100] = minterAddress
    mem[floor32(_55 + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 5044) + 4] = 128
    mem[floor32(_55 + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 5044) + 132] = arg1.length
    mem[floor32(_55 + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 5044) + 164 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        mem[floor32(_55 + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 5044) + 36] = arg1.length + 160
        mem[arg1.length + floor32(_55 + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 5044) + 164] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[arg1.length + floor32(_55 + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 5044) + 196 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
            require ext_code.size(address(create2.new_address))
            call address(create2.new_address).initialize(string arg1, string arg2, uint8 arg3, address arg4) with:
                 gas gas_remaining wei
                args mem[floor32(_55 + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 5044) + 4 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + arg1.length + 192]
        else:
            mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + floor32(_55 + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 5044) + 196] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + floor32(_55 + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 5044) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 228 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
            require ext_code.size(address(create2.new_address))
            call address(create2.new_address).initialize(string arg1, string arg2, uint8 arg3, address arg4) with:
                 gas gas_remaining wei
                args mem[floor32(_55 + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 5044) + 4 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + 224]
    else:
        mem[floor32(arg1.length) + floor32(_55 + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 5044) + 164] = mem[floor32(arg1.length) + floor32(_55 + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 5044) + -(arg1.length % 32) + 196 len arg1.length % 32]
        mem[floor32(_55 + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 5044) + 36] = floor32(arg1.length) + 192
        mem[floor32(arg1.length) + floor32(_55 + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 5044) + 196] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[floor32(arg1.length) + floor32(_55 + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 5044) + 228 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
            require ext_code.size(address(create2.new_address))
            call address(create2.new_address).initialize(string arg1, string arg2, uint8 arg3, address arg4) with:
                 gas gas_remaining wei
                args mem[floor32(_55 + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 5044) + 4 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + floor32(arg1.length) + 224]
        else:
            mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + floor32(_55 + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 5044) + 228] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + floor32(_55 + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 5044) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 260 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
            require ext_code.size(address(create2.new_address))
            call address(create2.new_address).initialize(string arg1, string arg2, uint8 arg3, address arg4) with:
                 gas gas_remaining wei
                args mem[floor32(_55 + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 5044) + 4 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + 256]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Deployed(address(create2.new_address), arg4);
}



}
