contract main {




// =====================  Runtime code  =====================


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

function setTxFee(uint256 arg1) {
    require msg.sender == owner
    txFee = arg1
}

function setVIPFee(uint256 arg1) {
    require msg.sender == owner
    vIPFee = arg1
}

function getReceiverAddress() {
    if receiverAddress:
        return receiverAddress
    return owner
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function isVIP(address arg1) {
    if owner == arg1:
        return True
    return bool(stor4[address(arg1)])
}

function setReceiverAddress(address arg1) {
    require msg.sender == owner
    require arg1
    receiverAddress = arg1
}

function registerVIP() payable {
    require msg.value >= vIPFee
    if receiverAddress:
        call receiverAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
    else:
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
    require ext_call.success
    stor4[msg.sender] = 1
}

function addToVIPList(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        stor4[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function removeFromVIPList(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        stor4[mem[(32 * idx) + 140 len 20]] = 0
        idx = idx + 1
        continue 
}

function sendEth(address[] arg1, uint256 arg2) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require 1 <= arg1.length
    if arg1.length - 1:
        require arg1.length - 1
        require -arg2 + (arg1.length * arg2) / arg1.length - 1 == arg2
    if owner == msg.sender:
        require msg.value >= -arg2 + (arg1.length * arg2)
    else:
        if stor4[address(msg.sender)]:
            require msg.value >= -arg2 + (arg1.length * arg2)
        else:
            require txFee >= 0
            require msg.value >= txFee - arg2 + (arg1.length * arg2)
    require 255 >= arg1.length
    idx = 1
    s = msg.value
    while uint8(idx) < arg1.length:
        require arg2 <= s
        require uint8(idx) < arg1.length
        call mem[(32 * uint8(idx)) + 140 len 20] with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        idx = idx + 1
        s = s - arg2
        continue 
    emit LogTokenBulkSent(48879, msg.value);
}

function bulkSendETHWithSameValue(address[] arg1, uint256 arg2) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require 1 <= arg1.length
    if arg1.length - 1:
        require arg1.length - 1
        require -arg2 + (arg1.length * arg2) / arg1.length - 1 == arg2
    if owner == msg.sender:
        require msg.value >= -arg2 + (arg1.length * arg2)
    else:
        if stor4[address(msg.sender)]:
            require msg.value >= -arg2 + (arg1.length * arg2)
        else:
            require txFee >= 0
            require msg.value >= txFee - arg2 + (arg1.length * arg2)
    require 255 >= arg1.length
    idx = 1
    s = msg.value
    while uint8(idx) < arg1.length:
        require arg2 <= s
        require uint8(idx) < arg1.length
        call mem[(32 * uint8(idx)) + 140 len 20] with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        idx = idx + 1
        s = s - arg2
        continue 
    emit LogTokenBulkSent(48879, msg.value);
}

function bulksend(address[] arg1, uint256[] arg2) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require 0 < arg2.length
    if owner == msg.sender:
        require msg.value >= mem[(32 * arg1.length) + 160]
    else:
        if stor4[address(msg.sender)]:
            require msg.value >= mem[(32 * arg1.length) + 160]
        else:
            require txFee + mem[(32 * arg1.length) + 160] >= mem[(32 * arg1.length) + 160]
            require msg.value >= txFee + mem[(32 * arg1.length) + 160]
    require arg1.length == arg2.length
    require 255 >= arg1.length
    idx = 1
    s = msg.value
    while uint8(idx) < arg1.length:
        require uint8(idx) < arg2.length
        require mem[(32 * arg1.length) + (32 * uint8(idx)) + 160] <= s
        require uint8(idx) < arg1.length
        require uint8(idx) < arg2.length
        call mem[(32 * uint8(idx)) + 140 len 20] with:
           value mem[(32 * arg1.length) + (32 * uint8(idx)) + 160] wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        idx = idx + 1
        s = s - mem[(32 * arg1.length) + (32 * uint8(idx)) + 160]
        continue 
    emit LogTokenBulkSent(48879, msg.value);
}

function bulkSendETHWithDifferentValue(address[] arg1, uint256[] arg2) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require 0 < arg2.length
    if owner == msg.sender:
        require msg.value >= mem[(32 * arg1.length) + 160]
    else:
        if stor4[address(msg.sender)]:
            require msg.value >= mem[(32 * arg1.length) + 160]
        else:
            require txFee + mem[(32 * arg1.length) + 160] >= mem[(32 * arg1.length) + 160]
            require msg.value >= txFee + mem[(32 * arg1.length) + 160]
    require arg1.length == arg2.length
    require 255 >= arg1.length
    idx = 1
    s = msg.value
    while uint8(idx) < arg1.length:
        require uint8(idx) < arg2.length
        require mem[(32 * arg1.length) + (32 * uint8(idx)) + 160] <= s
        require uint8(idx) < arg1.length
        require uint8(idx) < arg2.length
        call mem[(32 * uint8(idx)) + 140 len 20] with:
           value mem[(32 * arg1.length) + (32 * uint8(idx)) + 160] wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        idx = idx + 1
        s = s - mem[(32 * arg1.length) + (32 * uint8(idx)) + 160]
        continue 
    emit LogTokenBulkSent(48879, msg.value);
}

