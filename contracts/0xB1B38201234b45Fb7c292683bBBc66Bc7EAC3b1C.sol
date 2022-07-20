contract main {




// =====================  Runtime code  =====================


address owner;
mapping of address sub_5e7ffa67;
uint256 fee;
address treasuryAddress;

function sub_5e7ffa67(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    return sub_5e7ffa67[arg1[all]]
}

function owner() {
    return owner
}

function treasuryAddress() {
    return treasuryAddress
}

function fee() {
    return fee
}

function _fallback() payable {
    revert
}

function setFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    fee = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setTreasuryAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    treasuryAddress = arg1
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

function withdraw(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) < arg2:
        revert with 0, 'EmbrCheckout: Not enough ETH'
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'EmbrCheckout: Tranfer Failed!'
}

function sub_6ec91666(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 1
    stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = address(arg2)
}

function sub_dcfe1331(?) payable {
    require calldata.size - 4 >= 192
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == address(cd[68])
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(('cd', 132).length)) + 97 < 96 or ceil32(ceil32(('cd', 132).length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 132).length
    require cd[132] + ('cd', 132).length + 36 <= calldata.size
    mem[128 len ('cd', 132).length] = call.data[cd[132] + 36 len ('cd', 132).length]
    mem[('cd', 132).length + 128] = 0
    require cd[164] == bool(cd[164])
    mem[ceil32(ceil32(('cd', 132).length)) + 97 len ceil32(('cd', 132).length)] = call.data[cd[132] + 36 len ('cd', 132).length], mem[('cd', 132).length + 128 len ceil32(('cd', 132).length) - ('cd', 132).length]
    mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 97] = 1
    if not stor[sha3(mem[ceil32(ceil32(('cd', 132).length)) + 97 len ('cd', 132).length + 32])]:
        revert with 0, 'EmbrCheckout: DEX is not supported by us!'
    if msg.value and fee > -1 / msg.value:
        revert with 0, 17
    if msg.value < msg.value * fee / 10000:
        revert with 0, 17
    if 10000 < fee:
        revert with 0, 17
    if cd[4] and -fee + 10000 > -1 / cd[4]:
        revert with 0, 17
    mem[ceil32(ceil32(('cd', 132).length)) + 129] = 'traderjoe' << 184
    mem[ceil32(ceil32(('cd', 132).length)) + 97] = 9
    mem[ceil32(ceil32(('cd', 132).length)) + 170 len ceil32(('cd', 132).length)] = call.data[cd[132] + 36 len ('cd', 132).length], Mask(8 * ceil32(('cd', 132).length) - ('cd', 132).length, -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256, 9) >> -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256
    if ceil32(('cd', 132).length) <= ('cd', 132).length:
        if ceil32(('cd', 132).length) <= ('cd', 132).length:
            mem[ceil32(ceil32(('cd', 132).length)) + 138] = ('cd', 132).length
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len ceil32(('cd', 132).length)] = call.data[cd[132] + 36 len ('cd', 132).length], Mask(8 * ceil32(('cd', 132).length) - ('cd', 132).length, -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256, 9) >> -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256
            mem[(2 * ('cd', 132).length) + ceil32(ceil32(('cd', 132).length)) + 170] = 1
            if sha3(Mask(8 * ('cd', 132).length, -(8 * ('cd', 132).length) + 256, call.data[cd[132] + 36 len ('cd', 132).length], Mask(8 * ceil32(('cd', 132).length) - ('cd', 132).length, -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256, 9) >> -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256) << (8 * ('cd', 132).length) - 256) != sha3('traderjoe'):
                if cd[164]:
                    if ceil32(('cd', 132).length) <= ('cd', 132).length:
                        _1163 = sha3(Mask(8 * ceil32(('cd', 132).length), -(8 * ceil32(('cd', 132).length)) + 256, call.data[cd[132] + 36 len ('cd', 132).length], Mask(8 * ceil32(('cd', 132).length) - ('cd', 132).length, -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256, 9) >> -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256) << (8 * ceil32(('cd', 132).length)) - 256, mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(('cd', 132).length) + 170 len ('cd', 132).length + -ceil32(('cd', 132).length) + 32])
                        mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 206] = 128
                        mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 302] = ('cd', 36).length
                        idx = 0
                        s = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334
                        t = cd[36] + 36
                        while idx < ('cd', 36).length:
                            require cd[t] == address(cd[t])
                            mem[s] = address(cd[t])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 238] = address(cd[68])
                        mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 270] = cd[100]
                        require ext_code.size(stor[_1163])
                        call stor[_1163].swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value msg.value - (msg.value * fee / 10000) wei
                             gas gas_remaining wei
                            args (10000 * cd[4]) - (fee * cd[4]) / 10000, Array(len=('cd', 36).length, data=mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
                    else:
                        _1195 = sha3(Mask(8 * ceil32(('cd', 132).length), -(8 * ceil32(('cd', 132).length)) + 256, call.data[cd[132] + 36 len ('cd', 132).length], Mask(8 * ceil32(('cd', 132).length) - ('cd', 132).length, -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256, 9) >> -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256) << (8 * ceil32(('cd', 132).length)) - 256, mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(('cd', 132).length) + 170 len ('cd', 132).length + -ceil32(('cd', 132).length) + 32])
                        mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 206] = 128
                        mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 302] = ('cd', 36).length
                        idx = 0
                        s = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334
                        t = cd[36] + 36
                        while idx < ('cd', 36).length:
                            require cd[t] == address(cd[t])
                            mem[s] = address(cd[t])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 238] = address(cd[68])
                        mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 270] = cd[100]
                        require ext_code.size(stor[_1195])
                        call stor[_1195].swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value msg.value - (msg.value * fee / 10000) wei
                             gas gas_remaining wei
                            args (10000 * cd[4]) - (fee * cd[4]) / 10000, Array(len=('cd', 36).length, data=mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170] = 32
                    mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 202] = ('cd', 132).length
                    mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 234 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len ('cd', 132).length], mem[('cd', 132).length + 128 len 31 * ('cd', 132).length]
                    return memory
                      from ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170
                       len (32 * ('cd', 132).length) + 64
                if ceil32(('cd', 132).length) <= ('cd', 132).length:
                    _1161 = sha3(Mask(8 * ceil32(('cd', 132).length), -(8 * ceil32(('cd', 132).length)) + 256, call.data[cd[132] + 36 len ('cd', 132).length], Mask(8 * ceil32(('cd', 132).length) - ('cd', 132).length, -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256, 9) >> -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256) << (8 * ceil32(('cd', 132).length)) - 256, mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(('cd', 132).length) + 170 len ('cd', 132).length + -ceil32(('cd', 132).length) + 32])
                    mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 174] = (10000 * cd[4]) - (fee * cd[4]) / 10000
                    mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 206] = 128
                    mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 302] = ('cd', 36).length
                    idx = 0
                    s = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334
                    t = cd[36] + 36
                    while idx < ('cd', 36).length:
                        require cd[t] == address(cd[t])
                        mem[s] = address(cd[t])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 238] = address(cd[68])
                    mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 270] = cd[100]
                    call stor[_1161].swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value msg.value - (msg.value * fee / 10000) wei
                         gas gas_remaining wei
                        args (10000 * cd[4]) - (fee * cd[4]) / 10000, Array(len=('cd', 36).length, data=mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 170
                    require return_data.size >= 32
                    _1512 = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32
                    require mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 <= test266151307()
                    require ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 201 < ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + return_data.size + 170
                    _1528 = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]
                    if mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]) + 1 < 0 or ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + ceil32(32 * mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]) + 171 > test266151307():
                        revert with 0, 65
                    mem[64] = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + ceil32(32 * mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]) + 171
                    mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 170] = _1528
                    require _1512 + (32 * _1528) + 32 <= return_data.size
                    mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 202 len ceil32(32 * _1528)] = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + _1512 + 202 len ceil32(32 * _1528)]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _1528
                    mem[mem[64] + 64 len 32 * _1528] = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 202 len 32 * _1528]
                    return Array(len=_1528, data=mem[mem[64] + 64 len 32 * _1528])
                _1193 = sha3(Mask(8 * ceil32(('cd', 132).length), -(8 * ceil32(('cd', 132).length)) + 256, call.data[cd[132] + 36 len ('cd', 132).length], Mask(8 * ceil32(('cd', 132).length) - ('cd', 132).length, -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256, 9) >> -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256) << (8 * ceil32(('cd', 132).length)) - 256, mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(('cd', 132).length) + 170 len ('cd', 132).length + -ceil32(('cd', 132).length) + 32])
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 174] = (10000 * cd[4]) - (fee * cd[4]) / 10000
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 206] = 128
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 302] = ('cd', 36).length
                idx = 0
                s = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334
                t = cd[36] + 36
                while idx < ('cd', 36).length:
                    require cd[t] == address(cd[t])
                    mem[s] = address(cd[t])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 238] = address(cd[68])
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 270] = cd[100]
                call stor[_1193].swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value msg.value - (msg.value * fee / 10000) wei
                     gas gas_remaining wei
                    args (10000 * cd[4]) - (fee * cd[4]) / 10000, Array(len=('cd', 36).length, data=mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 170
                require return_data.size >= 32
                _1513 = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32
                require mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 <= test266151307()
                require ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 201 < ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + return_data.size + 170
                _1529 = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]
                if mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]) + 1 < 0 or ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + ceil32(32 * mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]) + 171 > test266151307():
                    revert with 0, 65
                mem[64] = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + ceil32(32 * mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]) + 171
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 170] = _1529
                require _1513 + (32 * _1529) + 32 <= return_data.size
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 202 len ceil32(32 * _1529)] = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + _1513 + 202 len ceil32(32 * _1529)]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _1529
                mem[mem[64] + 64 len 32 * _1529] = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 202 len 32 * _1529]
                return Array(len=_1529, data=mem[mem[64] + 64 len 32 * _1529])
            if cd[164]:
                if ceil32(('cd', 132).length) <= ('cd', 132).length:
                    _1167 = sha3(Mask(8 * ceil32(('cd', 132).length), -(8 * ceil32(('cd', 132).length)) + 256, call.data[cd[132] + 36 len ('cd', 132).length], Mask(8 * ceil32(('cd', 132).length) - ('cd', 132).length, -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256, 9) >> -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256) << (8 * ceil32(('cd', 132).length)) - 256, mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(('cd', 132).length) + 170 len ('cd', 132).length + -ceil32(('cd', 132).length) + 32])
                    mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 206] = 128
                    mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 302] = ('cd', 36).length
                    idx = 0
                    s = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334
                    t = cd[36] + 36
                    while idx < ('cd', 36).length:
                        require cd[t] == address(cd[t])
                        mem[s] = address(cd[t])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 238] = address(cd[68])
                    mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 270] = cd[100]
                    require ext_code.size(stor[_1167])
                    call stor[_1167].swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value msg.value - (msg.value * fee / 10000) wei
                         gas gas_remaining wei
                        args (10000 * cd[4]) - (fee * cd[4]) / 10000, Array(len=('cd', 36).length, data=mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
                else:
                    _1199 = sha3(Mask(8 * ceil32(('cd', 132).length), -(8 * ceil32(('cd', 132).length)) + 256, call.data[cd[132] + 36 len ('cd', 132).length], Mask(8 * ceil32(('cd', 132).length) - ('cd', 132).length, -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256, 9) >> -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256) << (8 * ceil32(('cd', 132).length)) - 256, mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(('cd', 132).length) + 170 len ('cd', 132).length + -ceil32(('cd', 132).length) + 32])
                    mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 206] = 128
                    mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 302] = ('cd', 36).length
                    idx = 0
                    s = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334
                    t = cd[36] + 36
                    while idx < ('cd', 36).length:
                        require cd[t] == address(cd[t])
                        mem[s] = address(cd[t])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 238] = address(cd[68])
                    mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 270] = cd[100]
                    require ext_code.size(stor[_1199])
                    call stor[_1199].swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value msg.value - (msg.value * fee / 10000) wei
                         gas gas_remaining wei
                        args (10000 * cd[4]) - (fee * cd[4]) / 10000, Array(len=('cd', 36).length, data=mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170] = 32
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 202] = ('cd', 132).length
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 234 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len ('cd', 132).length], mem[('cd', 132).length + 128 len 31 * ('cd', 132).length]
                return memory
                  from ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170
                   len (32 * ('cd', 132).length) + 64
            if ceil32(('cd', 132).length) <= ('cd', 132).length:
                _1165 = sha3(Mask(8 * ceil32(('cd', 132).length), -(8 * ceil32(('cd', 132).length)) + 256, call.data[cd[132] + 36 len ('cd', 132).length], Mask(8 * ceil32(('cd', 132).length) - ('cd', 132).length, -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256, 9) >> -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256) << (8 * ceil32(('cd', 132).length)) - 256, mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(('cd', 132).length) + 170 len ('cd', 132).length + -ceil32(('cd', 132).length) + 32])
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 174] = (10000 * cd[4]) - (fee * cd[4]) / 10000
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 206] = 128
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 302] = ('cd', 36).length
                idx = 0
                s = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334
                t = cd[36] + 36
                while idx < ('cd', 36).length:
                    require cd[t] == address(cd[t])
                    mem[s] = address(cd[t])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 238] = address(cd[68])
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 270] = cd[100]
                call stor[_1165].swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value msg.value - (msg.value * fee / 10000) wei
                     gas gas_remaining wei
                    args (10000 * cd[4]) - (fee * cd[4]) / 10000, Array(len=('cd', 36).length, data=mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 170
                require return_data.size >= 32
                _1514 = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32
                require mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 <= test266151307()
                require ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 201 < ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + return_data.size + 170
                _1532 = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]
                if mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]) + 1 < 0 or ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + ceil32(32 * mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]) + 171 > test266151307():
                    revert with 0, 65
                mem[64] = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + ceil32(32 * mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]) + 171
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 170] = _1532
                require _1514 + (32 * _1532) + 32 <= return_data.size
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 202 len ceil32(32 * _1532)] = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + _1514 + 202 len ceil32(32 * _1532)]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _1532
                mem[mem[64] + 64 len 32 * _1532] = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 202 len 32 * _1532]
                return Array(len=_1532, data=mem[mem[64] + 64 len 32 * _1532])
            _1197 = sha3(Mask(8 * ceil32(('cd', 132).length), -(8 * ceil32(('cd', 132).length)) + 256, call.data[cd[132] + 36 len ('cd', 132).length], Mask(8 * ceil32(('cd', 132).length) - ('cd', 132).length, -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256, 9) >> -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256) << (8 * ceil32(('cd', 132).length)) - 256, mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(('cd', 132).length) + 170 len ('cd', 132).length + -ceil32(('cd', 132).length) + 32])
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 174] = (10000 * cd[4]) - (fee * cd[4]) / 10000
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 206] = 128
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 302] = ('cd', 36).length
            idx = 0
            s = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334
            t = cd[36] + 36
            while idx < ('cd', 36).length:
                require cd[t] == address(cd[t])
                mem[s] = address(cd[t])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 238] = address(cd[68])
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 270] = cd[100]
            call stor[_1197].swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value msg.value - (msg.value * fee / 10000) wei
                 gas gas_remaining wei
                args (10000 * cd[4]) - (fee * cd[4]) / 10000, Array(len=('cd', 36).length, data=mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 170
            require return_data.size >= 32
            _1515 = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32
            require mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 <= test266151307()
            require ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 201 < ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + return_data.size + 170
            _1533 = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]
            if mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]) + 1 < 0 or ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + ceil32(32 * mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]) + 171 > test266151307():
                revert with 0, 65
            mem[64] = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + ceil32(32 * mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]) + 171
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 170] = _1533
            require _1515 + (32 * _1533) + 32 <= return_data.size
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 202 len ceil32(32 * _1533)] = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + _1515 + 202 len ceil32(32 * _1533)]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _1533
            mem[mem[64] + 64 len 32 * _1533] = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 202 len 32 * _1533]
            return Array(len=_1533, data=mem[mem[64] + 64 len 32 * _1533])
        mem[ceil32(ceil32(('cd', 132).length)) + ('cd', 132).length + 170] = 0
        mem[ceil32(ceil32(('cd', 132).length)) + 138] = ('cd', 132).length
        mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len ceil32(('cd', 132).length)] = call.data[cd[132] + 36 len ('cd', 132).length], Mask(8 * ceil32(('cd', 132).length) - ('cd', 132).length, -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256, 9) >> -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256
        mem[(2 * ('cd', 132).length) + ceil32(ceil32(('cd', 132).length)) + 170] = 1
        if sha3(Mask(8 * ('cd', 132).length, -(8 * ('cd', 132).length) + 256, call.data[cd[132] + 36 len ('cd', 132).length], Mask(8 * ceil32(('cd', 132).length) - ('cd', 132).length, -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256, 9) >> -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256) << (8 * ('cd', 132).length) - 256) != sha3('traderjoe'):
            if cd[164]:
                if ceil32(('cd', 132).length) <= ('cd', 132).length:
                    _1171 = sha3(Mask(8 * ceil32(('cd', 132).length), -(8 * ceil32(('cd', 132).length)) + 256, call.data[cd[132] + 36 len ('cd', 132).length], Mask(8 * ceil32(('cd', 132).length) - ('cd', 132).length, -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256, 9) >> -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256) << (8 * ceil32(('cd', 132).length)) - 256, mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(('cd', 132).length) + 170 len ('cd', 132).length + -ceil32(('cd', 132).length) + 32])
                    mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 206] = 128
                    mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 302] = ('cd', 36).length
                    idx = 0
                    s = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334
                    t = cd[36] + 36
                    while idx < ('cd', 36).length:
                        require cd[t] == address(cd[t])
                        mem[s] = address(cd[t])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 238] = address(cd[68])
                    mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 270] = cd[100]
                    require ext_code.size(stor[_1171])
                    call stor[_1171].swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value msg.value - (msg.value * fee / 10000) wei
                         gas gas_remaining wei
                        args (10000 * cd[4]) - (fee * cd[4]) / 10000, Array(len=('cd', 36).length, data=mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
                else:
                    _1203 = sha3(Mask(8 * ceil32(('cd', 132).length), -(8 * ceil32(('cd', 132).length)) + 256, call.data[cd[132] + 36 len ('cd', 132).length], Mask(8 * ceil32(('cd', 132).length) - ('cd', 132).length, -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256, 9) >> -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256) << (8 * ceil32(('cd', 132).length)) - 256, mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(('cd', 132).length) + 170 len ('cd', 132).length + -ceil32(('cd', 132).length) + 32])
                    mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 206] = 128
                    mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 302] = ('cd', 36).length
                    idx = 0
                    s = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334
                    t = cd[36] + 36
                    while idx < ('cd', 36).length:
                        require cd[t] == address(cd[t])
                        mem[s] = address(cd[t])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 238] = address(cd[68])
                    mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 270] = cd[100]
                    require ext_code.size(stor[_1203])
                    call stor[_1203].swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value msg.value - (msg.value * fee / 10000) wei
                         gas gas_remaining wei
                        args (10000 * cd[4]) - (fee * cd[4]) / 10000, Array(len=('cd', 36).length, data=mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170] = 32
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 202] = ('cd', 132).length
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 234 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len ('cd', 132).length], mem[('cd', 132).length + 128 len 31 * ('cd', 132).length]
                return memory
                  from ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170
                   len (32 * ('cd', 132).length) + 64
            if ceil32(('cd', 132).length) <= ('cd', 132).length:
                _1169 = sha3(Mask(8 * ceil32(('cd', 132).length), -(8 * ceil32(('cd', 132).length)) + 256, call.data[cd[132] + 36 len ('cd', 132).length], Mask(8 * ceil32(('cd', 132).length) - ('cd', 132).length, -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256, 9) >> -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256) << (8 * ceil32(('cd', 132).length)) - 256, mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(('cd', 132).length) + 170 len ('cd', 132).length + -ceil32(('cd', 132).length) + 32])
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 174] = (10000 * cd[4]) - (fee * cd[4]) / 10000
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 206] = 128
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 302] = ('cd', 36).length
                idx = 0
                s = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334
                t = cd[36] + 36
                while idx < ('cd', 36).length:
                    require cd[t] == address(cd[t])
                    mem[s] = address(cd[t])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 238] = address(cd[68])
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 270] = cd[100]
                call stor[_1169].swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value msg.value - (msg.value * fee / 10000) wei
                     gas gas_remaining wei
                    args (10000 * cd[4]) - (fee * cd[4]) / 10000, Array(len=('cd', 36).length, data=mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 170
                require return_data.size >= 32
                _1516 = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32
                require mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 <= test266151307()
                require ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 201 < ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + return_data.size + 170
                _1536 = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]
                if mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]) + 1 < 0 or ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + ceil32(32 * mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]) + 171 > test266151307():
                    revert with 0, 65
                mem[64] = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + ceil32(32 * mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]) + 171
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 170] = _1536
                require _1516 + (32 * _1536) + 32 <= return_data.size
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 202 len ceil32(32 * _1536)] = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + _1516 + 202 len ceil32(32 * _1536)]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _1536
                mem[mem[64] + 64 len 32 * _1536] = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 202 len 32 * _1536]
                return Array(len=_1536, data=mem[mem[64] + 64 len 32 * _1536])
            _1201 = sha3(Mask(8 * ceil32(('cd', 132).length), -(8 * ceil32(('cd', 132).length)) + 256, call.data[cd[132] + 36 len ('cd', 132).length], Mask(8 * ceil32(('cd', 132).length) - ('cd', 132).length, -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256, 9) >> -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256) << (8 * ceil32(('cd', 132).length)) - 256, mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(('cd', 132).length) + 170 len ('cd', 132).length + -ceil32(('cd', 132).length) + 32])
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 174] = (10000 * cd[4]) - (fee * cd[4]) / 10000
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 206] = 128
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 302] = ('cd', 36).length
            idx = 0
            s = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334
            t = cd[36] + 36
            while idx < ('cd', 36).length:
                require cd[t] == address(cd[t])
                mem[s] = address(cd[t])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 238] = address(cd[68])
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 270] = cd[100]
            call stor[_1201].swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value msg.value - (msg.value * fee / 10000) wei
                 gas gas_remaining wei
                args (10000 * cd[4]) - (fee * cd[4]) / 10000, Array(len=('cd', 36).length, data=mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 170
            require return_data.size >= 32
            _1517 = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32
            require mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 <= test266151307()
            require ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 201 < ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + return_data.size + 170
            _1537 = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]
            if mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]) + 1 < 0 or ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + ceil32(32 * mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]) + 171 > test266151307():
                revert with 0, 65
            mem[64] = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + ceil32(32 * mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]) + 171
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 170] = _1537
            require _1517 + (32 * _1537) + 32 <= return_data.size
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 202 len ceil32(32 * _1537)] = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + _1517 + 202 len ceil32(32 * _1537)]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _1537
            mem[mem[64] + 64 len 32 * _1537] = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 202 len 32 * _1537]
            return Array(len=_1537, data=mem[mem[64] + 64 len 32 * _1537])
        if cd[164]:
            if ceil32(('cd', 132).length) <= ('cd', 132).length:
                _1175 = sha3(Mask(8 * ceil32(('cd', 132).length), -(8 * ceil32(('cd', 132).length)) + 256, call.data[cd[132] + 36 len ('cd', 132).length], Mask(8 * ceil32(('cd', 132).length) - ('cd', 132).length, -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256, 9) >> -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256) << (8 * ceil32(('cd', 132).length)) - 256, mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(('cd', 132).length) + 170 len ('cd', 132).length + -ceil32(('cd', 132).length) + 32])
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 206] = 128
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 302] = ('cd', 36).length
                idx = 0
                s = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334
                t = cd[36] + 36
                while idx < ('cd', 36).length:
                    require cd[t] == address(cd[t])
                    mem[s] = address(cd[t])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 238] = address(cd[68])
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 270] = cd[100]
                require ext_code.size(stor[_1175])
                call stor[_1175].swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value msg.value - (msg.value * fee / 10000) wei
                     gas gas_remaining wei
                    args (10000 * cd[4]) - (fee * cd[4]) / 10000, Array(len=('cd', 36).length, data=mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
            else:
                _1207 = sha3(Mask(8 * ceil32(('cd', 132).length), -(8 * ceil32(('cd', 132).length)) + 256, call.data[cd[132] + 36 len ('cd', 132).length], Mask(8 * ceil32(('cd', 132).length) - ('cd', 132).length, -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256, 9) >> -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256) << (8 * ceil32(('cd', 132).length)) - 256, mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(('cd', 132).length) + 170 len ('cd', 132).length + -ceil32(('cd', 132).length) + 32])
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 206] = 128
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 302] = ('cd', 36).length
                idx = 0
                s = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334
                t = cd[36] + 36
                while idx < ('cd', 36).length:
                    require cd[t] == address(cd[t])
                    mem[s] = address(cd[t])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 238] = address(cd[68])
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 270] = cd[100]
                require ext_code.size(stor[_1207])
                call stor[_1207].swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value msg.value - (msg.value * fee / 10000) wei
                     gas gas_remaining wei
                    args (10000 * cd[4]) - (fee * cd[4]) / 10000, Array(len=('cd', 36).length, data=mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170] = 32
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 202] = ('cd', 132).length
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 234 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len ('cd', 132).length], mem[('cd', 132).length + 128 len 31 * ('cd', 132).length]
            return memory
              from ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170
               len (32 * ('cd', 132).length) + 64
        if ceil32(('cd', 132).length) <= ('cd', 132).length:
            _1173 = sha3(Mask(8 * ceil32(('cd', 132).length), -(8 * ceil32(('cd', 132).length)) + 256, call.data[cd[132] + 36 len ('cd', 132).length], Mask(8 * ceil32(('cd', 132).length) - ('cd', 132).length, -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256, 9) >> -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256) << (8 * ceil32(('cd', 132).length)) - 256, mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(('cd', 132).length) + 170 len ('cd', 132).length + -ceil32(('cd', 132).length) + 32])
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 174] = (10000 * cd[4]) - (fee * cd[4]) / 10000
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 206] = 128
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 302] = ('cd', 36).length
            idx = 0
            s = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334
            t = cd[36] + 36
            while idx < ('cd', 36).length:
                require cd[t] == address(cd[t])
                mem[s] = address(cd[t])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 238] = address(cd[68])
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 270] = cd[100]
            call stor[_1173].swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value msg.value - (msg.value * fee / 10000) wei
                 gas gas_remaining wei
                args (10000 * cd[4]) - (fee * cd[4]) / 10000, Array(len=('cd', 36).length, data=mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 170
            require return_data.size >= 32
            _1518 = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32
            require mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 <= test266151307()
            require ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 201 < ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + return_data.size + 170
            _1540 = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]
            if mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]) + 1 < 0 or ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + ceil32(32 * mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]) + 171 > test266151307():
                revert with 0, 65
            mem[64] = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + ceil32(32 * mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]) + 171
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 170] = _1540
            require _1518 + (32 * _1540) + 32 <= return_data.size
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 202 len ceil32(32 * _1540)] = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + _1518 + 202 len ceil32(32 * _1540)]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _1540
            mem[mem[64] + 64 len 32 * _1540] = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 202 len 32 * _1540]
            return Array(len=_1540, data=mem[mem[64] + 64 len 32 * _1540])
        _1205 = sha3(Mask(8 * ceil32(('cd', 132).length), -(8 * ceil32(('cd', 132).length)) + 256, call.data[cd[132] + 36 len ('cd', 132).length], Mask(8 * ceil32(('cd', 132).length) - ('cd', 132).length, -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256, 9) >> -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256) << (8 * ceil32(('cd', 132).length)) - 256, mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(('cd', 132).length) + 170 len ('cd', 132).length + -ceil32(('cd', 132).length) + 32])
        mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
        mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 174] = (10000 * cd[4]) - (fee * cd[4]) / 10000
        mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 206] = 128
        mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 302] = ('cd', 36).length
        idx = 0
        s = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334
        t = cd[36] + 36
        while idx < ('cd', 36).length:
            require cd[t] == address(cd[t])
            mem[s] = address(cd[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 238] = address(cd[68])
        mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 270] = cd[100]
        call stor[_1205].swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value msg.value - (msg.value * fee / 10000) wei
             gas gas_remaining wei
            args (10000 * cd[4]) - (fee * cd[4]) / 10000, Array(len=('cd', 36).length, data=mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 170
        require return_data.size >= 32
        _1519 = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32
        require mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 <= test266151307()
        require ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 201 < ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + return_data.size + 170
        _1541 = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]
        if mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]) + 1 < 0 or ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + ceil32(32 * mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]) + 171 > test266151307():
            revert with 0, 65
        mem[64] = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + ceil32(32 * mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]) + 171
        mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 170] = _1541
        require _1519 + (32 * _1541) + 32 <= return_data.size
        mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 202 len ceil32(32 * _1541)] = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + _1519 + 202 len ceil32(32 * _1541)]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _1541
        mem[mem[64] + 64 len 32 * _1541] = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 202 len 32 * _1541]
        return Array(len=_1541, data=mem[mem[64] + 64 len 32 * _1541])
    if ceil32(('cd', 132).length) <= ('cd', 132).length:
        mem[ceil32(ceil32(('cd', 132).length)) + 138] = ('cd', 132).length
        mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len ceil32(('cd', 132).length)] = call.data[cd[132] + 36 len ('cd', 132).length], Mask(8 * ceil32(('cd', 132).length) - ('cd', 132).length, -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256, 9) >> -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256
        mem[(2 * ('cd', 132).length) + ceil32(ceil32(('cd', 132).length)) + 170] = 1
        if sha3(Mask(8 * ('cd', 132).length, -(8 * ('cd', 132).length) + 256, call.data[cd[132] + 36 len ('cd', 132).length], Mask(8 * ceil32(('cd', 132).length) - ('cd', 132).length, -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256, 9) >> -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256) << (8 * ('cd', 132).length) - 256) != sha3('traderjoe'):
            if cd[164]:
                if ceil32(('cd', 132).length) <= ('cd', 132).length:
                    _1179 = sha3(Mask(8 * ceil32(('cd', 132).length), -(8 * ceil32(('cd', 132).length)) + 256, call.data[cd[132] + 36 len ('cd', 132).length], Mask(8 * ceil32(('cd', 132).length) - ('cd', 132).length, -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256, 9) >> -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256) << (8 * ceil32(('cd', 132).length)) - 256, mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(('cd', 132).length) + 170 len ('cd', 132).length + -ceil32(('cd', 132).length) + 32])
                    mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 206] = 128
                    mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 302] = ('cd', 36).length
                    idx = 0
                    s = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334
                    t = cd[36] + 36
                    while idx < ('cd', 36).length:
                        require cd[t] == address(cd[t])
                        mem[s] = address(cd[t])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 238] = address(cd[68])
                    mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 270] = cd[100]
                    require ext_code.size(stor[_1179])
                    call stor[_1179].swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value msg.value - (msg.value * fee / 10000) wei
                         gas gas_remaining wei
                        args (10000 * cd[4]) - (fee * cd[4]) / 10000, Array(len=('cd', 36).length, data=mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
                else:
                    _1211 = sha3(Mask(8 * ceil32(('cd', 132).length), -(8 * ceil32(('cd', 132).length)) + 256, call.data[cd[132] + 36 len ('cd', 132).length], Mask(8 * ceil32(('cd', 132).length) - ('cd', 132).length, -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256, 9) >> -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256) << (8 * ceil32(('cd', 132).length)) - 256, mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(('cd', 132).length) + 170 len ('cd', 132).length + -ceil32(('cd', 132).length) + 32])
                    mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 206] = 128
                    mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 302] = ('cd', 36).length
                    idx = 0
                    s = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334
                    t = cd[36] + 36
                    while idx < ('cd', 36).length:
                        require cd[t] == address(cd[t])
                        mem[s] = address(cd[t])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 238] = address(cd[68])
                    mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 270] = cd[100]
                    require ext_code.size(stor[_1211])
                    call stor[_1211].swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value msg.value - (msg.value * fee / 10000) wei
                         gas gas_remaining wei
                        args (10000 * cd[4]) - (fee * cd[4]) / 10000, Array(len=('cd', 36).length, data=mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170] = 32
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 202] = ('cd', 132).length
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 234 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len ('cd', 132).length], mem[('cd', 132).length + 128 len 31 * ('cd', 132).length]
                return memory
                  from ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170
                   len (32 * ('cd', 132).length) + 64
            if ceil32(('cd', 132).length) <= ('cd', 132).length:
                _1177 = sha3(Mask(8 * ceil32(('cd', 132).length), -(8 * ceil32(('cd', 132).length)) + 256, call.data[cd[132] + 36 len ('cd', 132).length], Mask(8 * ceil32(('cd', 132).length) - ('cd', 132).length, -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256, 9) >> -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256) << (8 * ceil32(('cd', 132).length)) - 256, mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(('cd', 132).length) + 170 len ('cd', 132).length + -ceil32(('cd', 132).length) + 32])
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 174] = (10000 * cd[4]) - (fee * cd[4]) / 10000
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 206] = 128
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 302] = ('cd', 36).length
                idx = 0
                s = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334
                t = cd[36] + 36
                while idx < ('cd', 36).length:
                    require cd[t] == address(cd[t])
                    mem[s] = address(cd[t])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 238] = address(cd[68])
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 270] = cd[100]
                call stor[_1177].swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value msg.value - (msg.value * fee / 10000) wei
                     gas gas_remaining wei
                    args (10000 * cd[4]) - (fee * cd[4]) / 10000, Array(len=('cd', 36).length, data=mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 170
                require return_data.size >= 32
                _1520 = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32
                require mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 <= test266151307()
                require ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 201 < ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + return_data.size + 170
                _1544 = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]
                if mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]) + 1 < 0 or ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + ceil32(32 * mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]) + 171 > test266151307():
                    revert with 0, 65
                mem[64] = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + ceil32(32 * mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]) + 171
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 170] = _1544
                require _1520 + (32 * _1544) + 32 <= return_data.size
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 202 len ceil32(32 * _1544)] = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + _1520 + 202 len ceil32(32 * _1544)]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _1544
                mem[mem[64] + 64 len 32 * _1544] = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 202 len 32 * _1544]
                return Array(len=_1544, data=mem[mem[64] + 64 len 32 * _1544])
            _1209 = sha3(Mask(8 * ceil32(('cd', 132).length), -(8 * ceil32(('cd', 132).length)) + 256, call.data[cd[132] + 36 len ('cd', 132).length], Mask(8 * ceil32(('cd', 132).length) - ('cd', 132).length, -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256, 9) >> -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256) << (8 * ceil32(('cd', 132).length)) - 256, mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(('cd', 132).length) + 170 len ('cd', 132).length + -ceil32(('cd', 132).length) + 32])
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 174] = (10000 * cd[4]) - (fee * cd[4]) / 10000
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 206] = 128
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 302] = ('cd', 36).length
            idx = 0
            s = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334
            t = cd[36] + 36
            while idx < ('cd', 36).length:
                require cd[t] == address(cd[t])
                mem[s] = address(cd[t])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 238] = address(cd[68])
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 270] = cd[100]
            call stor[_1209].swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value msg.value - (msg.value * fee / 10000) wei
                 gas gas_remaining wei
                args (10000 * cd[4]) - (fee * cd[4]) / 10000, Array(len=('cd', 36).length, data=mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 170
            require return_data.size >= 32
            _1521 = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32
            require mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 <= test266151307()
            require ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 201 < ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + return_data.size + 170
            _1545 = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]
            if mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]) + 1 < 0 or ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + ceil32(32 * mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]) + 171 > test266151307():
                revert with 0, 65
            mem[64] = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + ceil32(32 * mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]) + 171
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 170] = _1545
            require _1521 + (32 * _1545) + 32 <= return_data.size
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 202 len ceil32(32 * _1545)] = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + _1521 + 202 len ceil32(32 * _1545)]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _1545
            mem[mem[64] + 64 len 32 * _1545] = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 202 len 32 * _1545]
            return Array(len=_1545, data=mem[mem[64] + 64 len 32 * _1545])
        if cd[164]:
            if ceil32(('cd', 132).length) <= ('cd', 132).length:
                _1183 = sha3(Mask(8 * ceil32(('cd', 132).length), -(8 * ceil32(('cd', 132).length)) + 256, call.data[cd[132] + 36 len ('cd', 132).length], Mask(8 * ceil32(('cd', 132).length) - ('cd', 132).length, -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256, 9) >> -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256) << (8 * ceil32(('cd', 132).length)) - 256, mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(('cd', 132).length) + 170 len ('cd', 132).length + -ceil32(('cd', 132).length) + 32])
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 206] = 128
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 302] = ('cd', 36).length
                idx = 0
                s = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334
                t = cd[36] + 36
                while idx < ('cd', 36).length:
                    require cd[t] == address(cd[t])
                    mem[s] = address(cd[t])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 238] = address(cd[68])
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 270] = cd[100]
                require ext_code.size(stor[_1183])
                call stor[_1183].swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value msg.value - (msg.value * fee / 10000) wei
                     gas gas_remaining wei
                    args (10000 * cd[4]) - (fee * cd[4]) / 10000, Array(len=('cd', 36).length, data=mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
            else:
                _1215 = sha3(Mask(8 * ceil32(('cd', 132).length), -(8 * ceil32(('cd', 132).length)) + 256, call.data[cd[132] + 36 len ('cd', 132).length], Mask(8 * ceil32(('cd', 132).length) - ('cd', 132).length, -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256, 9) >> -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256) << (8 * ceil32(('cd', 132).length)) - 256, mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(('cd', 132).length) + 170 len ('cd', 132).length + -ceil32(('cd', 132).length) + 32])
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 206] = 128
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 302] = ('cd', 36).length
                idx = 0
                s = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334
                t = cd[36] + 36
                while idx < ('cd', 36).length:
                    require cd[t] == address(cd[t])
                    mem[s] = address(cd[t])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 238] = address(cd[68])
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 270] = cd[100]
                require ext_code.size(stor[_1215])
                call stor[_1215].swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value msg.value - (msg.value * fee / 10000) wei
                     gas gas_remaining wei
                    args (10000 * cd[4]) - (fee * cd[4]) / 10000, Array(len=('cd', 36).length, data=mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170] = 32
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 202] = ('cd', 132).length
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 234 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len ('cd', 132).length], mem[('cd', 132).length + 128 len 31 * ('cd', 132).length]
            return memory
              from ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170
               len (32 * ('cd', 132).length) + 64
        if ceil32(('cd', 132).length) <= ('cd', 132).length:
            _1181 = sha3(Mask(8 * ceil32(('cd', 132).length), -(8 * ceil32(('cd', 132).length)) + 256, call.data[cd[132] + 36 len ('cd', 132).length], Mask(8 * ceil32(('cd', 132).length) - ('cd', 132).length, -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256, 9) >> -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256) << (8 * ceil32(('cd', 132).length)) - 256, mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(('cd', 132).length) + 170 len ('cd', 132).length + -ceil32(('cd', 132).length) + 32])
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 174] = (10000 * cd[4]) - (fee * cd[4]) / 10000
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 206] = 128
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 302] = ('cd', 36).length
            idx = 0
            s = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334
            t = cd[36] + 36
            while idx < ('cd', 36).length:
                require cd[t] == address(cd[t])
                mem[s] = address(cd[t])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 238] = address(cd[68])
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 270] = cd[100]
            call stor[_1181].swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value msg.value - (msg.value * fee / 10000) wei
                 gas gas_remaining wei
                args (10000 * cd[4]) - (fee * cd[4]) / 10000, Array(len=('cd', 36).length, data=mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 170
            require return_data.size >= 32
            _1522 = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32
            require mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 <= test266151307()
            require ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 201 < ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + return_data.size + 170
            _1548 = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]
            if mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]) + 1 < 0 or ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + ceil32(32 * mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]) + 171 > test266151307():
                revert with 0, 65
            mem[64] = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + ceil32(32 * mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]) + 171
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 170] = _1548
            require _1522 + (32 * _1548) + 32 <= return_data.size
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 202 len ceil32(32 * _1548)] = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + _1522 + 202 len ceil32(32 * _1548)]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _1548
            mem[mem[64] + 64 len 32 * _1548] = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 202 len 32 * _1548]
            return Array(len=_1548, data=mem[mem[64] + 64 len 32 * _1548])
        _1213 = sha3(Mask(8 * ceil32(('cd', 132).length), -(8 * ceil32(('cd', 132).length)) + 256, call.data[cd[132] + 36 len ('cd', 132).length], Mask(8 * ceil32(('cd', 132).length) - ('cd', 132).length, -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256, 9) >> -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256) << (8 * ceil32(('cd', 132).length)) - 256, mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(('cd', 132).length) + 170 len ('cd', 132).length + -ceil32(('cd', 132).length) + 32])
        mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
        mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 174] = (10000 * cd[4]) - (fee * cd[4]) / 10000
        mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 206] = 128
        mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 302] = ('cd', 36).length
        idx = 0
        s = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334
        t = cd[36] + 36
        while idx < ('cd', 36).length:
            require cd[t] == address(cd[t])
            mem[s] = address(cd[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 238] = address(cd[68])
        mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 270] = cd[100]
        call stor[_1213].swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value msg.value - (msg.value * fee / 10000) wei
             gas gas_remaining wei
            args (10000 * cd[4]) - (fee * cd[4]) / 10000, Array(len=('cd', 36).length, data=mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 170
        require return_data.size >= 32
        _1523 = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32
        require mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 <= test266151307()
        require ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 201 < ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + return_data.size + 170
        _1549 = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]
        if mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]) + 1 < 0 or ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + ceil32(32 * mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]) + 171 > test266151307():
            revert with 0, 65
        mem[64] = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + ceil32(32 * mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]) + 171
        mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 170] = _1549
        require _1523 + (32 * _1549) + 32 <= return_data.size
        mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 202 len ceil32(32 * _1549)] = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + _1523 + 202 len ceil32(32 * _1549)]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _1549
        mem[mem[64] + 64 len 32 * _1549] = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 202 len 32 * _1549]
        return Array(len=_1549, data=mem[mem[64] + 64 len 32 * _1549])
    mem[ceil32(ceil32(('cd', 132).length)) + ('cd', 132).length + 170] = 0
    mem[ceil32(ceil32(('cd', 132).length)) + 138] = ('cd', 132).length
    mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len ceil32(('cd', 132).length)] = call.data[cd[132] + 36 len ('cd', 132).length], Mask(8 * ceil32(('cd', 132).length) - ('cd', 132).length, -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256, 9) >> -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256
    mem[(2 * ('cd', 132).length) + ceil32(ceil32(('cd', 132).length)) + 170] = 1
    if sha3(Mask(8 * ('cd', 132).length, -(8 * ('cd', 132).length) + 256, call.data[cd[132] + 36 len ('cd', 132).length], Mask(8 * ceil32(('cd', 132).length) - ('cd', 132).length, -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256, 9) >> -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256) << (8 * ('cd', 132).length) - 256) != sha3('traderjoe'):
        if cd[164]:
            if ceil32(('cd', 132).length) <= ('cd', 132).length:
                _1187 = sha3(Mask(8 * ceil32(('cd', 132).length), -(8 * ceil32(('cd', 132).length)) + 256, call.data[cd[132] + 36 len ('cd', 132).length], Mask(8 * ceil32(('cd', 132).length) - ('cd', 132).length, -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256, 9) >> -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256) << (8 * ceil32(('cd', 132).length)) - 256, mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(('cd', 132).length) + 170 len ('cd', 132).length + -ceil32(('cd', 132).length) + 32])
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 206] = 128
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 302] = ('cd', 36).length
                idx = 0
                s = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334
                t = cd[36] + 36
                while idx < ('cd', 36).length:
                    require cd[t] == address(cd[t])
                    mem[s] = address(cd[t])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 238] = address(cd[68])
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 270] = cd[100]
                require ext_code.size(stor[_1187])
                call stor[_1187].swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value msg.value - (msg.value * fee / 10000) wei
                     gas gas_remaining wei
                    args (10000 * cd[4]) - (fee * cd[4]) / 10000, Array(len=('cd', 36).length, data=mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
            else:
                _1219 = sha3(Mask(8 * ceil32(('cd', 132).length), -(8 * ceil32(('cd', 132).length)) + 256, call.data[cd[132] + 36 len ('cd', 132).length], Mask(8 * ceil32(('cd', 132).length) - ('cd', 132).length, -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256, 9) >> -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256) << (8 * ceil32(('cd', 132).length)) - 256, mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(('cd', 132).length) + 170 len ('cd', 132).length + -ceil32(('cd', 132).length) + 32])
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 206] = 128
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 302] = ('cd', 36).length
                idx = 0
                s = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334
                t = cd[36] + 36
                while idx < ('cd', 36).length:
                    require cd[t] == address(cd[t])
                    mem[s] = address(cd[t])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 238] = address(cd[68])
                mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 270] = cd[100]
                require ext_code.size(stor[_1219])
                call stor[_1219].swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value msg.value - (msg.value * fee / 10000) wei
                     gas gas_remaining wei
                    args (10000 * cd[4]) - (fee * cd[4]) / 10000, Array(len=('cd', 36).length, data=mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170] = 32
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 202] = ('cd', 132).length
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 234 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len ('cd', 132).length], mem[('cd', 132).length + 128 len 31 * ('cd', 132).length]
            return memory
              from ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170
               len (32 * ('cd', 132).length) + 64
        if ceil32(('cd', 132).length) <= ('cd', 132).length:
            _1185 = sha3(Mask(8 * ceil32(('cd', 132).length), -(8 * ceil32(('cd', 132).length)) + 256, call.data[cd[132] + 36 len ('cd', 132).length], Mask(8 * ceil32(('cd', 132).length) - ('cd', 132).length, -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256, 9) >> -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256) << (8 * ceil32(('cd', 132).length)) - 256, mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(('cd', 132).length) + 170 len ('cd', 132).length + -ceil32(('cd', 132).length) + 32])
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 174] = (10000 * cd[4]) - (fee * cd[4]) / 10000
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 206] = 128
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 302] = ('cd', 36).length
            idx = 0
            s = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334
            t = cd[36] + 36
            while idx < ('cd', 36).length:
                require cd[t] == address(cd[t])
                mem[s] = address(cd[t])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 238] = address(cd[68])
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 270] = cd[100]
            call stor[_1185].swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value msg.value - (msg.value * fee / 10000) wei
                 gas gas_remaining wei
                args (10000 * cd[4]) - (fee * cd[4]) / 10000, Array(len=('cd', 36).length, data=mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 170
            require return_data.size >= 32
            _1524 = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32
            require mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 <= test266151307()
            require ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 201 < ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + return_data.size + 170
            _1552 = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]
            if mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]) + 1 < 0 or ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + ceil32(32 * mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]) + 171 > test266151307():
                revert with 0, 65
            mem[64] = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + ceil32(32 * mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]) + 171
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 170] = _1552
            require _1524 + (32 * _1552) + 32 <= return_data.size
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 202 len ceil32(32 * _1552)] = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + _1524 + 202 len ceil32(32 * _1552)]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _1552
            mem[mem[64] + 64 len 32 * _1552] = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 202 len 32 * _1552]
            return Array(len=_1552, data=mem[mem[64] + 64 len 32 * _1552])
        _1217 = sha3(Mask(8 * ceil32(('cd', 132).length), -(8 * ceil32(('cd', 132).length)) + 256, call.data[cd[132] + 36 len ('cd', 132).length], Mask(8 * ceil32(('cd', 132).length) - ('cd', 132).length, -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256, 9) >> -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256) << (8 * ceil32(('cd', 132).length)) - 256, mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(('cd', 132).length) + 170 len ('cd', 132).length + -ceil32(('cd', 132).length) + 32])
        mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
        mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 174] = (10000 * cd[4]) - (fee * cd[4]) / 10000
        mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 206] = 128
        mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 302] = ('cd', 36).length
        idx = 0
        s = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334
        t = cd[36] + 36
        while idx < ('cd', 36).length:
            require cd[t] == address(cd[t])
            mem[s] = address(cd[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 238] = address(cd[68])
        mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 270] = cd[100]
        call stor[_1217].swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value msg.value - (msg.value * fee / 10000) wei
             gas gas_remaining wei
            args (10000 * cd[4]) - (fee * cd[4]) / 10000, Array(len=('cd', 36).length, data=mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 170
        require return_data.size >= 32
        _1525 = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32
        require mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 <= test266151307()
        require ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 201 < ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + return_data.size + 170
        _1553 = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]
        if mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]) + 1 < 0 or ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + ceil32(32 * mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]) + 171 > test266151307():
            revert with 0, 65
        mem[64] = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + ceil32(32 * mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]) + 171
        mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 170] = _1553
        require _1525 + (32 * _1553) + 32 <= return_data.size
        mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 202 len ceil32(32 * _1553)] = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + _1525 + 202 len ceil32(32 * _1553)]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _1553
        mem[mem[64] + 64 len 32 * _1553] = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 202 len 32 * _1553]
        return Array(len=_1553, data=mem[mem[64] + 64 len 32 * _1553])
    if cd[164]:
        if ceil32(('cd', 132).length) <= ('cd', 132).length:
            _1191 = sha3(Mask(8 * ceil32(('cd', 132).length), -(8 * ceil32(('cd', 132).length)) + 256, call.data[cd[132] + 36 len ('cd', 132).length], Mask(8 * ceil32(('cd', 132).length) - ('cd', 132).length, -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256, 9) >> -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256) << (8 * ceil32(('cd', 132).length)) - 256, mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(('cd', 132).length) + 170 len ('cd', 132).length + -ceil32(('cd', 132).length) + 32])
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 206] = 128
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 302] = ('cd', 36).length
            idx = 0
            s = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334
            t = cd[36] + 36
            while idx < ('cd', 36).length:
                require cd[t] == address(cd[t])
                mem[s] = address(cd[t])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 238] = address(cd[68])
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 270] = cd[100]
            require ext_code.size(stor[_1191])
            call stor[_1191].swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value msg.value - (msg.value * fee / 10000) wei
                 gas gas_remaining wei
                args (10000 * cd[4]) - (fee * cd[4]) / 10000, Array(len=('cd', 36).length, data=mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
        else:
            _1223 = sha3(Mask(8 * ceil32(('cd', 132).length), -(8 * ceil32(('cd', 132).length)) + 256, call.data[cd[132] + 36 len ('cd', 132).length], Mask(8 * ceil32(('cd', 132).length) - ('cd', 132).length, -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256, 9) >> -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256) << (8 * ceil32(('cd', 132).length)) - 256, mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(('cd', 132).length) + 170 len ('cd', 132).length + -ceil32(('cd', 132).length) + 32])
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 206] = 128
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 302] = ('cd', 36).length
            idx = 0
            s = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334
            t = cd[36] + 36
            while idx < ('cd', 36).length:
                require cd[t] == address(cd[t])
                mem[s] = address(cd[t])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 238] = address(cd[68])
            mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 270] = cd[100]
            require ext_code.size(stor[_1223])
            call stor[_1223].swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value msg.value - (msg.value * fee / 10000) wei
                 gas gas_remaining wei
                args (10000 * cd[4]) - (fee * cd[4]) / 10000, Array(len=('cd', 36).length, data=mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170] = 32
        mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 202] = ('cd', 132).length
        mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 234 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len ('cd', 132).length], mem[('cd', 132).length + 128 len 31 * ('cd', 132).length]
        return memory
          from ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170
           len (32 * ('cd', 132).length) + 64
    if ceil32(('cd', 132).length) <= ('cd', 132).length:
        _1189 = sha3(Mask(8 * ceil32(('cd', 132).length), -(8 * ceil32(('cd', 132).length)) + 256, call.data[cd[132] + 36 len ('cd', 132).length], Mask(8 * ceil32(('cd', 132).length) - ('cd', 132).length, -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256, 9) >> -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256) << (8 * ceil32(('cd', 132).length)) - 256, mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(('cd', 132).length) + 170 len ('cd', 132).length + -ceil32(('cd', 132).length) + 32])
        mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
        mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 174] = (10000 * cd[4]) - (fee * cd[4]) / 10000
        mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 206] = 128
        mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 302] = ('cd', 36).length
        idx = 0
        s = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334
        t = cd[36] + 36
        while idx < ('cd', 36).length:
            require cd[t] == address(cd[t])
            mem[s] = address(cd[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 238] = address(cd[68])
        mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 270] = cd[100]
        call stor[_1189].swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value msg.value - (msg.value * fee / 10000) wei
             gas gas_remaining wei
            args (10000 * cd[4]) - (fee * cd[4]) / 10000, Array(len=('cd', 36).length, data=mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 170
        require return_data.size >= 32
        _1526 = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32
        require mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 <= test266151307()
        require ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 201 < ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + return_data.size + 170
        _1556 = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]
        if mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]) + 1 < 0 or ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + ceil32(32 * mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]) + 171 > test266151307():
            revert with 0, 65
        mem[64] = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + ceil32(32 * mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]) + 171
        mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 170] = _1556
        require _1526 + (32 * _1556) + 32 <= return_data.size
        mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 202 len ceil32(32 * _1556)] = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + _1526 + 202 len ceil32(32 * _1556)]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _1556
        mem[mem[64] + 64 len 32 * _1556] = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 202 len 32 * _1556]
        return Array(len=_1556, data=mem[mem[64] + 64 len 32 * _1556])
    _1221 = sha3(Mask(8 * ceil32(('cd', 132).length), -(8 * ceil32(('cd', 132).length)) + 256, call.data[cd[132] + 36 len ('cd', 132).length], Mask(8 * ceil32(('cd', 132).length) - ('cd', 132).length, -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256, 9) >> -(8 * ceil32(('cd', 132).length) + -ceil32(ceil32(('cd', 132).length)) + 31) + 256) << (8 * ceil32(('cd', 132).length)) - 256, mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(('cd', 132).length) + 170 len ('cd', 132).length + -ceil32(('cd', 132).length) + 32])
    mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
    mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 174] = (10000 * cd[4]) - (fee * cd[4]) / 10000
    mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 206] = 128
    mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 302] = ('cd', 36).length
    idx = 0
    s = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334
    t = cd[36] + 36
    while idx < ('cd', 36).length:
        require cd[t] == address(cd[t])
        mem[s] = address(cd[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 238] = address(cd[68])
    mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 270] = cd[100]
    call stor[_1221].swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value - (msg.value * fee / 10000) wei
         gas gas_remaining wei
        args (10000 * cd[4]) - (fee * cd[4]) / 10000, Array(len=('cd', 36).length, data=mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 334 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 170
    require return_data.size >= 32
    _1527 = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32
    require mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 <= test266151307()
    require ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 201 < ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + return_data.size + 170
    _1557 = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]
    if mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]) + 1 < 0 or ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + ceil32(32 * mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]) + 171 > test266151307():
        revert with 0, 65
    mem[64] = ('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + ceil32(32 * mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 170 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 170]) + 171
    mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 170] = _1557
    require _1527 + (32 * _1557) + 32 <= return_data.size
    mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 202 len ceil32(32 * _1557)] = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + _1527 + 202 len ceil32(32 * _1557)]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _1557
    mem[mem[64] + 64 len 32 * _1557] = mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 202 len 32 * _1557]
    return Array(len=_1557, data=mem[mem[64] + 64 len 32 * _1557])
}



}
