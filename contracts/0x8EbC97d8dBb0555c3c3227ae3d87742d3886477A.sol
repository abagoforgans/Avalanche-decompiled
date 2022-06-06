contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
uint256 sub_4e616cbc;
uint256 sub_1471ee75;
uint256 stor4;
uint256 contractStatus;
address stor6;
address sub_b36e8137Address;
address stor8;
uint256 stor9;
array of struct stor10;
mapping of struct stor11;

function sub_1471ee75(?) {
    return sub_1471ee75
}

function sub_4e616cbc(?) {
    return sub_4e616cbc
}

function owner() {
    return owner
}

function sub_b36e8137(?) {
    return sub_b36e8137Address
}

function getContractStatus() {
    return contractStatus
}

function _fallback() payable {
    emit Fallback(msg.sender, msg.value);
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_5ed2b682(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Multi-signer: caller is not the multi-signer'
    sub_1471ee75 = arg1
    emit 0x5de63e1c: arg1
}

function sub_8556aa67(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Multi-signer: caller is not the multi-signer'
    sub_4e616cbc = arg1
    emit 0xf115dd5d: arg1
}

function sub_99024dd0(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Multi-signer: caller is not the multi-signer'
    stor1 = arg1
    emit 0xb55b77d4: msg.sender, arg1
}

function sub_ec5566b3(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Multi-signer: caller is not the multi-signer'
    contractStatus = arg1
    emit 0x71a66a33: msg.sender, arg1
}

function sub_d1997d8f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Multi-signer: caller is not the multi-signer'
    stor10.length++
    stor10[stor10.length].field_0 = address(arg1)
    emit 0x68912701: address(arg1)
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

function sub_9883b60a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Multi-signer: caller is not the multi-signer'
    stor8 = sub_b36e8137Address
    sub_b36e8137Address = address(arg1)
    stor6 = address(arg1)
    emit 0x175881da: msg.sender, address(arg1)
}

function getCurrencyList() {
    mem[64] = (32 * stor10.length) + 128
    mem[96] = stor10.length
    if not stor10.length:
        mem[(32 * stor10.length) + 128] = 32
        mem[(32 * stor10.length) + 160] = stor10.length
        idx = 0
        s = (32 * stor10.length) + 192
        t = 128
        while idx < stor10.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor10.length) + 128
           len (96 * stor10.length) + 64
    mem[128] = address(stor10.field_0)
    idx = 128
    s = 0
    while (32 * stor10.length) + 96 > idx:
        mem[idx + 32] = stor10[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor10.length) + 128] = 32
    mem[(32 * stor10.length) + 160] = stor10.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < stor10.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor10.length) + -mem[64] + 192
}

function sub_7d1f22db(?) {
    require calldata.size - 4 >= 32
    if arg1 >= stor10.length:
        revert with 0, 'invalid index'
    require ext_code.size(stor10[arg1].field_0)
    staticcall stor10[arg1].field_0.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if stor1 and 1 > -1 / stor1:
            revert with 0, 17
        return stor1
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if stor1 and 10^ext_call.return_data[31 len 1] > -1 / stor1:
            revert with 0, 17
        return (stor1 * 10^ext_call.return_data[31 len 1])
    s = 10
    t = 1
    idx = ext_call.return_data[31 len 1]
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    if stor1 and s * t > -1 / stor1:
        revert with 0, 17
    return (stor1 * s * t)
}

function sub_7edb1f42(?) {
    require ext_code.size(stor6)
    staticcall stor6.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if stor9 and 1 > -1 / stor9:
            revert with 0, 17
        if not stor4:
            revert with 0, 18
        return (stor9 / stor4)
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if stor9 and 10^ext_call.return_data[31 len 1] > -1 / stor9:
            revert with 0, 17
        if not stor4:
            revert with 0, 18
        return (stor9 * 10^ext_call.return_data[31 len 1] / stor4)
    s = 10
    t = 1
    idx = ext_call.return_data[31 len 1]
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    if stor9 and s * t > -1 / stor9:
        revert with 0, 17
    if not stor4:
        revert with 0, 18
    return (stor9 * s * t / stor4)
}

