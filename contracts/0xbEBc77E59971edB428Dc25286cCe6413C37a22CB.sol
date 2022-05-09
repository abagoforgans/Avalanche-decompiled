contract main {




// =====================  Runtime code  =====================


#
#  - multisendToken(address arg1, address[] arg2, uint256[] arg3)
#  - mutiSendCoinWithDifferentValue(address arg1, address[] arg2, uint256[] arg3)
#
address owner;
address receiverAddress;
uint256 txFee;
uint256 vIPFee;
mapping of uint8 stor4;

function receiverAddress() {
    return receiverAddress
}

function owner() {
    return owner
}

function vipList(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor4[arg1])
}

function txFee() {
    return txFee
}

function VIPFee() {
    return vIPFee
}

function _fallback() payable {
    revert
}

function getReceiverAddress() {
    if receiverAddress:
        return receiverAddress
    return owner
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function isVIP(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 == owner:
        return True
    return bool(stor4[address(arg1)])
}

function setReceiverAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1
    receiverAddress = arg1
}

function removeEth(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call arg1 with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to send Ether'
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

function registerVIP() payable {
    if msg.value < vIPFee:
        revert with 0, 'Invalid eth amount'
    if receiverAddress:
        call receiverAddress with:
           value msg.value wei
             gas gas_remaining wei
    else:
        call owner with:
           value msg.value wei
             gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to send Ether'
    stor4[address(msg.sender)] = 1
}

function removeErc20(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function addToVIPList(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if (32 * arg1.length) + 128 > test266151307() or (32 * arg1.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        stor4[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function removeFromVIPList(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if (32 * arg1.length) + 128 > test266151307() or (32 * arg1.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        stor4[mem[(32 * idx) + 140 len 20]] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sendEth(address[] arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if (32 * arg1.length) + 128 > test266151307() or (32 * arg1.length) + 128 < 96:
        revert with 'NH{q', 65
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 == arg2
    if arg1.length and arg2 > -1 / arg1.length:
        revert with 'NH{q', 17
    if msg.sender == owner:
        if msg.value < arg1.length * arg2:
            revert with 0, 'Invalid eth amount'
        if arg1.length > 512:
            revert with 0, 'Invalid length'
        idx = 0
        s = msg.value
        while idx < arg1.length:
            if s < arg2:
                revert with 'NH{q', 17
            if idx >= mem[96]:
                revert with 'NH{q', 50
            call mem[(32 * idx) + 140 len 20] with:
               value arg2 wei
                 gas gas_remaining wei
            if return_data.size:
                _129 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_129] = return_data.size
                mem[_129 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'Failed to send Ether'
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s - arg2
            continue 
    else:
        if stor4[address(msg.sender)]:
            if msg.value < arg1.length * arg2:
                revert with 0, 'Invalid eth amount'
            if arg1.length > 512:
                revert with 0, 'Invalid length'
            idx = 0
            s = msg.value
            while idx < arg1.length:
                if s < arg2:
                    revert with 'NH{q', 17
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                call mem[(32 * idx) + 140 len 20] with:
                   value arg2 wei
                     gas gas_remaining wei
                if return_data.size:
                    _131 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_131] = return_data.size
                    mem[_131 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'Failed to send Ether'
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s - arg2
                continue 
        else:
            if arg1.length * arg2 > -txFee - 1:
                revert with 'NH{q', 17
            if msg.value < (arg1.length * arg2) + txFee:
                revert with 0, 'Invalid eth amount'
            if arg1.length > 512:
                revert with 0, 'Invalid length'
            idx = 0
            s = msg.value
            while idx < arg1.length:
                if s < arg2:
                    revert with 'NH{q', 17
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                call mem[(32 * idx) + 140 len 20] with:
                   value arg2 wei
                     gas gas_remaining wei
                if return_data.size:
                    _130 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_130] = return_data.size
                    mem[_130 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'Failed to send Ether'
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s - arg2
                continue 
    emit LogTokenMultiSent(0, msg.value);
}

function mutiSendETHWithSameValue(address[] arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if (32 * arg1.length) + 128 > test266151307() or (32 * arg1.length) + 128 < 96:
        revert with 'NH{q', 65
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 == arg2
    if arg1.length and arg2 > -1 / arg1.length:
        revert with 'NH{q', 17
    if msg.sender == owner:
        if msg.value < arg1.length * arg2:
            revert with 0, 'Invalid eth amount'
        if arg1.length > 512:
            revert with 0, 'Invalid length'
        idx = 0
        s = msg.value
        while idx < arg1.length:
            if s < arg2:
                revert with 'NH{q', 17
            if idx >= mem[96]:
                revert with 'NH{q', 50
            call mem[(32 * idx) + 140 len 20] with:
               value arg2 wei
                 gas gas_remaining wei
            if return_data.size:
                _129 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_129] = return_data.size
                mem[_129 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'Failed to send Ether'
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s - arg2
            continue 
    else:
        if stor4[address(msg.sender)]:
            if msg.value < arg1.length * arg2:
                revert with 0, 'Invalid eth amount'
            if arg1.length > 512:
                revert with 0, 'Invalid length'
            idx = 0
            s = msg.value
            while idx < arg1.length:
                if s < arg2:
                    revert with 'NH{q', 17
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                call mem[(32 * idx) + 140 len 20] with:
                   value arg2 wei
                     gas gas_remaining wei
                if return_data.size:
                    _131 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_131] = return_data.size
                    mem[_131 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'Failed to send Ether'
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s - arg2
                continue 
        else:
            if arg1.length * arg2 > -txFee - 1:
                revert with 'NH{q', 17
            if msg.value < (arg1.length * arg2) + txFee:
                revert with 0, 'Invalid eth amount'
            if arg1.length > 512:
                revert with 0, 'Invalid length'
            idx = 0
            s = msg.value
            while idx < arg1.length:
                if s < arg2:
                    revert with 'NH{q', 17
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                call mem[(32 * idx) + 140 len 20] with:
                   value arg2 wei
                     gas gas_remaining wei
                if return_data.size:
                    _130 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_130] = return_data.size
                    mem[_130 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'Failed to send Ether'
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s - arg2
                continue 
    emit LogTokenMultiSent(0, msg.value);
}

function drop(address arg1, address[] arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if (32 * arg2.length) + 128 > test266151307() or (32 * arg2.length) + 128 < 96:
        revert with 'NH{q', 65
    mem[96] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg3 == arg3
    if msg.sender == owner:
        if arg2.length > 512:
            revert with 0, 'Invalid length'
        if arg2.length and arg3 > -1 / arg2.length:
            revert with 'NH{q', 17
        mem[(32 * arg2.length) + 132] = msg.sender
        mem[(32 * arg2.length) + 164] = this.address
        mem[(32 * arg2.length) + 196] = arg2.length * arg3
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg2.length * arg3
        mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg2.length) + ceil32(return_data.size) + 128
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        idx = 0
        while idx < arg2.length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
            mem[mem[64] + 36] = arg3
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], arg3
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _131 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_131] == bool(mem[_131])
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        mem[0] = msg.sender
        mem[32] = 4
        if stor4[address(msg.sender)]:
            if arg2.length > 512:
                revert with 0, 'Invalid length'
            if arg2.length and arg3 > -1 / arg2.length:
                revert with 'NH{q', 17
            mem[(32 * arg2.length) + 132] = msg.sender
            mem[(32 * arg2.length) + 164] = this.address
            mem[(32 * arg2.length) + 196] = arg2.length * arg3
            require ext_code.size(arg1)
            call arg1.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg2.length * arg3
            mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * arg2.length) + ceil32(return_data.size) + 128
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            idx = 0
            while idx < arg2.length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                mem[mem[64] + 36] = arg3
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], arg3
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _132 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_132] == bool(mem[_132])
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        else:
            if msg.value < txFee:
                revert with 0, 'Invalid eth amount'
            if arg2.length > 512:
                revert with 0, 'Invalid length'
            if arg2.length and arg3 > -1 / arg2.length:
                revert with 'NH{q', 17
            mem[(32 * arg2.length) + 132] = msg.sender
            mem[(32 * arg2.length) + 164] = this.address
            mem[(32 * arg2.length) + 196] = arg2.length * arg3
            require ext_code.size(arg1)
            call arg1.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg2.length * arg3
            mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * arg2.length) + ceil32(return_data.size) + 128
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            idx = 0
            while idx < arg2.length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                mem[mem[64] + 36] = arg3
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], arg3
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _133 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_133] == bool(mem[_133])
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
    emit LogTokenMultiSent(address(arg1), arg2.length * arg3);
}

