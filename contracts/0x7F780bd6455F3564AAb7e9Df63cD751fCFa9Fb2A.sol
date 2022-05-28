contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor4;
uint256 senderFee;
uint256 sub_af823d41;

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function senderFee() {
    return senderFee
}

function sub_af823d41(?) {
    return sub_af823d41
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function sub_cdcf796c(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    owner = arg1
}

function sub_fef8f386(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    senderFee = arg1
}

function sub_506becb2(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_af823d41 = arg1
}

function sub_cfe571ee(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor4[address(arg1)] = 1
}

function sub_157399d8(?) {
    require calldata.size - 4 >= 32
    if owner == arg1:
        return True
    return bool(stor4[address(arg1)])
}

function sub_6ab09f32(?) payable {
    require msg.value >= sub_af823d41
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor4[msg.sender] = 1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2:
        require not allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function sub_897670a7(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
}

function sub_5dda9ce0(?) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
}

function sub_337926ea(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
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

function sub_bf579ce3(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
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

function sub_bc561dac(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if arg1.length:
        require arg1.length
        require arg2 * arg1.length / arg1.length == arg2
    if owner == msg.sender:
        require msg.value >= arg2 * arg1.length
        require arg1.length <= 255
        idx = 0
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
        if owner != msg.sender:
            call owner with:
               value senderFee wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        if stor4[address(msg.sender)]:
            require msg.value >= arg2 * arg1.length
        else:
            require senderFee + (arg2 * arg1.length) >= arg2 * arg1.length
            require msg.value >= senderFee + (arg2 * arg1.length)
        require arg1.length <= 255
        idx = 0
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
        if not stor4[address(msg.sender)]:
            call owner with:
               value senderFee wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    emit 0xdc3ebedc: 48879, msg.value
}

function sub_d389f97c(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if arg1.length:
        require arg1.length
        require arg2 * arg1.length / arg1.length == arg2
    if owner == msg.sender:
        require msg.value >= arg2 * arg1.length
        require arg1.length <= 255
        idx = 0
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
        if owner != msg.sender:
            call owner with:
               value senderFee wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        if stor4[address(msg.sender)]:
            require msg.value >= arg2 * arg1.length
        else:
            require senderFee + (arg2 * arg1.length) >= arg2 * arg1.length
            require msg.value >= senderFee + (arg2 * arg1.length)
        require arg1.length <= 255
        idx = 0
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
        if not stor4[address(msg.sender)]:
            call owner with:
               value senderFee wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    emit 0xdc3ebedc: 48879, msg.value
}

function sub_7702ad1f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    idx = 0
    s = 0
    while uint8(idx) < arg1.length:
        require uint8(idx) < arg2.length
        idx = idx + 1
        s = s + mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
        continue 
    if owner == msg.sender:
        require msg.value >= s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
        require arg1.length == arg2.length
        require arg1.length <= 255
        idx = 0
        s = msg.value
        while uint8(idx) < arg1.length:
            require uint8(idx) < arg2.length
            require mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] <= s
            require uint8(idx) < arg1.length
            require uint8(idx) < arg2.length
            call mem[(32 * uint8(idx)) + 140 len 20] with:
               value mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            idx = idx + 1
            s = s - mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
            continue 
        if owner != msg.sender:
            call owner with:
               value senderFee wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        if stor4[address(msg.sender)]:
            require msg.value >= s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
        else:
            require senderFee + (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) >= s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
            require msg.value >= senderFee + (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None)
        require arg1.length == arg2.length
        require arg1.length <= 255
        idx = 0
        s = msg.value
        while uint8(idx) < arg1.length:
            require uint8(idx) < arg2.length
            require mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] <= s
            require uint8(idx) < arg1.length
            require uint8(idx) < arg2.length
            call mem[(32 * uint8(idx)) + 140 len 20] with:
               value mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            idx = idx + 1
            s = s - mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
            continue 
        if not stor4[address(msg.sender)]:
            call owner with:
               value senderFee wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    emit 0xdc3ebedc: 48879, msg.value
}

function sub_e937bcab(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0
    if owner == msg.sender:
        require arg2.length == arg3.length
        require arg2.length <= 255
        idx = 0
        s = 0
        while uint8(idx) < arg2.length:
            require uint8(idx) < arg3.length
            idx = idx + 1
            s = s + mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
            continue 
        idx = 0
        while uint8(idx) < arg2.length:
            require uint8(idx) < arg2.length
            _112 = mem[(32 * uint8(idx)) + 128]
            require uint8(idx) < arg3.length
            _124 = mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
            mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
            mem[(32 * arg2.length) + (32 * arg3.length) + 196] = address(_112)
            mem[(32 * arg2.length) + (32 * arg3.length) + 228] = _124
            require ext_code.size(arg1)
            call arg1.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(_112), _124
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        if owner != msg.sender:
            call owner with:
               value senderFee wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        if stor4[address(msg.sender)]:
            require arg2.length == arg3.length
            require arg2.length <= 255
            idx = 0
            s = 0
            while uint8(idx) < arg2.length:
                require uint8(idx) < arg3.length
                idx = idx + 1
                s = s + mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                continue 
            idx = 0
            while uint8(idx) < arg2.length:
                require uint8(idx) < arg2.length
                _117 = mem[(32 * uint8(idx)) + 128]
                require uint8(idx) < arg3.length
                _127 = mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
                mem[(32 * arg2.length) + (32 * arg3.length) + 196] = address(_117)
                mem[(32 * arg2.length) + (32 * arg3.length) + 228] = _127
                require ext_code.size(arg1)
                call arg1.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(_117), _127
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        else:
            require msg.value >= senderFee
            require arg2.length == arg3.length
            require arg2.length <= 255
            idx = 0
            s = 0
            while uint8(idx) < arg2.length:
                require uint8(idx) < arg3.length
                idx = idx + 1
                s = s + mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                continue 
            idx = 0
            while uint8(idx) < arg2.length:
                require uint8(idx) < arg2.length
                _122 = mem[(32 * uint8(idx)) + 128]
                require uint8(idx) < arg3.length
                _130 = mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
                mem[(32 * arg2.length) + (32 * arg3.length) + 196] = address(_122)
                mem[(32 * arg2.length) + (32 * arg3.length) + 228] = _130
                require ext_code.size(arg1)
                call arg1.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(_122), _130
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        if not stor4[address(msg.sender)]:
            call owner with:
               value senderFee wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    emit 0xdc3ebedc: address(arg1), s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
}