function sub_1d882f11(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(stor6)
    staticcall stor6.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if stor11[address(arg1)].field_0 and 1 > -1 / stor11[address(arg1)].field_0:
            revert with 0, 17
        if not stor4:
            revert with 0, 18
        return stor11[address(arg1)].field_0 / stor4, 
               stor11[address(arg1)].field_256,
               stor11[address(arg1)].field_512,
               stor11[address(arg1)].field_768,
               block.timestamp
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if stor11[address(arg1)].field_0 and 10^ext_call.return_data[31 len 1] > -1 / stor11[address(arg1)].field_0:
            revert with 0, 17
        if not stor4:
            revert with 0, 18
        return stor11[address(arg1)].field_0 * 10^ext_call.return_data[31 len 1] / stor4, 
               stor11[address(arg1)].field_256,
               stor11[address(arg1)].field_512,
               stor11[address(arg1)].field_768,
               block.timestamp
    s = 10
    t = 1
    idx = ext_call.return_data[31 len 1]
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    if stor11[address(arg1)].field_0 and s * t > -1 / stor11[address(arg1)].field_0:
        revert with 0, 17
    if not stor4:
        revert with 0, 18
    return stor11[address(arg1)].field_0 * s * t / stor4, 
           stor11[address(arg1)].field_256,
           stor11[address(arg1)].field_512,
           stor11[address(arg1)].field_768,
           block.timestamp
}

function withdraw(bool arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Multi-signer: caller is not the multi-signer'
    if arg1 == 1:
        idx = 0
        s = 0
        while idx < stor10.length:
            mem[0] = 10
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor10[idx].field_0)
            staticcall stor10[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _28 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _29 = mem[_28]
            if not mem[_28]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = mem[_28]
                continue 
            if idx >= stor10.length:
                revert with 0, 50
            mem[0] = 10
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _29
            require ext_code.size(stor10[idx].field_0)
            call stor10[idx].field_0.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _29
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _33 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_33] == bool(mem[_33])
            if 1 > !idx:
                revert with 0, 17
            mem[mem[64]] = msg.sender
            mem[mem[64] + 32] = idx + 1
            mem[mem[64] + 64] = _29
            emit Withdraw(msg.sender, idx + 1, _29);
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _29
            continue 
    else:
        require ext_code.size(stor6)
        staticcall stor6.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(stor6)
            call stor6.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit Withdraw(msg.sender, 0, ext_call.return_data[0]);
}