function mutiSendCoinWithSameValue(address arg1, address[] arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if (32 * arg2.length) + 128 > test266151307() or (32 * arg2.length) + 128 < 96:
        revert with 'NH{q', 65
    mem[96] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg3 == arg3
    if msg.sender == owner:
        if arg2.length > 512:
            revert with 0, 'Invalid length'
        if arg2.length and arg3 > -1 / arg2.length:
            revert with 'NH{q', 17
        mem[(32 * arg2.length) + 132] = msg.sender
        mem[(32 * arg2.length) + 164] = this.address
        mem[(32 * arg2.length) + 196] = arg2.length * arg3
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg2.length * arg3
        mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg2.length) + ceil32(return_data.size) + 128
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        idx = 0
        while idx < arg2.length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
            mem[mem[64] + 36] = arg3
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], arg3
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _131 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_131] == bool(mem[_131])
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        mem[0] = msg.sender
        mem[32] = 4
        if stor4[address(msg.sender)]:
            if arg2.length > 512:
                revert with 0, 'Invalid length'
            if arg2.length and arg3 > -1 / arg2.length:
                revert with 'NH{q', 17
            mem[(32 * arg2.length) + 132] = msg.sender
            mem[(32 * arg2.length) + 164] = this.address
            mem[(32 * arg2.length) + 196] = arg2.length * arg3
            require ext_code.size(arg1)
            call arg1.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg2.length * arg3
            mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * arg2.length) + ceil32(return_data.size) + 128
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            idx = 0
            while idx < arg2.length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                mem[mem[64] + 36] = arg3
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], arg3
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _132 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_132] == bool(mem[_132])
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        else:
            if msg.value < txFee:
                revert with 0, 'Invalid eth amount'
            if arg2.length > 512:
                revert with 0, 'Invalid length'
            if arg2.length and arg3 > -1 / arg2.length:
                revert with 'NH{q', 17
            mem[(32 * arg2.length) + 132] = msg.sender
            mem[(32 * arg2.length) + 164] = this.address
            mem[(32 * arg2.length) + 196] = arg2.length * arg3
            require ext_code.size(arg1)
            call arg1.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg2.length * arg3
            mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * arg2.length) + ceil32(return_data.size) + 128
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            idx = 0
            while idx < arg2.length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                mem[mem[64] + 36] = arg3
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], arg3
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _133 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_133] == bool(mem[_133])
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
    emit LogTokenMultiSent(address(arg1), arg2.length * arg3);
}