function sub_f0e319d1(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0
    if owner == msg.sender:
        require arg2.length == arg3.length
        require arg2.length <= 255
        idx = 0
        s = 0
        while uint8(idx) < arg2.length:
            require uint8(idx) < arg3.length
            idx = idx + 1
            s = s + mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
            continue 
        idx = 0
        while uint8(idx) < arg2.length:
            require uint8(idx) < arg2.length
            _112 = mem[(32 * uint8(idx)) + 128]
            require uint8(idx) < arg3.length
            _124 = mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
            mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
            mem[(32 * arg2.length) + (32 * arg3.length) + 196] = address(_112)
            mem[(32 * arg2.length) + (32 * arg3.length) + 228] = _124
            require ext_code.size(arg1)
            call arg1.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(_112), _124
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        if owner != msg.sender:
            call owner with:
               value senderFee wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        if stor4[address(msg.sender)]:
            require arg2.length == arg3.length
            require arg2.length <= 255
            idx = 0
            s = 0
            while uint8(idx) < arg2.length:
                require uint8(idx) < arg3.length
                idx = idx + 1
                s = s + mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                continue 
            idx = 0
            while uint8(idx) < arg2.length:
                require uint8(idx) < arg2.length
                _117 = mem[(32 * uint8(idx)) + 128]
                require uint8(idx) < arg3.length
                _127 = mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
                mem[(32 * arg2.length) + (32 * arg3.length) + 196] = address(_117)
                mem[(32 * arg2.length) + (32 * arg3.length) + 228] = _127
                require ext_code.size(arg1)
                call arg1.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(_117), _127
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        else:
            require msg.value >= senderFee
            require arg2.length == arg3.length
            require arg2.length <= 255
            idx = 0
            s = 0
            while uint8(idx) < arg2.length:
                require uint8(idx) < arg3.length
                idx = idx + 1
                s = s + mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                continue 
            idx = 0
            while uint8(idx) < arg2.length:
                require uint8(idx) < arg2.length
                _122 = mem[(32 * uint8(idx)) + 128]
                require uint8(idx) < arg3.length
                _130 = mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
                mem[(32 * arg2.length) + (32 * arg3.length) + 196] = address(_122)
                mem[(32 * arg2.length) + (32 * arg3.length) + 228] = _130
                require ext_code.size(arg1)
                call arg1.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(_122), _130
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        if not stor4[address(msg.sender)]:
            call owner with:
               value senderFee wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    emit 0xdc3ebedc: address(arg1), s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
}

function sub_4a78f8d3(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    if owner == msg.sender:
        require arg2.length <= 255
        if not arg2.length:
            idx = 0
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
            require arg2.length
            require arg3 * arg2.length / arg2.length == arg3
            idx = 0
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
        if owner != msg.sender:
            call owner with:
               value senderFee wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        if stor4[address(msg.sender)]:
            require arg2.length <= 255
            if not arg2.length:
                idx = 0
                while uint8(idx) < arg2.length:
                    require uint8(idx) < arg2.length
                    _96 = mem[(32 * uint8(idx)) + 128]
                    mem[(32 * arg2.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg2.length) + 132] = msg.sender
                    mem[(32 * arg2.length) + 164] = address(_96)
                    mem[(32 * arg2.length) + 196] = arg3
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(_96), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                require arg2.length
                require arg3 * arg2.length / arg2.length == arg3
                idx = 0
                while uint8(idx) < arg2.length:
                    require uint8(idx) < arg2.length
                    _102 = mem[(32 * uint8(idx)) + 128]
                    mem[(32 * arg2.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg2.length) + 132] = msg.sender
                    mem[(32 * arg2.length) + 164] = address(_102)
                    mem[(32 * arg2.length) + 196] = arg3
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(_102), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
        else:
            require msg.value >= senderFee
            require arg2.length <= 255
            if not arg2.length:
                idx = 0
                while uint8(idx) < arg2.length:
                    require uint8(idx) < arg2.length
                    _108 = mem[(32 * uint8(idx)) + 128]
                    mem[(32 * arg2.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg2.length) + 132] = msg.sender
                    mem[(32 * arg2.length) + 164] = address(_108)
                    mem[(32 * arg2.length) + 196] = arg3
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(_108), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                require arg2.length
                require arg3 * arg2.length / arg2.length == arg3
                idx = 0
                while uint8(idx) < arg2.length:
                    require uint8(idx) < arg2.length
                    _114 = mem[(32 * uint8(idx)) + 128]
                    mem[(32 * arg2.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg2.length) + 132] = msg.sender
                    mem[(32 * arg2.length) + 164] = address(_114)
                    mem[(32 * arg2.length) + 196] = arg3
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(_114), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
        if not stor4[address(msg.sender)]:
            call owner with:
               value senderFee wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    emit 0xdc3ebedc: address(arg1), arg3 * arg2.length
}



}
