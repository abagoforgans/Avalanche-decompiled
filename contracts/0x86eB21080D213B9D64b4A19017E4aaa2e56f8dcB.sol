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
    mem[ceil32(ceil32(('cd', 132).length)) + 97 len ceil32(('cd', 132).length)] = call.data[cd[132] + 36 len ('cd', 132).length], mem[('cd', 132).length + 128 len ceil32(('cd', 132).length) - ('cd', 132).length]
    mem[('cd', 132).length + ceil32(ceil32(('cd', 132).length)) + 97] = 1
    if ceil32(('cd', 132).length) <= ('cd', 132).length:
        if cd[164]:
            if ceil32(('cd', 132).length) <= ('cd', 132).length:
                _205 = sha3(mem[ceil32(ceil32(('cd', 132).length)) + 97 len ('cd', 132).length + 32])
                mem[ceil32(ceil32(('cd', 132).length)) + 133] = 128
                mem[ceil32(ceil32(('cd', 132).length)) + 229] = ('cd', 36).length
                idx = 0
                s = ceil32(ceil32(('cd', 132).length)) + 261
                t = cd[36] + 36
                while idx < ('cd', 36).length:
                    require cd[t] == address(cd[t])
                    mem[s] = address(cd[t])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(ceil32(('cd', 132).length)) + 165] = address(cd[68])
                mem[ceil32(ceil32(('cd', 132).length)) + 197] = cd[100]
                require ext_code.size(stor[_205])
                call stor[_205].swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value msg.value - (msg.value * fee / 10000) wei
                     gas gas_remaining wei
                    args (10000 * cd[4]) - (fee * cd[4]) / 10000, Array(len=('cd', 36).length, data=mem[ceil32(ceil32(('cd', 132).length)) + 261 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
            else:
                _213 = sha3(mem[ceil32(ceil32(('cd', 132).length)) + 97 len ('cd', 132).length + 32])
                mem[ceil32(ceil32(('cd', 132).length)) + 133] = 128
                mem[ceil32(ceil32(('cd', 132).length)) + 229] = ('cd', 36).length
                idx = 0
                s = ceil32(ceil32(('cd', 132).length)) + 261
                t = cd[36] + 36
                while idx < ('cd', 36).length:
                    require cd[t] == address(cd[t])
                    mem[s] = address(cd[t])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(ceil32(('cd', 132).length)) + 165] = address(cd[68])
                mem[ceil32(ceil32(('cd', 132).length)) + 197] = cd[100]
                require ext_code.size(stor[_213])
                call stor[_213].swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value msg.value - (msg.value * fee / 10000) wei
                     gas gas_remaining wei
                    args (10000 * cd[4]) - (fee * cd[4]) / 10000, Array(len=('cd', 36).length, data=mem[ceil32(ceil32(('cd', 132).length)) + 261 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(ceil32(('cd', 132).length)) + 97] = 32
            mem[ceil32(ceil32(('cd', 132).length)) + 129] = ('cd', 132).length
            mem[ceil32(ceil32(('cd', 132).length)) + 161 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len ('cd', 132).length], mem[('cd', 132).length + 128 len 31 * ('cd', 132).length]
            return Array(len=('cd', 132).length, data=mem[ceil32(ceil32(('cd', 132).length)) + 161 len 32 * ('cd', 132).length])
        if ceil32(('cd', 132).length) <= ('cd', 132).length:
            _203 = sha3(mem[ceil32(ceil32(('cd', 132).length)) + 97 len ('cd', 132).length + 32])
            mem[ceil32(ceil32(('cd', 132).length)) + 97] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[ceil32(ceil32(('cd', 132).length)) + 101] = (10000 * cd[4]) - (fee * cd[4]) / 10000
            mem[ceil32(ceil32(('cd', 132).length)) + 133] = 128
            mem[ceil32(ceil32(('cd', 132).length)) + 229] = ('cd', 36).length
            idx = 0
            s = ceil32(ceil32(('cd', 132).length)) + 261
            t = cd[36] + 36
            while idx < ('cd', 36).length:
                require cd[t] == address(cd[t])
                mem[s] = address(cd[t])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(ceil32(('cd', 132).length)) + 165] = address(cd[68])
            mem[ceil32(ceil32(('cd', 132).length)) + 197] = cd[100]
            call stor[_203].swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value msg.value - (msg.value * fee / 10000) wei
                 gas gas_remaining wei
                args (10000 * cd[4]) - (fee * cd[4]) / 10000, Array(len=('cd', 36).length, data=mem[ceil32(ceil32(('cd', 132).length)) + 261 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(ceil32(('cd', 132).length)) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 97
            require return_data.size >= 32
            _290 = mem[ceil32(ceil32(('cd', 132).length)) + 97 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32
            require mem[ceil32(ceil32(('cd', 132).length)) + 97 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 <= test266151307()
            require ceil32(ceil32(('cd', 132).length)) + mem[ceil32(ceil32(('cd', 132).length)) + 97 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 128 < ceil32(ceil32(('cd', 132).length)) + return_data.size + 97
            _294 = mem[ceil32(ceil32(('cd', 132).length)) + mem[ceil32(ceil32(('cd', 132).length)) + 97 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 97]
            if mem[ceil32(ceil32(('cd', 132).length)) + mem[ceil32(ceil32(('cd', 132).length)) + 97 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 97] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[ceil32(ceil32(('cd', 132).length)) + mem[ceil32(ceil32(('cd', 132).length)) + 97 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 97]) + 1 < 0 or ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(ceil32(('cd', 132).length)) + mem[ceil32(ceil32(('cd', 132).length)) + 97 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 97]) + 98 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(ceil32(('cd', 132).length)) + mem[ceil32(ceil32(('cd', 132).length)) + 97 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 97]) + 98
            mem[ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 97] = _294
            require _290 + (32 * _294) + 32 <= return_data.size
            mem[ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 129 len ceil32(32 * _294)] = mem[ceil32(ceil32(('cd', 132).length)) + _290 + 129 len ceil32(32 * _294)]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _294
            mem[mem[64] + 64 len 32 * _294] = mem[ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 129 len 32 * _294]
            return Array(len=_294, data=mem[mem[64] + 64 len 32 * _294])
        _211 = sha3(mem[ceil32(ceil32(('cd', 132).length)) + 97 len ('cd', 132).length + 32])
        mem[ceil32(ceil32(('cd', 132).length)) + 97] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
        mem[ceil32(ceil32(('cd', 132).length)) + 101] = (10000 * cd[4]) - (fee * cd[4]) / 10000
        mem[ceil32(ceil32(('cd', 132).length)) + 133] = 128
        mem[ceil32(ceil32(('cd', 132).length)) + 229] = ('cd', 36).length
        idx = 0
        s = ceil32(ceil32(('cd', 132).length)) + 261
        t = cd[36] + 36
        while idx < ('cd', 36).length:
            require cd[t] == address(cd[t])
            mem[s] = address(cd[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(ceil32(('cd', 132).length)) + 165] = address(cd[68])
        mem[ceil32(ceil32(('cd', 132).length)) + 197] = cd[100]
        call stor[_211].swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value msg.value - (msg.value * fee / 10000) wei
             gas gas_remaining wei
            args (10000 * cd[4]) - (fee * cd[4]) / 10000, Array(len=('cd', 36).length, data=mem[ceil32(ceil32(('cd', 132).length)) + 261 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(ceil32(('cd', 132).length)) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 97
        require return_data.size >= 32
        _291 = mem[ceil32(ceil32(('cd', 132).length)) + 97 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32
        require mem[ceil32(ceil32(('cd', 132).length)) + 97 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 <= test266151307()
        require ceil32(ceil32(('cd', 132).length)) + mem[ceil32(ceil32(('cd', 132).length)) + 97 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 128 < ceil32(ceil32(('cd', 132).length)) + return_data.size + 97
        _295 = mem[ceil32(ceil32(('cd', 132).length)) + mem[ceil32(ceil32(('cd', 132).length)) + 97 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 97]
        if mem[ceil32(ceil32(('cd', 132).length)) + mem[ceil32(ceil32(('cd', 132).length)) + 97 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 97] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(ceil32(('cd', 132).length)) + mem[ceil32(ceil32(('cd', 132).length)) + 97 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 97]) + 1 < 0 or ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(ceil32(('cd', 132).length)) + mem[ceil32(ceil32(('cd', 132).length)) + 97 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 97]) + 98 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(ceil32(('cd', 132).length)) + mem[ceil32(ceil32(('cd', 132).length)) + 97 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 97]) + 98
        mem[ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 97] = _295
        require _291 + (32 * _295) + 32 <= return_data.size
        mem[ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 129 len ceil32(32 * _295)] = mem[ceil32(ceil32(('cd', 132).length)) + _291 + 129 len ceil32(32 * _295)]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _295
        mem[mem[64] + 64 len 32 * _295] = mem[ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 129 len 32 * _295]
        return Array(len=_295, data=mem[mem[64] + 64 len 32 * _295])
    if cd[164]:
        if ceil32(('cd', 132).length) <= ('cd', 132).length:
            _209 = sha3(mem[ceil32(ceil32(('cd', 132).length)) + 97 len ('cd', 132).length + 32])
            mem[ceil32(ceil32(('cd', 132).length)) + 133] = 128
            mem[ceil32(ceil32(('cd', 132).length)) + 229] = ('cd', 36).length
            idx = 0
            s = ceil32(ceil32(('cd', 132).length)) + 261
            t = cd[36] + 36
            while idx < ('cd', 36).length:
                require cd[t] == address(cd[t])
                mem[s] = address(cd[t])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(ceil32(('cd', 132).length)) + 165] = address(cd[68])
            mem[ceil32(ceil32(('cd', 132).length)) + 197] = cd[100]
            require ext_code.size(stor[_209])
            call stor[_209].swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value msg.value - (msg.value * fee / 10000) wei
                 gas gas_remaining wei
                args (10000 * cd[4]) - (fee * cd[4]) / 10000, Array(len=('cd', 36).length, data=mem[ceil32(ceil32(('cd', 132).length)) + 261 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
        else:
            _217 = sha3(mem[ceil32(ceil32(('cd', 132).length)) + 97 len ('cd', 132).length + 32])
            mem[ceil32(ceil32(('cd', 132).length)) + 133] = 128
            mem[ceil32(ceil32(('cd', 132).length)) + 229] = ('cd', 36).length
            idx = 0
            s = ceil32(ceil32(('cd', 132).length)) + 261
            t = cd[36] + 36
            while idx < ('cd', 36).length:
                require cd[t] == address(cd[t])
                mem[s] = address(cd[t])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(ceil32(('cd', 132).length)) + 165] = address(cd[68])
            mem[ceil32(ceil32(('cd', 132).length)) + 197] = cd[100]
            require ext_code.size(stor[_217])
            call stor[_217].swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value msg.value - (msg.value * fee / 10000) wei
                 gas gas_remaining wei
                args (10000 * cd[4]) - (fee * cd[4]) / 10000, Array(len=('cd', 36).length, data=mem[ceil32(ceil32(('cd', 132).length)) + 261 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(ceil32(('cd', 132).length)) + 97] = 32
        mem[ceil32(ceil32(('cd', 132).length)) + 129] = ('cd', 132).length
        mem[ceil32(ceil32(('cd', 132).length)) + 161 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len ('cd', 132).length], mem[('cd', 132).length + 128 len 31 * ('cd', 132).length]
        return Array(len=('cd', 132).length, data=mem[ceil32(ceil32(('cd', 132).length)) + 161 len 32 * ('cd', 132).length])
    if ceil32(('cd', 132).length) <= ('cd', 132).length:
        _207 = sha3(mem[ceil32(ceil32(('cd', 132).length)) + 97 len ('cd', 132).length + 32])
        mem[ceil32(ceil32(('cd', 132).length)) + 97] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
        mem[ceil32(ceil32(('cd', 132).length)) + 101] = (10000 * cd[4]) - (fee * cd[4]) / 10000
        mem[ceil32(ceil32(('cd', 132).length)) + 133] = 128
        mem[ceil32(ceil32(('cd', 132).length)) + 229] = ('cd', 36).length
        idx = 0
        s = ceil32(ceil32(('cd', 132).length)) + 261
        t = cd[36] + 36
        while idx < ('cd', 36).length:
            require cd[t] == address(cd[t])
            mem[s] = address(cd[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(ceil32(('cd', 132).length)) + 165] = address(cd[68])
        mem[ceil32(ceil32(('cd', 132).length)) + 197] = cd[100]
        call stor[_207].swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value msg.value - (msg.value * fee / 10000) wei
             gas gas_remaining wei
            args (10000 * cd[4]) - (fee * cd[4]) / 10000, Array(len=('cd', 36).length, data=mem[ceil32(ceil32(('cd', 132).length)) + 261 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(ceil32(('cd', 132).length)) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 97
        require return_data.size >= 32
        _292 = mem[ceil32(ceil32(('cd', 132).length)) + 97 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32
        require mem[ceil32(ceil32(('cd', 132).length)) + 97 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 <= test266151307()
        require ceil32(ceil32(('cd', 132).length)) + mem[ceil32(ceil32(('cd', 132).length)) + 97 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 128 < ceil32(ceil32(('cd', 132).length)) + return_data.size + 97
        _298 = mem[ceil32(ceil32(('cd', 132).length)) + mem[ceil32(ceil32(('cd', 132).length)) + 97 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 97]
        if mem[ceil32(ceil32(('cd', 132).length)) + mem[ceil32(ceil32(('cd', 132).length)) + 97 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 97] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(ceil32(('cd', 132).length)) + mem[ceil32(ceil32(('cd', 132).length)) + 97 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 97]) + 1 < 0 or ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(ceil32(('cd', 132).length)) + mem[ceil32(ceil32(('cd', 132).length)) + 97 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 97]) + 98 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(ceil32(('cd', 132).length)) + mem[ceil32(ceil32(('cd', 132).length)) + 97 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 97]) + 98
        mem[ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 97] = _298
        require _292 + (32 * _298) + 32 <= return_data.size
        mem[ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 129 len ceil32(32 * _298)] = mem[ceil32(ceil32(('cd', 132).length)) + _292 + 129 len ceil32(32 * _298)]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _298
        mem[mem[64] + 64 len 32 * _298] = mem[ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 129 len 32 * _298]
        return Array(len=_298, data=mem[mem[64] + 64 len 32 * _298])
    _215 = sha3(mem[ceil32(ceil32(('cd', 132).length)) + 97 len ('cd', 132).length + 32])
    mem[ceil32(ceil32(('cd', 132).length)) + 97] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[ceil32(ceil32(('cd', 132).length)) + 101] = (10000 * cd[4]) - (fee * cd[4]) / 10000
    mem[ceil32(ceil32(('cd', 132).length)) + 133] = 128
    mem[ceil32(ceil32(('cd', 132).length)) + 229] = ('cd', 36).length
    idx = 0
    s = ceil32(ceil32(('cd', 132).length)) + 261
    t = cd[36] + 36
    while idx < ('cd', 36).length:
        require cd[t] == address(cd[t])
        mem[s] = address(cd[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(ceil32(('cd', 132).length)) + 165] = address(cd[68])
    mem[ceil32(ceil32(('cd', 132).length)) + 197] = cd[100]
    call stor[_215].swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value - (msg.value * fee / 10000) wei
         gas gas_remaining wei
        args (10000 * cd[4]) - (fee * cd[4]) / 10000, Array(len=('cd', 36).length, data=mem[ceil32(ceil32(('cd', 132).length)) + 261 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(ceil32(('cd', 132).length)) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 97
    require return_data.size >= 32
    _293 = mem[ceil32(ceil32(('cd', 132).length)) + 97 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32
    require mem[ceil32(ceil32(('cd', 132).length)) + 97 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 <= test266151307()
    require ceil32(ceil32(('cd', 132).length)) + mem[ceil32(ceil32(('cd', 132).length)) + 97 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 128 < ceil32(ceil32(('cd', 132).length)) + return_data.size + 97
    _299 = mem[ceil32(ceil32(('cd', 132).length)) + mem[ceil32(ceil32(('cd', 132).length)) + 97 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 97]
    if mem[ceil32(ceil32(('cd', 132).length)) + mem[ceil32(ceil32(('cd', 132).length)) + 97 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 97] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(ceil32(('cd', 132).length)) + mem[ceil32(ceil32(('cd', 132).length)) + 97 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 97]) + 1 < 0 or ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(ceil32(('cd', 132).length)) + mem[ceil32(ceil32(('cd', 132).length)) + 97 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 97]) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(ceil32(('cd', 132).length)) + mem[ceil32(ceil32(('cd', 132).length)) + 97 len 4], Mask(224, 32, (10000 * cd[4]) - (fee * cd[4]) / 10000) >> 32 + 97]) + 98
    mem[ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 97] = _299
    require _293 + (32 * _299) + 32 <= return_data.size
    mem[ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 129 len ceil32(32 * _299)] = mem[ceil32(ceil32(('cd', 132).length)) + _293 + 129 len ceil32(32 * _299)]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _299
    mem[mem[64] + 64 len 32 * _299] = mem[ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 129 len 32 * _299]
    return Array(len=_299, data=mem[mem[64] + 64 len 32 * _299])
}



}
