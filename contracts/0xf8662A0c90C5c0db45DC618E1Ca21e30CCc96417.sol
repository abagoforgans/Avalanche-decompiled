contract main {




// =====================  Runtime code  =====================


const getVersion = 'ERCTokenDeployer20210628'


address owner;
address nextOwner;
address minterAddress;
array of struct chain;

function minter() {
    return minterAddress
}

function nextOwner() {
    return nextOwner
}

function owner() {
    return owner
}

function chain() {
    return chain[0 len chain.length].field_0
}

function _fallback() payable {
    revert
}

function setNextOwner(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    nextOwner = arg1
}

function setMinter(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    minterAddress = arg1
}

function changeOwner() {
    require msg.sender == nextOwner
    emit OwnershipTransferred(owner, nextOwner);
    owner = nextOwner
    nextOwner = 0
}

function sub_1be58e4b(?) {
    require msg.sender == minterAddress
    mem[96] = chain.length
    mem[0] = 3
    mem[128] = uint256(chain.field_0)
    idx = 128
    s = 0
    while chain.length + 96 > idx:
        mem[idx + 32] = chain[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(chain.length) + 160] = 'Orbit Bridge '
    mem[ceil32(chain.length) + 173 len floor32(chain.length)] = mem[128 len floor32(chain.length)]
    mem[ceil32(chain.length) + floor32(chain.length) + 173] = mem[floor32(chain.length) + -chain.length % 32 + 160 len chain.length % 32] or Mask(8 * -chain.length % 32 + 32, -(8 * -chain.length % 32 + 32) + 256, mem[ceil32(chain.length) + floor32(chain.length) + 173])
    mem[chain.length + ceil32(chain.length) + 173] = ' NFT'
    mem[64] = chain.length + ceil32(chain.length) + 177
    mem[chain.length + ceil32(chain.length) + 177 len 10752] = code.data[9867 len 10752]
    mem[chain.length + ceil32(chain.length) + 10929] = owner
    mem[chain.length + ceil32(chain.length) + 10961] = minterAddress
    mem[chain.length + ceil32(chain.length) + 11057] = 0
    mem[chain.length + ceil32(chain.length) + 10993] = 160
    mem[chain.length + ceil32(chain.length) + 11089] = mem[ceil32(chain.length) + 128]
    mem[chain.length + ceil32(chain.length) + 11121 len ceil32(mem[ceil32(chain.length) + 128])] = mem[ceil32(chain.length) + 160 len ceil32(mem[ceil32(chain.length) + 128])]
    if not mem[ceil32(chain.length) + 128] % 32:
        create contract with 0 wei
                        code: code.data[9867 len 10752], owner, minterAddress, 160, mem[ceil32(chain.length) + 128] + 192, 0, mem[chain.length + ceil32(chain.length) + 11089 len mem[ceil32(chain.length) + 128] + 32], 3, 'OBN'
    else:
        mem[floor32(mem[ceil32(chain.length) + 128]) + chain.length + ceil32(chain.length) + 11121] = mem[floor32(mem[ceil32(chain.length) + 128]) + chain.length + ceil32(chain.length) + -(mem[ceil32(chain.length) + 128] % 32) + 11153 len mem[ceil32(chain.length) + 128] % 32]
        create contract with 0 wei
                        code: code.data[9867 len 10752], owner, minterAddress, 160, floor32(mem[ceil32(chain.length) + 128]) + 224, 0, mem[chain.length + ceil32(chain.length) + 11089 len floor32(mem[ceil32(chain.length) + 128]) + 64], 3, 'OBN'
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    return address(create.new_address)
}

function sub_15f09de1(?) {
    require calldata.size - 4 >= 32
    require msg.sender == minterAddress
    mem[96] = chain.length
    mem[0] = 3
    mem[128] = uint256(chain.field_0)
    idx = 128
    s = 0
    while chain.length + 96 > idx:
        mem[idx + 32] = chain[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(chain.length) + 160] = 'Orbit Bridge '
    mem[ceil32(chain.length) + 173 len floor32(chain.length)] = mem[128 len floor32(chain.length)]
    mem[ceil32(chain.length) + floor32(chain.length) + 173] = mem[floor32(chain.length) + -chain.length % 32 + 160 len chain.length % 32] or Mask(8 * -chain.length % 32 + 32, -(8 * -chain.length % 32 + 32) + 256, mem[ceil32(chain.length) + floor32(chain.length) + 173])
    mem[chain.length + ceil32(chain.length) + 173] = ' Token'
    mem[64] = chain.length + ceil32(chain.length) + 179
    mem[chain.length + ceil32(chain.length) + 179 len 5999] = code.data[3868 len 5999]
    mem[chain.length + ceil32(chain.length) + 6178] = owner
    mem[chain.length + ceil32(chain.length) + 6210] = minterAddress
    mem[chain.length + ceil32(chain.length) + 6306] = arg1
    mem[chain.length + ceil32(chain.length) + 6338] = 0
    mem[chain.length + ceil32(chain.length) + 6242] = 192
    mem[chain.length + ceil32(chain.length) + 6370] = mem[ceil32(chain.length) + 128]
    mem[chain.length + ceil32(chain.length) + 6402 len ceil32(mem[ceil32(chain.length) + 128])] = mem[ceil32(chain.length) + 160 len ceil32(mem[ceil32(chain.length) + 128])]
    if not mem[ceil32(chain.length) + 128] % 32:
        create contract with 0 wei
                        code: code.data[3868 len 5999], owner, minterAddress, 192, mem[ceil32(chain.length) + 128] + 224, arg1 << 248, 0, mem[chain.length + ceil32(chain.length) + 6370 len mem[ceil32(chain.length) + 128] + 32], 3, 'OBT'
    else:
        mem[floor32(mem[ceil32(chain.length) + 128]) + chain.length + ceil32(chain.length) + 6402] = mem[floor32(mem[ceil32(chain.length) + 128]) + chain.length + ceil32(chain.length) + -(mem[ceil32(chain.length) + 128] % 32) + 6434 len mem[ceil32(chain.length) + 128] % 32]
        create contract with 0 wei
                        code: code.data[3868 len 5999], owner, minterAddress, 192, floor32(mem[ceil32(chain.length) + 128]) + 256, arg1 << 248, 0, mem[chain.length + ceil32(chain.length) + 6370 len floor32(mem[ceil32(chain.length) + 128]) + 64], 3, 'OBT'
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    return address(create.new_address)
}

function sub_47d66fe8(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + 160
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    require msg.sender == minterAddress
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len 10752] = code.data[9867 len 10752]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 10912] = owner
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 10944] = minterAddress
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 11040] = 1
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 10976] = 160
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 11072] = arg1.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 11104 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 11008] = arg1.length + 192
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 11104] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 11136 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
            create contract with 0 wei
                            code: mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + arg1.length + 10976]
        else:
            mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 11136] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 11168 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
            create contract with 0 wei
                            code: mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + 11008]
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 11104] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 11136 len arg1.length % 32]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 11008] = floor32(arg1.length) + 224
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 11136] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 11168 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
            create contract with 0 wei
                            code: mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + floor32(arg1.length) + 11008]
        else:
            mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 11168] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 11200 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
            create contract with 0 wei
                            code: mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + 11040]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = address(create.new_address)
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), 
           mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]
}

function sub_50e8d148(?) {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + 160
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    require msg.sender == minterAddress
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len 5999] = code.data[3868 len 5999]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 6159] = owner
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 6191] = minterAddress
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 6287] = arg3
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 6319] = 1
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 6223] = 192
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 6351] = arg1.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 6383 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 6255] = arg1.length + 224
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 6383] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 6415 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
            create contract with 0 wei
                            code: mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + arg1.length + 6255]
        else:
            mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 6415] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 6447 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
            create contract with 0 wei
                            code: mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + 6287]
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 6383] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 6415 len arg1.length % 32]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 6255] = floor32(arg1.length) + 256
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 6415] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 6447 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
            create contract with 0 wei
                            code: mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + floor32(arg1.length) + 6287]
        else:
            mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 6447] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 6479 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
            create contract with 0 wei
                            code: mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + 6319]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = address(create.new_address)
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), 
           mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]
}



}