function multisend(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if (32 * arg1.length) + 128 > test266151307() or (32 * arg1.length) + 128 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if (32 * arg1.length) + (32 * arg2.length) + 160 > test266151307() or (32 * arg2.length) + 160 < 128:
        revert with 'NH{q', 65
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = (32 * arg1.length) + 160
    while idx < arg2.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 0
    while idx < arg2.length:
        if idx >= arg2.length:
            revert with 'NH{q', 50
        if s > -mem[(32 * idx) + (32 * arg1.length) + 160] - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + mem[(32 * idx) + (32 * arg1.length) + 160]
        continue 
    if msg.sender == owner:
        if msg.value < s * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length:
            revert with 0, 'Invalid eth amount'
        if arg1.length != arg2.length:
            revert with 0, 'Args are not math'
        if arg1.length > 255:
            revert with 0, 'Invalid length'
        idx = 0
        while idx < arg1.length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if idx >= mem[(32 * arg1.length) + 128]:
                revert with 'NH{q', 50
            call mem[(32 * idx) + 140 len 20] with:
               value mem[(32 * idx) + (32 * arg1.length) + 160] wei
                 gas gas_remaining wei
            if return_data.size:
                _320 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_320] = return_data.size
                mem[_320 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'Failed to send Ether'
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        if stor4[address(msg.sender)]:
            if msg.value < s * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length:
                revert with 0, 'Invalid eth amount'
            if arg1.length != arg2.length:
                revert with 0, 'Args are not math'
            if arg1.length > 255:
                revert with 0, 'Invalid length'
            idx = 0
            while idx < arg1.length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx >= mem[(32 * arg1.length) + 128]:
                    revert with 'NH{q', 50
                call mem[(32 * idx) + 140 len 20] with:
                   value mem[(32 * idx) + (32 * arg1.length) + 160] wei
                     gas gas_remaining wei
                if return_data.size:
                    _322 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_322] = return_data.size
                    mem[_322 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'Failed to send Ether'
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        else:
            if s * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length > -txFee - 1:
                revert with 'NH{q', 17
            if msg.value < (s * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + txFee:
                revert with 0, 'Invalid eth amount'
            if arg1.length != arg2.length:
                revert with 0, 'Args are not math'
            if arg1.length > 255:
                revert with 0, 'Invalid length'
            idx = 0
            while idx < arg1.length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx >= mem[(32 * arg1.length) + 128]:
                    revert with 'NH{q', 50
                call mem[(32 * idx) + 140 len 20] with:
                   value mem[(32 * idx) + (32 * arg1.length) + 160] wei
                     gas gas_remaining wei
                if return_data.size:
                    _321 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_321] = return_data.size
                    mem[_321 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'Failed to send Ether'
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
    emit LogTokenMultiSent(0, msg.value);
}

function mutiSendETHWithDifferentValue(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if (32 * arg1.length) + 128 > test266151307() or (32 * arg1.length) + 128 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if (32 * arg1.length) + (32 * arg2.length) + 160 > test266151307() or (32 * arg2.length) + 160 < 128:
        revert with 'NH{q', 65
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = (32 * arg1.length) + 160
    while idx < arg2.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 0
    while idx < arg2.length:
        if idx >= arg2.length:
            revert with 'NH{q', 50
        if s > -mem[(32 * idx) + (32 * arg1.length) + 160] - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + mem[(32 * idx) + (32 * arg1.length) + 160]
        continue 
    if msg.sender == owner:
        if msg.value < s * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length:
            revert with 0, 'Invalid eth amount'
        if arg1.length != arg2.length:
            revert with 0, 'Args are not math'
        if arg1.length > 255:
            revert with 0, 'Invalid length'
        idx = 0
        while idx < arg1.length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if idx >= mem[(32 * arg1.length) + 128]:
                revert with 'NH{q', 50
            call mem[(32 * idx) + 140 len 20] with:
               value mem[(32 * idx) + (32 * arg1.length) + 160] wei
                 gas gas_remaining wei
            if return_data.size:
                _320 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_320] = return_data.size
                mem[_320 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'Failed to send Ether'
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        if stor4[address(msg.sender)]:
            if msg.value < s * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length:
                revert with 0, 'Invalid eth amount'
            if arg1.length != arg2.length:
                revert with 0, 'Args are not math'
            if arg1.length > 255:
                revert with 0, 'Invalid length'
            idx = 0
            while idx < arg1.length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx >= mem[(32 * arg1.length) + 128]:
                    revert with 'NH{q', 50
                call mem[(32 * idx) + 140 len 20] with:
                   value mem[(32 * idx) + (32 * arg1.length) + 160] wei
                     gas gas_remaining wei
                if return_data.size:
                    _322 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_322] = return_data.size
                    mem[_322 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'Failed to send Ether'
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        else:
            if s * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length > -txFee - 1:
                revert with 'NH{q', 17
            if msg.value < (s * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length) + txFee:
                revert with 0, 'Invalid eth amount'
            if arg1.length != arg2.length:
                revert with 0, 'Args are not math'
            if arg1.length > 255:
                revert with 0, 'Invalid length'
            idx = 0
            while idx < arg1.length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx >= mem[(32 * arg1.length) + 128]:
                    revert with 'NH{q', 50
                call mem[(32 * idx) + 140 len 20] with:
                   value mem[(32 * idx) + (32 * arg1.length) + 160] wei
                     gas gas_remaining wei
                if return_data.size:
                    _321 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_321] = return_data.size
                    mem[_321 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'Failed to send Ether'
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
    emit LogTokenMultiSent(0, msg.value);
}



}