function sub_0ba74b2f(?) {
    require calldata.size - 4 >= 64
    if contractStatus:
        revert with 0, 'Contract Paused'
    if arg2 >= stor10.length:
        revert with 0, 50
    require ext_code.size(stor10[arg2].field_0)
    staticcall stor10[arg2].field_0.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if arg1 and stor4 > -1 / arg1:
            revert with 0, 17
        if not stor1:
            revert with 0, 18
        if stor11[msg.sender].field_0 > !(arg1 * stor4 / stor1):
            revert with 0, 17
        stor11[msg.sender].field_0 += arg1 * stor4 / stor1
        stor11[msg.sender].field_256 = block.timestamp
        if block.timestamp > !sub_4e616cbc:
            revert with 0, 17
        stor11[msg.sender].field_512 = block.timestamp + sub_4e616cbc
        stor11[msg.sender].field_768 = stor1
        if arg2 >= stor10.length:
            revert with 0, 50
        require ext_code.size(stor10[arg2].field_0)
        staticcall stor10[arg2].field_0.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1 > ext_call.return_data[0]:
            revert with 0, 'no enough balance'
        if arg2 >= stor10.length:
            revert with 0, 50
        require ext_code.size(stor10[arg2].field_0)
        call stor10[arg2].field_0.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, 0x52fd04aa057ba8ca4bcc675b55de7366f607a677, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if stor9 > !(arg1 * stor4 / stor1):
            revert with 0, 17
        stor9 += arg1 * stor4 / stor1
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if arg1 and stor4 > -1 / arg1:
                revert with 0, 17
            if not stor1:
                revert with 0, 18
            if not 10^ext_call.return_data[31 len 1]:
                revert with 0, 18
            if stor11[msg.sender].field_0 > !(arg1 * stor4 / stor1 / 10^ext_call.return_data[31 len 1]):
                revert with 0, 17
            stor11[msg.sender].field_0 += arg1 * stor4 / stor1 / 10^ext_call.return_data[31 len 1]
            stor11[msg.sender].field_256 = block.timestamp
            if block.timestamp > !sub_4e616cbc:
                revert with 0, 17
            stor11[msg.sender].field_512 = block.timestamp + sub_4e616cbc
            stor11[msg.sender].field_768 = stor1
            if arg2 >= stor10.length:
                revert with 0, 50
            require ext_code.size(stor10[arg2].field_0)
            staticcall stor10[arg2].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg1 > ext_call.return_data[0]:
                revert with 0, 'no enough balance'
            if arg2 >= stor10.length:
                revert with 0, 50
            require ext_code.size(stor10[arg2].field_0)
            call stor10[arg2].field_0.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, 0x52fd04aa057ba8ca4bcc675b55de7366f607a677, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if stor9 > !(arg1 * stor4 / stor1 / 10^uint8(ext_call.return_data[0])):
                revert with 0, 17
            stor9 += arg1 * stor4 / stor1 / 10^uint8(ext_call.return_data[0])
        else:
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if arg1 and stor4 > -1 / arg1:
                revert with 0, 17
            if not stor1:
                revert with 0, 18
            if not s * t:
                revert with 0, 18
            if stor11[msg.sender].field_0 > !(arg1 * stor4 / stor1 / s * t):
                revert with 0, 17
            stor11[msg.sender].field_0 += arg1 * stor4 / stor1 / s * t
            stor11[msg.sender].field_256 = block.timestamp
            if block.timestamp > !sub_4e616cbc:
                revert with 0, 17
            stor11[msg.sender].field_512 = block.timestamp + sub_4e616cbc
            stor11[msg.sender].field_768 = stor1
            if arg2 >= stor10.length:
                revert with 0, 50
            require ext_code.size(stor10[arg2].field_0)
            staticcall stor10[arg2].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg1 > ext_call.return_data[0]:
                revert with 0, 'no enough balance'
            if arg2 >= stor10.length:
                revert with 0, 50
            require ext_code.size(stor10[arg2].field_0)
            call stor10[arg2].field_0.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, 0x52fd04aa057ba8ca4bcc675b55de7366f607a677, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if stor9 > !(arg1 * stor4 / stor1 / s * t):
                revert with 0, 17
            stor9 += arg1 * stor4 / stor1 / s * t
    emit Bond(msg.sender, stor11[msg.sender].field_0, stor11[msg.sender].field_256, stor11[msg.sender].field_512);
}