function getBalance(address arg1) {
    require msg.sender == owner
    if receiverAddress:
        if not arg1:
            call receiverAddress with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        else:
            require ext_code.size(arg1)
            call arg1.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args receiverAddress, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit LogGetToken(address(arg1), receiverAddress, ext_call.return_data[0]);
    else:
        if not arg1:
            call owner with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        else:
            require ext_code.size(arg1)
            call arg1.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args owner, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit LogGetToken(address(arg1), owner, ext_call.return_data[0]);
}

function bulksendToken(address arg1, address[] arg2, uint256[] arg3) payable {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    if owner == msg.sender:
        require arg2.length == arg3.length
        require 255 >= arg2.length
        require 0 < arg3.length
        _13 = mem[(32 * arg2.length) + 160]
        idx = 1
        while uint8(idx) < arg2.length:
            require uint8(idx) < arg2.length
            _58 = mem[(32 * uint8(idx)) + 128]
            require uint8(idx) < arg3.length
            _64 = mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
            mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(_58)
            mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _64
            require ext_code.size(arg1)
            call arg1.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(_58), _64
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        emit LogTokenBulkSent(address(arg1), _13);
    else:
        if stor4[address(msg.sender)]:
            require arg2.length == arg3.length
            require 255 >= arg2.length
            require 0 < arg3.length
            _17 = mem[(32 * arg2.length) + 160]
            idx = 1
            while uint8(idx) < arg2.length:
                require uint8(idx) < arg2.length
                _60 = mem[(32 * uint8(idx)) + 128]
                require uint8(idx) < arg3.length
                _67 = mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(_60)
                mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _67
                require ext_code.size(arg1)
                call arg1.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(_60), _67
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            emit LogTokenBulkSent(address(arg1), _17);
        else:
            require msg.value >= txFee
            require arg2.length == arg3.length
            require 255 >= arg2.length
            require 0 < arg3.length
            _23 = mem[(32 * arg2.length) + 160]
            idx = 1
            while uint8(idx) < arg2.length:
                require uint8(idx) < arg2.length
                _62 = mem[(32 * uint8(idx)) + 128]
                require uint8(idx) < arg3.length
                _70 = mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(_62)
                mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _70
                require ext_code.size(arg1)
                call arg1.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(_62), _70
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            emit LogTokenBulkSent(address(arg1), _23);
}

