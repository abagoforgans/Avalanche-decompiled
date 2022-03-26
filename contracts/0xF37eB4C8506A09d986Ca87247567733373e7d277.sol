contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of address nFTGemPool;
array of address allNFTGemPools;

function allNFTGemPools(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < allNFTGemPools.length
    return allNFTGemPools[arg1]
}

function allNFTGemPoolsLength() payable {
    return allNFTGemPools.length
}

function getNFTGemPool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return nFTGemPool[arg1]
}

function isController(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor0[address(arg1)])
}

function _fallback() payable {
    revert
}

function relinquishControl() payable {
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 40, code.data[19393 len 40], mem[204 len 24]
}

function addController(address arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 40, code.data[19393 len 40], mem[204 len 24]
    stor0[address(arg1)] = 1
}

function sub_4ff8f07e(?) payable {
    require calldata.size - 4 >= 256
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    if 1 == bool(stor0[msg.sender]):
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 192] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 192] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], Mask(8 * -(arg1.length % 32) + 32, -(8 * -(arg1.length % 32) + 32) + 256, 0) << (8 * -(arg1.length % 32) + 32) - 256 and !(256^(-(arg1.length % 32) + 32) - 1)
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg1.length
        _304 = sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]])
        mem[0] = sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]])
        mem[32] = 2
        if nFTGemPool[mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]]]:
            revert with 0, 'GEMPOOL_EXISTS'
        if not arg3:
            revert with 0, 'INVALID_PRICE'
        if not arg4:
            revert with 0, 'INVALID_MIN_TIME'
        if not arg6:
            revert with 0, 'INVALID_DIFFICULTY_STEP'
        mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 224 len 16070] = code.data[3323 len 16070]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 192] = 16070
        mem[64] = floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325)
        if eth.balance(this.address) < 0:
            revert with 0, 'Create2: insufficient balance'
        create2 contract with 0 wei
                        salt: _304
                        code: code.data[3323 len 16070]
        if not address(create2.new_address):
            revert with 0, 'Create2: Failed on deploy'
        mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325)] = 0xd9a3f9bb00000000000000000000000000000000000000000000000000000000
        mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + 68] = arg3
        mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + 100] = arg4
        mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + 132] = arg5
        mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + 164] = arg6
        mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + 196] = arg7
        mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + 228] = arg8
        mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + 4] = 256
        mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + 260] = arg1.length
        mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + 292 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        if not arg1.length % 32:
            mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + 36] = arg1.length + 288
            mem[arg1.length + floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + 292] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
            mem[arg1.length + floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + 324 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
            if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
                require ext_code.size(address(create2.new_address))
                call address(create2.new_address).0xd9a3f9bb with:
                     gas gas_remaining wei
                    args mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + 4 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + arg1.length + 320]
            else:
                mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + 324] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 356 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
                require ext_code.size(address(create2.new_address))
                call address(create2.new_address).0xd9a3f9bb with:
                     gas gas_remaining wei
                    args mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + 4 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + 352]
        else:
            mem[floor32(arg1.length) + floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + 292] = mem[floor32(arg1.length) + floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + -(arg1.length % 32) + 324 len arg1.length % 32]
            mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + 36] = floor32(arg1.length) + 320
            mem[floor32(arg1.length) + floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + 324] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
            mem[floor32(arg1.length) + floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + 356 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
            if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
                require ext_code.size(address(create2.new_address))
                call address(create2.new_address).0xd9a3f9bb with:
                     gas gas_remaining wei
                    args mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + 4 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + floor32(arg1.length) + 352]
            else:
                mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + 356] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 388 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
                require ext_code.size(address(create2.new_address))
                call address(create2.new_address).0xd9a3f9bb with:
                     gas gas_remaining wei
                    args mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + 4 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + 384]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[32] = 2
        nFTGemPool[_304] = address(create2.new_address)
    else:
        if this.address != msg.sender:
            revert with 0, 32, 40, code.data[19393 len 40], mem[ceil32(arg1.length) + ceil32(arg2.length) + 268 len 24]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 192] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 192] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], Mask(8 * -(arg1.length % 32) + 32, -(8 * -(arg1.length % 32) + 32) + 256, 0) << (8 * -(arg1.length % 32) + 32) - 256 and !(256^(-(arg1.length % 32) + 32) - 1)
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg1.length
        _311 = sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]])
        mem[0] = sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]])
        mem[32] = 2
        if nFTGemPool[mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]]]:
            revert with 0, 'GEMPOOL_EXISTS'
        if not arg3:
            revert with 0, 'INVALID_PRICE'
        if not arg4:
            revert with 0, 'INVALID_MIN_TIME'
        if not arg6:
            revert with 0, 'INVALID_DIFFICULTY_STEP'
        mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 224 len 16070] = code.data[3323 len 16070]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 192] = 16070
        mem[64] = floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325)
        if eth.balance(this.address) < 0:
            revert with 0, 'Create2: insufficient balance'
        create2 contract with 0 wei
                        salt: _311
                        code: code.data[3323 len 16070]
        if not address(create2.new_address):
            revert with 0, 'Create2: Failed on deploy'
        mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325)] = 0xd9a3f9bb00000000000000000000000000000000000000000000000000000000
        mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + 68] = arg3
        mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + 100] = arg4
        mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + 132] = arg5
        mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + 164] = arg6
        mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + 196] = arg7
        mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + 228] = arg8
        mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + 4] = 256
        mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + 260] = arg1.length
        mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + 292 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        if not arg1.length % 32:
            mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + 36] = arg1.length + 288
            mem[arg1.length + floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + 292] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
            mem[arg1.length + floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + 324 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
            if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
                require ext_code.size(address(create2.new_address))
                call address(create2.new_address).0xd9a3f9bb with:
                     gas gas_remaining wei
                    args mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + 4 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + arg1.length + 320]
            else:
                mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + 324] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 356 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
                require ext_code.size(address(create2.new_address))
                call address(create2.new_address).0xd9a3f9bb with:
                     gas gas_remaining wei
                    args mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + 4 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + 352]
        else:
            mem[floor32(arg1.length) + floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + 292] = mem[floor32(arg1.length) + floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + -(arg1.length % 32) + 324 len arg1.length % 32]
            mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + 36] = floor32(arg1.length) + 320
            mem[floor32(arg1.length) + floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + 324] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
            mem[floor32(arg1.length) + floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + 356 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
            if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
                require ext_code.size(address(create2.new_address))
                call address(create2.new_address).0xd9a3f9bb with:
                     gas gas_remaining wei
                    args mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + 4 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + floor32(arg1.length) + 352]
            else:
                mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + 356] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 388 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
                require ext_code.size(address(create2.new_address))
                call address(create2.new_address).0xd9a3f9bb with:
                     gas gas_remaining wei
                    args mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + 4 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + 384]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[32] = 2
        nFTGemPool[_311] = address(create2.new_address)
    allNFTGemPools.length++
    mem[0] = 3
    allNFTGemPools[allNFTGemPools.length] = address(create2.new_address)
    mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + 64] = arg3
    mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + 96] = arg4
    mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + 128] = arg5
    mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + 160] = arg6
    mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + 192] = arg7
    mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + 224] = arg8
    mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325)] = 256
    mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + 256] = arg1.length
    mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + 288 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + 32] = arg1.length + 288
        mem[arg1.length + floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + 288] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[arg1.length + floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + 320 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
            emit NFTGemPoolCreated(string rg1, string rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, uint256 rg7, address rg8):
                                   mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + arg1.length + 320],
        else:
            mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + 320] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 352 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
            emit NFTGemPoolCreated(string rg1, string rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, uint256 rg7, address rg8):
                                   mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + 352],
    else:
        mem[floor32(arg1.length) + floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + 288] = mem[floor32(arg1.length) + floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + -(arg1.length % 32) + 320 len arg1.length % 32]
        mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + 32] = floor32(arg1.length) + 320
        mem[floor32(arg1.length) + floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + 320] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[floor32(arg1.length) + floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + 352 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
            emit NFTGemPoolCreated(string rg1, string rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, uint256 rg7, address rg8):
                                   mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + floor32(arg1.length) + 352],
        else:
            mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + 352] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 384 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
            emit NFTGemPoolCreated(string rg1, string rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, uint256 rg7, address rg8):
                                   mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 16325) len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + 384],
    return address(create2.new_address)
}



}