function redeem() {
    if contractStatus:
        revert with 0, 'Contract Paused'
    if not stor11[msg.sender].field_0:
        revert with 0, 'no exist bond'
    if block.timestamp < stor11[msg.sender].field_256:
        revert with 0, 17
    if not sub_1471ee75:
        revert with 0, 18
    if block.timestamp - stor11[msg.sender].field_256 / sub_1471ee75 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'can redeem once within a redeem interval; ex: 8hours'
    if block.timestamp >= stor11[msg.sender].field_512:
        if stor11[msg.sender].field_0 < stor11[msg.sender].field_0:
            revert with 0, 17
        stor11[msg.sender].field_0 = 0
        if block.timestamp - stor11[msg.sender].field_256 / sub_1471ee75 and sub_1471ee75 > -1 / block.timestamp - stor11[msg.sender].field_256 / sub_1471ee75:
            revert with 0, 17
        if stor11[msg.sender].field_256 > !(block.timestamp - stor11[msg.sender].field_256 / sub_1471ee75 * sub_1471ee75):
            revert with 0, 17
        stor11[msg.sender].field_256 += block.timestamp - stor11[msg.sender].field_256 / sub_1471ee75 * sub_1471ee75
        if stor9 < stor11[msg.sender].field_0:
            revert with 0, 17
        stor9 -= stor11[msg.sender].field_0
        if stor11[msg.sender].field_0:
            require ext_code.size(stor6)
            staticcall stor6.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if stor11[msg.sender].field_0 and 1 > -1 / stor11[msg.sender].field_0:
                    revert with 0, 17
                if not stor4:
                    revert with 0, 18
                require ext_code.size(stor6)
                staticcall stor6.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= stor11[msg.sender].field_0 / stor4:
                    revert with 0, 'no enough balance'
                require ext_code.size(stor6)
                call stor6.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, stor11[msg.sender].field_0 / stor4
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if stor11[msg.sender].field_0 and 10^ext_call.return_data[31 len 1] > -1 / stor11[msg.sender].field_0:
                        revert with 0, 17
                    if not stor4:
                        revert with 0, 18
                    require ext_code.size(stor6)
                    staticcall stor6.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= stor11[msg.sender].field_0 * 10^uint8(ext_call.return_data[0]) / stor4:
                        revert with 0, 'no enough balance'
                    require ext_code.size(stor6)
                    call stor6.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, stor11[msg.sender].field_0 * 10^uint8(ext_call.return_data[0]) / stor4
                else:
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if stor11[msg.sender].field_0 and s * t > -1 / stor11[msg.sender].field_0:
                        revert with 0, 17
                    if not stor4:
                        revert with 0, 18
                    require ext_code.size(stor6)
                    staticcall stor6.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= stor11[msg.sender].field_0 * s * t / stor4:
                        revert with 0, 'no enough balance'
                    require ext_code.size(stor6)
                    call stor6.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, stor11[msg.sender].field_0 * s * t / stor4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit Redeem(msg.sender, stor11[msg.sender].field_0, stor11[msg.sender].field_256, block.timestamp);
    else:
        if stor11[msg.sender].field_512 < stor11[msg.sender].field_256:
            revert with 0, 17
        if stor11[msg.sender].field_0 and block.timestamp - stor11[msg.sender].field_256 / sub_1471ee75 > -1 / stor11[msg.sender].field_0:
            revert with 0, 17
        if stor11[msg.sender].field_0 * block.timestamp - stor11[msg.sender].field_256 / sub_1471ee75 and sub_1471ee75 > -1 / stor11[msg.sender].field_0 * block.timestamp - stor11[msg.sender].field_256 / sub_1471ee75:
            revert with 0, 17
        if not stor11[msg.sender].field_512 - stor11[msg.sender].field_256:
            revert with 0, 18
        if stor11[msg.sender].field_0 < stor11[msg.sender].field_0 * block.timestamp - stor11[msg.sender].field_256 / sub_1471ee75 * sub_1471ee75 / stor11[msg.sender].field_512 - stor11[msg.sender].field_256:
            revert with 0, 17
        stor11[msg.sender].field_0 -= stor11[msg.sender].field_0 * block.timestamp - stor11[msg.sender].field_256 / sub_1471ee75 * sub_1471ee75 / stor11[msg.sender].field_512 - stor11[msg.sender].field_256
        if block.timestamp - stor11[msg.sender].field_256 / sub_1471ee75 and sub_1471ee75 > -1 / block.timestamp - stor11[msg.sender].field_256 / sub_1471ee75:
            revert with 0, 17
        if stor11[msg.sender].field_256 > !(block.timestamp - stor11[msg.sender].field_256 / sub_1471ee75 * sub_1471ee75):
            revert with 0, 17
        stor11[msg.sender].field_256 += block.timestamp - stor11[msg.sender].field_256 / sub_1471ee75 * sub_1471ee75
        if stor9 < stor11[msg.sender].field_0 * block.timestamp - stor11[msg.sender].field_256 / sub_1471ee75 * sub_1471ee75 / stor11[msg.sender].field_512 - stor11[msg.sender].field_256:
            revert with 0, 17
        stor9 -= stor11[msg.sender].field_0 * block.timestamp - stor11[msg.sender].field_256 / sub_1471ee75 * sub_1471ee75 / stor11[msg.sender].field_512 - stor11[msg.sender].field_256
        if stor11[msg.sender].field_0 * block.timestamp - stor11[msg.sender].field_256 / sub_1471ee75 * sub_1471ee75 / stor11[msg.sender].field_512 - stor11[msg.sender].field_256:
            require ext_code.size(stor6)
            staticcall stor6.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if stor11[msg.sender].field_0 * block.timestamp - stor11[msg.sender].field_256 / sub_1471ee75 * sub_1471ee75 / stor11[msg.sender].field_512 - stor11[msg.sender].field_256 and 1 > -1 / stor11[msg.sender].field_0 * block.timestamp - stor11[msg.sender].field_256 / sub_1471ee75 * sub_1471ee75 / stor11[msg.sender].field_512 - stor11[msg.sender].field_256:
                    revert with 0, 17
                if not stor4:
                    revert with 0, 18
                require ext_code.size(stor6)
                staticcall stor6.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= stor11[msg.sender].field_0 * block.timestamp - stor11[msg.sender].field_256 / sub_1471ee75 * sub_1471ee75 / stor11[msg.sender].field_512 - stor11[msg.sender].field_256 / stor4:
                    revert with 0, 'no enough balance'
                require ext_code.size(stor6)
                call stor6.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, stor11[msg.sender].field_0 * block.timestamp - stor11[msg.sender].field_256 / sub_1471ee75 * sub_1471ee75 / stor11[msg.sender].field_512 - stor11[msg.sender].field_256 / stor4
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if stor11[msg.sender].field_0 * block.timestamp - stor11[msg.sender].field_256 / sub_1471ee75 * sub_1471ee75 / stor11[msg.sender].field_512 - stor11[msg.sender].field_256 and 10^ext_call.return_data[31 len 1] > -1 / stor11[msg.sender].field_0 * block.timestamp - stor11[msg.sender].field_256 / sub_1471ee75 * sub_1471ee75 / stor11[msg.sender].field_512 - stor11[msg.sender].field_256:
                        revert with 0, 17
                    if not stor4:
                        revert with 0, 18
                    require ext_code.size(stor6)
                    staticcall stor6.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= stor11[msg.sender].field_0 * block.timestamp - stor11[msg.sender].field_256 / sub_1471ee75 * sub_1471ee75 / stor11[msg.sender].field_512 - stor11[msg.sender].field_256 * 10^uint8(ext_call.return_data[0]) / stor4:
                        revert with 0, 'no enough balance'
                    require ext_code.size(stor6)
                    call stor6.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, stor11[msg.sender].field_0 * block.timestamp - stor11[msg.sender].field_256 / sub_1471ee75 * sub_1471ee75 / stor11[msg.sender].field_512 - stor11[msg.sender].field_256 * 10^uint8(ext_call.return_data[0]) / stor4
                else:
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if stor11[msg.sender].field_0 * block.timestamp - stor11[msg.sender].field_256 / sub_1471ee75 * sub_1471ee75 / stor11[msg.sender].field_512 - stor11[msg.sender].field_256 and s * t > -1 / stor11[msg.sender].field_0 * block.timestamp - stor11[msg.sender].field_256 / sub_1471ee75 * sub_1471ee75 / stor11[msg.sender].field_512 - stor11[msg.sender].field_256:
                        revert with 0, 17
                    if not stor4:
                        revert with 0, 18
                    require ext_code.size(stor6)
                    staticcall stor6.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= stor11[msg.sender].field_0 * block.timestamp - stor11[msg.sender].field_256 / sub_1471ee75 * sub_1471ee75 / stor11[msg.sender].field_512 - stor11[msg.sender].field_256 * s * t / stor4:
                        revert with 0, 'no enough balance'
                    require ext_code.size(stor6)
                    call stor6.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, stor11[msg.sender].field_0 * block.timestamp - stor11[msg.sender].field_256 / sub_1471ee75 * sub_1471ee75 / stor11[msg.sender].field_512 - stor11[msg.sender].field_256 * s * t / stor4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit Redeem(msg.sender, stor11[msg.sender].field_0 * block.timestamp - stor11[msg.sender].field_256 / sub_1471ee75 * sub_1471ee75 / stor11[msg.sender].field_512 - stor11[msg.sender].field_256, stor11[msg.sender].field_256, block.timestamp);
}