function bulkSendCoinWithDifferentValue(address arg1, address[] arg2, uint256[] arg3) payable {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    if owner == msg.sender:
        require arg2.length == arg3.length
        require 255 >= arg2.length
        require 0 < arg3.length
        _13 = mem[(32 * arg2.length) + 160]
        idx = 1
        while uint8(idx) < arg2.length:
            require uint8(idx) < arg2.length
            _58 = mem[(32 * uint8(idx)) + 128]
            require uint8(idx) < arg3.length
            _64 = mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
            mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(_58)
            mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _64
            require ext_code.size(arg1)
            call arg1.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(_58), _64
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        emit LogTokenBulkSent(address(arg1), _13);
    else:
        if stor4[address(msg.sender)]:
            require arg2.length == arg3.length
            require 255 >= arg2.length
            require 0 < arg3.length
            _17 = mem[(32 * arg2.length) + 160]
            idx = 1
            while uint8(idx) < arg2.length:
                require uint8(idx) < arg2.length
                _60 = mem[(32 * uint8(idx)) + 128]
                require uint8(idx) < arg3.length
                _67 = mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(_60)
                mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _67
                require ext_code.size(arg1)
                call arg1.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(_60), _67
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            emit LogTokenBulkSent(address(arg1), _17);
        else:
            require msg.value >= txFee
            require arg2.length == arg3.length
            require 255 >= arg2.length
            require 0 < arg3.length
            _23 = mem[(32 * arg2.length) + 160]
            idx = 1
            while uint8(idx) < arg2.length:
                require uint8(idx) < arg2.length
                _62 = mem[(32 * uint8(idx)) + 128]
                require uint8(idx) < arg3.length
                _70 = mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(_62)
                mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _70
                require ext_code.size(arg1)
                call arg1.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(_62), _70
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            emit LogTokenBulkSent(address(arg1), _23);
}

