contract main {




// =====================  Runtime code  =====================


const VERSION = '', 0


array of struct stor0;

function _fallback() payable {
    revert
}

function computeAddress(bytes32 arg1, bytes32 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 == arg3
    return address(sha3(0, this.address, sha3(arg1, 0x27fd0863a54f729686099446389b11108e6e34e7364d1f8e38a43e1661a07f3a, arg3), arg2))
}

function sub_76a63c11(?) payable {
    require calldata.size - 4 >= 128
    require arg2 == address(arg2)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    mem[288 len arg3.length] = arg3[all]
    mem[arg3.length + 288] = 0
    mem[ceil32(arg3.length) + 320] = 0xff00000000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 321] = address(this.address)
    mem[ceil32(arg3.length) + 341] = sha3(arg1, 0xddafcd8600839ce553cacb17e362c83ea42ccfd1e8c8b3cb4d075124196dfc0, address(arg2), 128, arg3.length, arg3[all], mem[arg3.length + 288 len ceil32(arg3.length) - arg3.length])
    mem[ceil32(arg3.length) + 373] = arg4
    mem[ceil32(arg3.length) + 288] = 85
    mem[ceil32(arg3.length) + 405] = address(sha3(mem[ceil32(arg3.length) + 320 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 320 len -arg3.length + ceil32(arg3.length)]]))
    return memory
      from ceil32(arg3.length) + 405
       len 32
}

function deploy(bytes32 arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if eth.balance(this.address) < 0:
        revert with 0, 'Create2: insufficient balance'
    if not arg2.length:
        revert with 0, 'Create2: bytecode length is zero'
    create2 contract with 0 wei
                    salt: sha3(arg1, 0x27fd0863a54f729686099446389b11108e6e34e7364d1f8e38a43e1661a07f3a, msg.sender)
                    code: arg2[all]
    if not address(create2.new_address):
        revert with 0, 'Create2: Failed on deploy'
    mem[ceil32(arg2.length) + 256] = address(create2.new_address)
    emit Deployed(address arg1):
                  Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0),
                  mem[arg2.length + 288 len -arg2.length + ceil32(arg2.length)],
    mem[ceil32(arg2.length) + 256] = address(create2.new_address)
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 288 len -arg2.length + ceil32(arg2.length)]
}

function initData() payable {
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
        if bool(stor0.length):
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 0, 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 0, 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
        if ceil32(stor0.length.field_1) > stor0.length.field_1:
            mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
        revert with 0, 34
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    else:
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
    if ceil32(stor0.length.field_1) > stor0.length.field_1:
        mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
}

function sub_92633f40(?) payable {
    require calldata.size - 4 >= 128
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + ('cd', 68).length + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + ('cd', 100).length + 36 <= calldata.size
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
        if not ('cd', 68).length:
            stor0.length = 0
            idx = 0
            while stor0.length.field_1 + 31 / 32 > idx:
                stor0[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor0.length = (2 * ('cd', 68).length) + 1
            s = 0
            idx = cd[68] + 36
            while cd[68] + ('cd', 68).length + 36 > idx:
                stor0[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 68).length + 31) >> 5
            while stor0.length.field_1 + 31 / 32 > idx:
                stor0[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
        if not ('cd', 68).length:
            stor0.length = 0
            idx = 0
            while stor0.length.field_1 + 31 / 32 > idx:
                stor0[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor0.length = (2 * ('cd', 68).length) + 1
            s = 0
            idx = cd[68] + 36
            while cd[68] + ('cd', 68).length + 36 > idx:
                stor0[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 68).length + 31) >> 5
            while stor0.length.field_1 + 31 / 32 > idx:
                stor0[idx].field_0 = 0
                idx = idx + 1
                continue 
    mem[288 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
    mem[('cd', 68).length + 288] = 0
    if eth.balance(this.address) < 0:
        revert with 0, 'Create2: insufficient balance'
    if not ('cd', 100).length:
        revert with 0, 'Create2: bytecode length is zero'
    create2 contract with 0 wei
                    salt: sha3(cd[4], 0xddafcd8600839ce553cacb17e362c83ea42ccfd1e8c8b3cb4d075124196dfc0, address(cd[36]), 128, ('cd', 68).length, call.data[cd[68] + 36 len ('cd', 68).length], mem[('cd', 68).length + 288 len ceil32(('cd', 68).length) - ('cd', 68).length])
                    code: call.data[cd[100] + 36 len ('cd', 100).length]
    if not address(create2.new_address):
        revert with 0, 'Create2: Failed on deploy'
    if not address(cd[36]):
        mem[ceil32(('cd', 68).length) + ceil32(('cd', 100).length) + 320] = address(create2.new_address)
        mem[ceil32(('cd', 68).length) + ceil32(('cd', 100).length) + 352] = address(cd[36])
        emit DeployedWithData(Mask(8 * -ceil32(('cd', 100).length) + ('cd', 100).length + 32, 0, 0), mem[ceil32(('cd', 68).length) + ('cd', 100).length + 352 len -('cd', 100).length + ceil32(('cd', 100).length) + 32]);
        if bool(stor0.length):
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 0, 34
            stor0.length = 0
            if 31 < stor0.length.field_1:
                idx = 0
                while stor0.length.field_1 + 31 / 32 > idx:
                    stor0[idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 0, 34
            stor0.length = 0
            if 31 < stor0.length.field_1:
                idx = 0
                while stor0.length.field_1 + 31 / 32 > idx:
                    stor0[idx].field_0 = 0
                    idx = idx + 1
                    continue 
        mem[ceil32(('cd', 68).length) + ceil32(('cd', 100).length) + 320] = address(create2.new_address)
        return Mask(8 * -ceil32(('cd', 100).length) + ('cd', 100).length + 32, 0, 0), 
               mem[ceil32(('cd', 68).length) + ('cd', 100).length + 352 len -('cd', 100).length + ceil32(('cd', 100).length)]
    require ext_code.size(address(create2.new_address))
    call address(create2.new_address).0xf2fde38b with:
         gas gas_remaining wei
        args address(cd[36])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit DeployedWithData(address arg1, address arg2):
                          0,
                          uint128(create2.new_address) << 96,
                          address(cd[36]),
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
        stor0.length = 0
        if 31 < stor0.length.field_1:
            idx = 0
            while stor0.length.field_1 + 31 / 32 > idx:
                stor0[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
        stor0.length = 0
        if 31 < stor0.length.field_1:
            idx = 0
            while stor0.length.field_1 + 31 / 32 > idx:
                stor0[idx].field_0 = 0
                idx = idx + 1
                continue 
    return 0, uint128(create2.new_address) << 96
}



}