function sub_6373a35e(?) {
    require calldata.size - 4 >= 64
    require arg2 == bool(arg2)
    if not stor8:
        revert with 0, 'no exist second token'
    if arg1 <= 0:
        revert with 0, 'invalid amount'
    if bool(arg2) != 1:
        require ext_code.size(stor6)
        call stor6.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor6)
        staticcall stor6.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            require ext_code.size(stor8)
            staticcall stor8.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if arg1 and 1 > -1 / arg1:
                    revert with 0, 17
                require ext_code.size(stor8)
                staticcall stor8.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= arg1:
                    revert with 0, 'no enough second token'
                require ext_code.size(stor8)
                call stor8.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, arg1
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if arg1 and 10^ext_call.return_data[31 len 1] > -1 / arg1:
                        revert with 0, 17
                    require ext_code.size(stor8)
                    staticcall stor8.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= arg1 * 10^uint8(ext_call.return_data[0]):
                        revert with 0, 'no enough second token'
                    require ext_code.size(stor8)
                    call stor8.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg1 * 10^uint8(ext_call.return_data[0])
                else:
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if arg1 and s * t > -1 / arg1:
                        revert with 0, 17
                    require ext_code.size(stor8)
                    staticcall stor8.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= arg1 * s * t:
                        revert with 0, 'no enough second token'
                    require ext_code.size(stor8)
                    call stor8.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg1 * s * t
        else:
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                require ext_code.size(stor8)
                staticcall stor8.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    if arg1 and 1 > -1 / arg1:
                        revert with 0, 17
                    if not 10^uint8(ext_call.return_data[0]):
                        revert with 0, 18
                    require ext_code.size(stor8)
                    staticcall stor8.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= arg1 / 10^uint8(ext_call.return_data[0]):
                        revert with 0, 'no enough second token'
                    require ext_code.size(stor8)
                    call stor8.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg1 / 10^uint8(ext_call.return_data[0])
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        if arg1 and 10^ext_call.return_data[31 len 1] > -1 / arg1:
                            revert with 0, 17
                        if not 10^uint8(ext_call.return_data[0]):
                            revert with 0, 18
                        require ext_code.size(stor8)
                        staticcall stor8.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= arg1 * 10^uint8(ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]):
                            revert with 0, 'no enough second token'
                        require ext_code.size(stor8)
                        call stor8.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, arg1 * 10^uint8(ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0])
                    else:
                        s = 10
                        t = 1
                        idx = ext_call.return_data[31 len 1]
                        while idx > 1:
                            if s > -1 / s:
                                revert with 0, 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = s * t
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 0, 17
                        if arg1 and s * t > -1 / arg1:
                            revert with 0, 17
                        if not 10^uint8(ext_call.return_data[0]):
                            revert with 0, 18
                        require ext_code.size(stor8)
                        staticcall stor8.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= arg1 * s * t / 10^uint8(ext_call.return_data[0]):
                            revert with 0, 'no enough second token'
                        require ext_code.size(stor8)
                        call stor8.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, arg1 * s * t / 10^uint8(ext_call.return_data[0])
            else:
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                require ext_code.size(stor8)
                staticcall stor8.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    if arg1 and 1 > -1 / arg1:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    require ext_code.size(stor8)
                    staticcall stor8.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= arg1 / s * t:
                        revert with 0, 'no enough second token'
                    require ext_code.size(stor8)
                    call stor8.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg1 / s * t
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        if arg1 and 10^ext_call.return_data[31 len 1] > -1 / arg1:
                            revert with 0, 17
                        if not s * t:
                            revert with 0, 18
                        require ext_code.size(stor8)
                        staticcall stor8.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= arg1 * 10^uint8(ext_call.return_data[0]) / s * t:
                            revert with 0, 'no enough second token'
                        require ext_code.size(stor8)
                        call stor8.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, arg1 * 10^uint8(ext_call.return_data[0]) / s * t
                    else:
                        u = 10
                        v = 1
                        idx = ext_call.return_data[31 len 1]
                        while idx > 1:
                            if u > -1 / u:
                                revert with 0, 17
                            if not bool(idx):
                                u = u * u
                                v = v
                                idx = uint255(idx) * 0.5
                                continue 
                            u = u * u
                            v = u * v
                            idx = uint255(idx) * 0.5
                            continue 
                        if v > -1 / u:
                            revert with 0, 17
                        if arg1 and u * v > -1 / arg1:
                            revert with 0, 17
                        if not s * t:
                            revert with 0, 18
                        require ext_code.size(stor8)
                        staticcall stor8.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= arg1 * u * v / s * t:
                            revert with 0, 'no enough second token'
                        require ext_code.size(stor8)
                        call stor8.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, arg1 * u * v / s * t
    else:
        require ext_code.size(stor8)
        call stor8.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor8)
        staticcall stor8.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            require ext_code.size(stor6)
            staticcall stor6.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if arg1 and 1 > -1 / arg1:
                    revert with 0, 17
                require ext_code.size(stor6)
                staticcall stor6.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= arg1:
                    revert with 0, 'no enough first token'
                require ext_code.size(stor6)
                call stor6.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, arg1
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if arg1 and 10^ext_call.return_data[31 len 1] > -1 / arg1:
                        revert with 0, 17
                    require ext_code.size(stor6)
                    staticcall stor6.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= arg1 * 10^uint8(ext_call.return_data[0]):
                        revert with 0, 'no enough first token'
                    require ext_code.size(stor6)
                    call stor6.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg1 * 10^uint8(ext_call.return_data[0])
                else:
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if arg1 and s * t > -1 / arg1:
                        revert with 0, 17
                    require ext_code.size(stor6)
                    staticcall stor6.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= arg1 * s * t:
                        revert with 0, 'no enough first token'
                    require ext_code.size(stor6)
                    call stor6.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg1 * s * t
        else:
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                require ext_code.size(stor6)
                staticcall stor6.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    if arg1 and 1 > -1 / arg1:
                        revert with 0, 17
                    if not 10^uint8(ext_call.return_data[0]):
                        revert with 0, 18
                    require ext_code.size(stor6)
                    staticcall stor6.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= arg1 / 10^uint8(ext_call.return_data[0]):
                        revert with 0, 'no enough first token'
                    require ext_code.size(stor6)
                    call stor6.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg1 / 10^uint8(ext_call.return_data[0])
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        if arg1 and 10^ext_call.return_data[31 len 1] > -1 / arg1:
                            revert with 0, 17
                        if not 10^uint8(ext_call.return_data[0]):
                            revert with 0, 18
                        require ext_code.size(stor6)
                        staticcall stor6.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= arg1 * 10^uint8(ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]):
                            revert with 0, 'no enough first token'
                        require ext_code.size(stor6)
                        call stor6.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, arg1 * 10^uint8(ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0])
                    else:
                        s = 10
                        t = 1
                        idx = ext_call.return_data[31 len 1]
                        while idx > 1:
                            if s > -1 / s:
                                revert with 0, 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = s * t
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 0, 17
                        if arg1 and s * t > -1 / arg1:
                            revert with 0, 17
                        if not 10^uint8(ext_call.return_data[0]):
                            revert with 0, 18
                        require ext_code.size(stor6)
                        staticcall stor6.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= arg1 * s * t / 10^uint8(ext_call.return_data[0]):
                            revert with 0, 'no enough first token'
                        require ext_code.size(stor6)
                        call stor6.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, arg1 * s * t / 10^uint8(ext_call.return_data[0])
            else:
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                require ext_code.size(stor6)
                staticcall stor6.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    if arg1 and 1 > -1 / arg1:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    require ext_code.size(stor6)
                    staticcall stor6.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= arg1 / s * t:
                        revert with 0, 'no enough first token'
                    require ext_code.size(stor6)
                    call stor6.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg1 / s * t
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        if arg1 and 10^ext_call.return_data[31 len 1] > -1 / arg1:
                            revert with 0, 17
                        if not s * t:
                            revert with 0, 18
                        require ext_code.size(stor6)
                        staticcall stor6.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= arg1 * 10^uint8(ext_call.return_data[0]) / s * t:
                            revert with 0, 'no enough first token'
                        require ext_code.size(stor6)
                        call stor6.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, arg1 * 10^uint8(ext_call.return_data[0]) / s * t
                    else:
                        u = 10
                        v = 1
                        idx = ext_call.return_data[31 len 1]
                        while idx > 1:
                            if u > -1 / u:
                                revert with 0, 17
                            if not bool(idx):
                                u = u * u
                                v = v
                                idx = uint255(idx) * 0.5
                                continue 
                            u = u * u
                            v = u * v
                            idx = uint255(idx) * 0.5
                            continue 
                        if v > -1 / u:
                            revert with 0, 17
                        if arg1 and u * v > -1 / arg1:
                            revert with 0, 17
                        if not s * t:
                            revert with 0, 18
                        require ext_code.size(stor6)
                        staticcall stor6.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= arg1 * u * v / s * t:
                            revert with 0, 'no enough first token'
                        require ext_code.size(stor6)
                        call stor6.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, arg1 * u * v / s * t
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