function drop(address arg1, address[] arg2, uint256 arg3) payable {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if owner == msg.sender:
        require 255 >= arg2.length
        require 1 <= arg2.length
        if not arg2.length - 1:
            idx = 1
            while uint8(idx) < arg2.length:
                require uint8(idx) < arg2.length
                _75 = mem[(32 * uint8(idx)) + 128]
                mem[(32 * arg2.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                mem[(32 * arg2.length) + 132] = msg.sender
                mem[(32 * arg2.length) + 164] = address(_75)
                mem[(32 * arg2.length) + 196] = arg3
                require ext_code.size(arg1)
                call arg1.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(_75), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        else:
            require arg2.length - 1
            require -arg3 + (arg2.length * arg3) / arg2.length - 1 == arg3
            idx = 1
            while uint8(idx) < arg2.length:
                require uint8(idx) < arg2.length
                _78 = mem[(32 * uint8(idx)) + 128]
                mem[(32 * arg2.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                mem[(32 * arg2.length) + 132] = msg.sender
                mem[(32 * arg2.length) + 164] = address(_78)
                mem[(32 * arg2.length) + 196] = arg3
                require ext_code.size(arg1)
                call arg1.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(_78), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
    else:
        if stor4[address(msg.sender)]:
            require 255 >= arg2.length
            require 1 <= arg2.length
            if not arg2.length - 1:
                idx = 1
                while uint8(idx) < arg2.length:
                    require uint8(idx) < arg2.length
                    _81 = mem[(32 * uint8(idx)) + 128]
                    mem[(32 * arg2.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg2.length) + 132] = msg.sender
                    mem[(32 * arg2.length) + 164] = address(_81)
                    mem[(32 * arg2.length) + 196] = arg3
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(_81), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                require arg2.length - 1
                require -arg3 + (arg2.length * arg3) / arg2.length - 1 == arg3
                idx = 1
                while uint8(idx) < arg2.length:
                    require uint8(idx) < arg2.length
                    _84 = mem[(32 * uint8(idx)) + 128]
                    mem[(32 * arg2.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg2.length) + 132] = msg.sender
                    mem[(32 * arg2.length) + 164] = address(_84)
                    mem[(32 * arg2.length) + 196] = arg3
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(_84), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
        else:
            require msg.value >= txFee
            require 255 >= arg2.length
            require 1 <= arg2.length
            if not arg2.length - 1:
                idx = 1
                while uint8(idx) < arg2.length:
                    require uint8(idx) < arg2.length
                    _87 = mem[(32 * uint8(idx)) + 128]
                    mem[(32 * arg2.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg2.length) + 132] = msg.sender
                    mem[(32 * arg2.length) + 164] = address(_87)
                    mem[(32 * arg2.length) + 196] = arg3
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(_87), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                require arg2.length - 1
                require -arg3 + (arg2.length * arg3) / arg2.length - 1 == arg3
                idx = 1
                while uint8(idx) < arg2.length:
                    require uint8(idx) < arg2.length
                    _90 = mem[(32 * uint8(idx)) + 128]
                    mem[(32 * arg2.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg2.length) + 132] = msg.sender
                    mem[(32 * arg2.length) + 164] = address(_90)
                    mem[(32 * arg2.length) + 196] = arg3
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(_90), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
    emit LogTokenBulkSent(address(arg1), -arg3 + (arg2.length * arg3));
}

function bulkSendCoinWithSameValue(address arg1, address[] arg2, uint256 arg3) payable {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if owner == msg.sender:
        require 255 >= arg2.length
        require 1 <= arg2.length
        if not arg2.length - 1:
            idx = 1
            while uint8(idx) < arg2.length:
                require uint8(idx) < arg2.length
                _75 = mem[(32 * uint8(idx)) + 128]
                mem[(32 * arg2.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                mem[(32 * arg2.length) + 132] = msg.sender
                mem[(32 * arg2.length) + 164] = address(_75)
                mem[(32 * arg2.length) + 196] = arg3
                require ext_code.size(arg1)
                call arg1.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(_75), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        else:
            require arg2.length - 1
            require -arg3 + (arg2.length * arg3) / arg2.length - 1 == arg3
            idx = 1
            while uint8(idx) < arg2.length:
                require uint8(idx) < arg2.length
                _78 = mem[(32 * uint8(idx)) + 128]
                mem[(32 * arg2.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                mem[(32 * arg2.length) + 132] = msg.sender
                mem[(32 * arg2.length) + 164] = address(_78)
                mem[(32 * arg2.length) + 196] = arg3
                require ext_code.size(arg1)
                call arg1.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(_78), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
    else:
        if stor4[address(msg.sender)]:
            require 255 >= arg2.length
            require 1 <= arg2.length
            if not arg2.length - 1:
                idx = 1
                while uint8(idx) < arg2.length:
                    require uint8(idx) < arg2.length
                    _81 = mem[(32 * uint8(idx)) + 128]
                    mem[(32 * arg2.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg2.length) + 132] = msg.sender
                    mem[(32 * arg2.length) + 164] = address(_81)
                    mem[(32 * arg2.length) + 196] = arg3
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(_81), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                require arg2.length - 1
                require -arg3 + (arg2.length * arg3) / arg2.length - 1 == arg3
                idx = 1
                while uint8(idx) < arg2.length:
                    require uint8(idx) < arg2.length
                    _84 = mem[(32 * uint8(idx)) + 128]
                    mem[(32 * arg2.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg2.length) + 132] = msg.sender
                    mem[(32 * arg2.length) + 164] = address(_84)
                    mem[(32 * arg2.length) + 196] = arg3
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(_84), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
        else:
            require msg.value >= txFee
            require 255 >= arg2.length
            require 1 <= arg2.length
            if not arg2.length - 1:
                idx = 1
                while uint8(idx) < arg2.length:
                    require uint8(idx) < arg2.length
                    _87 = mem[(32 * uint8(idx)) + 128]
                    mem[(32 * arg2.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg2.length) + 132] = msg.sender
                    mem[(32 * arg2.length) + 164] = address(_87)
                    mem[(32 * arg2.length) + 196] = arg3
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(_87), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                require arg2.length - 1
                require -arg3 + (arg2.length * arg3) / arg2.length - 1 == arg3
                idx = 1
                while uint8(idx) < arg2.length:
                    require uint8(idx) < arg2.length
                    _90 = mem[(32 * uint8(idx)) + 128]
                    mem[(32 * arg2.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg2.length) + 132] = msg.sender
                    mem[(32 * arg2.length) + 164] = address(_90)
                    mem[(32 * arg2.length) + 196] = arg3
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(_90), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
    emit LogTokenBulkSent(address(arg1), -arg3 + (arg2.length * arg3));
}



}
