contract main {




// =====================  Runtime code  =====================


#
#  - sub_1ff959e3(?)
#  - sub_54996637(?)
#  - sub_9bc40787(?)
#
address owner;
uint256 stor5;
uint256 stor6;

function getOwner() {
    return owner
}

function _fallback() payable {
    revert
}

function getStats() {
    return 32, 3, stor5, stor6, 0
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    owner = arg1
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    require arg1 <= eth.balance(this.address)
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sub_6220f0f3(?) {
    if stor5 < 1111:
        return 2 * 10^18
    if stor5 < 2222:
        return 25 * 10^17
    if stor5 < 3333:
        return 3 * 10^18
    if stor5 < 4444:
        return 35 * 10^17
    if stor5 < 5555:
        return 4 * 10^18
    if stor5 < 6666:
        return '>s6(qB'
    if stor5 >= 7777:
        return 55 * 10^17
    return 5 * 10^18
}

function sub_4b80cd1f(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == arg2
    require msg.sender == owner
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[ceil32(ceil32(arg1.length)) + arg1.length + 97] = 3
    stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg2
}

function sub_67ed5587(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == arg2
    require msg.sender == owner
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[ceil32(ceil32(arg1.length)) + arg1.length + 97] = 2
    stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg2
}

function sub_dd35ef90(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == arg2
    require msg.sender == owner
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[ceil32(ceil32(arg1.length)) + arg1.length + 97] = 1
    stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg2
}

function sub_cf66260d(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                gas gas_remaining wei
               args 0, uint32(arg2), 64, 7, 's-level'
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                gas gas_remaining wei
               args arg2, Array(len=11, data='s-timestamp')
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                gas gas_remaining wei
               args arg2, Array(len=7, data='s-cache')
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if not ext_call.return_data[0]:
            if block.timestamp < block.timestamp:
                revert with 'NH{q', 17
            if False and ext_call.return_data[0] > 0:
                revert with 'NH{q', 17
            if ext_call.return_data[0] > -1:
                revert with 'NH{q', 17
            return ext_call.return_data[0]
        if block.timestamp < ext_call.return_data[0]:
            revert with 'NH{q', 17
        if block.timestamp - ext_call.return_data[0] and ext_call.return_data[0] > -1 / block.timestamp - ext_call.return_data[0]:
            revert with 'NH{q', 17
        if (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) and 10^15 > -1 / (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]):
            revert with 'NH{q', 17
        if ext_call.return_data[0] > (-1 * 10^15 * block.timestamp * ext_call.return_data[0]) + (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - 1:
            revert with 'NH{q', 17
        return (ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]))
    if arg1 == 1:
        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                gas gas_remaining wei
               args 0, uint32(arg2), 64, 7, 'm-level'
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                gas gas_remaining wei
               args arg2, Array(len=11, data='m-timestamp')
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                gas gas_remaining wei
               args arg2, Array(len=7, data='m-cache')
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if not ext_call.return_data[0]:
            if block.timestamp < block.timestamp:
                revert with 'NH{q', 17
            if False and ext_call.return_data[0] > 0:
                revert with 'NH{q', 17
            if ext_call.return_data[0] > -1:
                revert with 'NH{q', 17
            return ext_call.return_data[0]
        if block.timestamp < ext_call.return_data[0]:
            revert with 'NH{q', 17
        if block.timestamp - ext_call.return_data[0] and ext_call.return_data[0] > -1 / block.timestamp - ext_call.return_data[0]:
            revert with 'NH{q', 17
        if (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) and 2 * 10^15 > -1 / (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]):
            revert with 'NH{q', 17
        if ext_call.return_data[0] > (-2 * 10^15 * block.timestamp * ext_call.return_data[0]) + (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - 1:
            revert with 'NH{q', 17
        return (ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]))
    if arg1 != 2:
        return 0
    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
            gas gas_remaining wei
           args 0, uint32(arg2), 64, 7, 'c-level'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
            gas gas_remaining wei
           args arg2, Array(len=11, data='c-timestamp')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
            gas gas_remaining wei
           args arg2, Array(len=7, data='c-cache')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        if block.timestamp < block.timestamp:
            revert with 'NH{q', 17
        if False and ext_call.return_data[0] > 0:
            revert with 'NH{q', 17
        if ext_call.return_data[0] > -1:
            revert with 'NH{q', 17
        return ext_call.return_data[0]
    if block.timestamp < ext_call.return_data[0]:
        revert with 'NH{q', 17
    if block.timestamp - ext_call.return_data[0] and ext_call.return_data[0] > -1 / block.timestamp - ext_call.return_data[0]:
        revert with 'NH{q', 17
    if (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) and 10^14 > -1 / (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]):
        revert with 'NH{q', 17
    if ext_call.return_data[0] > (-1 * 10^14 * block.timestamp * ext_call.return_data[0]) + (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) - 1:
        revert with 'NH{q', 17
    return (ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]))
}

function sub_92789b02(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor5 < 1111:
        if arg1 > 0x9392ee8e921d5d073aff322e62439fcf32d7f344649470f90:
            revert with 'NH{q', 17
        if msg.value < 2 * 10^18 * arg1:
            revert with 0, 'Wrong fee'
        if arg1 > -stor5 - 1:
            revert with 'NH{q', 17
        if arg1 + stor5 > 8888:
            revert with 0, 'Not enough planets left'
        if arg1 <= 0:
            revert with 0, 'Amount should be >0'
        if arg1 > 40:
            revert with 0, 'Amount should be <=40'
        mem[100] = 32
        mem[132] = 14
        mem[164] = 'metadataSetter'
        require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
        staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
                gas gas_remaining wei
               args Array(len=14, data='metadataSetter')
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        idx = 0
        while idx < arg1:
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
            call 0x0c3b29321611736341609022c23e981ac56e7f96.0x3db12d03 with:
                 gas gas_remaining wei
                args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _216 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _224 = mem[_216]
            require mem[_216] == mem[_216]
            mem[mem[64] + 4] = mem[_216]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x4e4f31ed with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], Array(len=7, data='s-level'), 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x4e4f31ed with:
                 gas gas_remaining wei
                args _224, Array(len=7, data='m-level'), 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x4e4f31ed with:
                 gas gas_remaining wei
                args _224, Array(len=11, data='s-timestamp'), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x4e4f31ed00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _224
            mem[mem[64] + 36] = 96
            mem[mem[64] + 100] = 11
            mem[mem[64] + 132] = 'm-timestamp'
            mem[mem[64] + 68] = block.timestamp
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x4e4f31ed with:
                 gas gas_remaining wei
                args _224, Array(len=11, data='m-timestamp'), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        if stor5 < 2222:
            if arg1 > 0x760f253edb4ab0d29598f4f1e83619728f13290383a9f3fa7:
                revert with 'NH{q', 17
            if msg.value < 25 * 10^17 * arg1:
                revert with 0, 'Wrong fee'
            if arg1 > -stor5 - 1:
                revert with 'NH{q', 17
            if arg1 + stor5 > 8888:
                revert with 0, 'Not enough planets left'
            if arg1 <= 0:
                revert with 0, 'Amount should be >0'
            if arg1 > 40:
                revert with 0, 'Amount should be <=40'
            mem[100] = 32
            mem[132] = 14
            mem[164] = 'metadataSetter'
            require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
            staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
                    gas gas_remaining wei
                   args Array(len=14, data='metadataSetter')
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            idx = 0
            while idx < arg1:
                mem[mem[64] + 4] = msg.sender
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                call 0x0c3b29321611736341609022c23e981ac56e7f96.0x3db12d03 with:
                     gas gas_remaining wei
                    args msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _215 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _223 = mem[_215]
                require mem[_215] == mem[_215]
                mem[mem[64] + 4] = mem[_215]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x4e4f31ed with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], Array(len=7, data='s-level'), 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x4e4f31ed with:
                     gas gas_remaining wei
                    args _223, Array(len=7, data='m-level'), 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x4e4f31ed with:
                     gas gas_remaining wei
                    args _223, Array(len=11, data='s-timestamp'), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x4e4f31ed00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _223
                mem[mem[64] + 36] = 96
                mem[mem[64] + 100] = 11
                mem[mem[64] + 132] = 'm-timestamp'
                mem[mem[64] + 68] = block.timestamp
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x4e4f31ed with:
                     gas gas_remaining wei
                    args _223, Array(len=11, data='m-timestamp'), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        else:
            if stor5 < 3333:
                if arg1 > 0x6261f45f0c13935a2754cc1eec2d1534cc8ff782edb84b50b:
                    revert with 'NH{q', 17
                if msg.value < 3 * 10^18 * arg1:
                    revert with 0, 'Wrong fee'
                if arg1 > -stor5 - 1:
                    revert with 'NH{q', 17
                if arg1 + stor5 > 8888:
                    revert with 0, 'Not enough planets left'
                if arg1 <= 0:
                    revert with 0, 'Amount should be >0'
                if arg1 > 40:
                    revert with 0, 'Amount should be <=40'
                mem[100] = 32
                mem[132] = 14
                mem[164] = 'metadataSetter'
                require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
                staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
                        gas gas_remaining wei
                       args Array(len=14, data='metadataSetter')
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                idx = 0
                while idx < arg1:
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                    call 0x0c3b29321611736341609022c23e981ac56e7f96.0x3db12d03 with:
                         gas gas_remaining wei
                        args msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _214 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _222 = mem[_214]
                    require mem[_214] == mem[_214]
                    mem[mem[64] + 4] = mem[_214]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], Array(len=7, data='s-level'), 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                         gas gas_remaining wei
                        args _222, Array(len=7, data='m-level'), 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                         gas gas_remaining wei
                        args _222, Array(len=11, data='s-timestamp'), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x4e4f31ed00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _222
                    mem[mem[64] + 36] = 96
                    mem[mem[64] + 100] = 11
                    mem[mem[64] + 132] = 'm-timestamp'
                    mem[mem[64] + 68] = block.timestamp
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                         gas gas_remaining wei
                        args _222, Array(len=11, data='m-timestamp'), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
            else:
                if stor5 < 4444:
                    if arg1 > 0x5453f608537e7e4d4648aef5ef02122d419ff8b95e0bae452:
                        revert with 'NH{q', 17
                    if msg.value < 35 * 10^17 * arg1:
                        revert with 0, 'Wrong fee'
                    if arg1 > -stor5 - 1:
                        revert with 'NH{q', 17
                    if arg1 + stor5 > 8888:
                        revert with 0, 'Not enough planets left'
                    if arg1 <= 0:
                        revert with 0, 'Amount should be >0'
                    if arg1 > 40:
                        revert with 0, 'Amount should be <=40'
                    mem[100] = 32
                    mem[132] = 14
                    mem[164] = 'metadataSetter'
                    require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
                    staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
                            gas gas_remaining wei
                           args Array(len=14, data='metadataSetter')
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    idx = 0
                    while idx < arg1:
                        mem[mem[64] + 4] = msg.sender
                        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                        call 0x0c3b29321611736341609022c23e981ac56e7f96.0x3db12d03 with:
                             gas gas_remaining wei
                            args msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _213 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _221 = mem[_213]
                        require mem[_213] == mem[_213]
                        mem[mem[64] + 4] = mem[_213]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], Array(len=7, data='s-level'), 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                             gas gas_remaining wei
                            args _221, Array(len=7, data='m-level'), 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                             gas gas_remaining wei
                            args _221, Array(len=11, data='s-timestamp'), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x4e4f31ed00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _221
                        mem[mem[64] + 36] = 96
                        mem[mem[64] + 100] = 11
                        mem[mem[64] + 132] = 'm-timestamp'
                        mem[mem[64] + 68] = block.timestamp
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                             gas gas_remaining wei
                            args _221, Array(len=11, data='m-timestamp'), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                else:
                    if stor5 < 5555:
                        if arg1 > 0x49c97747490eae839d7f99173121cfe7996bf9a2324a387c8:
                            revert with 'NH{q', 17
                        if msg.value < 4 * 10^18 * arg1:
                            revert with 0, 'Wrong fee'
                        if arg1 > -stor5 - 1:
                            revert with 'NH{q', 17
                        if arg1 + stor5 > 8888:
                            revert with 0, 'Not enough planets left'
                        if arg1 <= 0:
                            revert with 0, 'Amount should be >0'
                        if arg1 > 40:
                            revert with 0, 'Amount should be <=40'
                        mem[100] = 32
                        mem[132] = 14
                        mem[164] = 'metadataSetter'
                        require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
                        staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
                                gas gas_remaining wei
                               args Array(len=14, data='metadataSetter')
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        idx = 0
                        while idx < arg1:
                            mem[mem[64] + 4] = msg.sender
                            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                            call 0x0c3b29321611736341609022c23e981ac56e7f96.0x3db12d03 with:
                                 gas gas_remaining wei
                                args msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _212 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _220 = mem[_212]
                            require mem[_212] == mem[_212]
                            mem[mem[64] + 4] = mem[_212]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], Array(len=7, data='s-level'), 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                 gas gas_remaining wei
                                args _220, Array(len=7, data='m-level'), 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                 gas gas_remaining wei
                                args _220, Array(len=11, data='s-timestamp'), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x4e4f31ed00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _220
                            mem[mem[64] + 36] = 96
                            mem[mem[64] + 100] = 11
                            mem[mem[64] + 132] = 'm-timestamp'
                            mem[mem[64] + 68] = block.timestamp
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                 gas gas_remaining wei
                                args _220, Array(len=11, data='m-timestamp'), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                    else:
                        if stor5 < 6666:
                            if '>s6(qB' and arg1 > -1 / '>s6(qB':
                                revert with 'NH{q', 17
                            if msg.value < '>s6(qB' * arg1:
                                revert with 0, 'Wrong fee'
                            if arg1 > -stor5 - 1:
                                revert with 'NH{q', 17
                            if arg1 + stor5 > 8888:
                                revert with 0, 'Not enough planets left'
                            if arg1 <= 0:
                                revert with 0, 'Amount should be >0'
                            if arg1 > 40:
                                revert with 0, 'Amount should be <=40'
                            mem[100] = 32
                            mem[132] = 14
                            mem[164] = 'metadataSetter'
                            require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
                            staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
                                    gas gas_remaining wei
                                   args Array(len=14, data='metadataSetter')
                            mem[96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            idx = 0
                            while idx < arg1:
                                mem[mem[64] + 4] = msg.sender
                                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                call 0x0c3b29321611736341609022c23e981ac56e7f96.0x3db12d03 with:
                                     gas gas_remaining wei
                                    args msg.sender
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _211 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _219 = mem[_211]
                                require mem[_211] == mem[_211]
                                mem[mem[64] + 4] = mem[_211]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], Array(len=7, data='s-level'), 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args _219, Array(len=7, data='m-level'), 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args _219, Array(len=11, data='s-timestamp'), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x4e4f31ed00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _219
                                mem[mem[64] + 36] = 96
                                mem[mem[64] + 100] = 11
                                mem[mem[64] + 132] = 'm-timestamp'
                                mem[mem[64] + 68] = block.timestamp
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args _219, Array(len=11, data='m-timestamp'), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
                        else:
                            if stor5 >= 7777:
                                if arg1 > 0x35a9cb1c92393919e6e86f56af5e68a86f945875f6076ee63:
                                    revert with 'NH{q', 17
                                if msg.value < 55 * 10^17 * arg1:
                                    revert with 0, 'Wrong fee'
                                if arg1 > -stor5 - 1:
                                    revert with 'NH{q', 17
                                if arg1 + stor5 > 8888:
                                    revert with 0, 'Not enough planets left'
                                if arg1 <= 0:
                                    revert with 0, 'Amount should be >0'
                                if arg1 > 40:
                                    revert with 0, 'Amount should be <=40'
                                mem[100] = 32
                                mem[132] = 14
                                mem[164] = 'metadataSetter'
                                require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
                                staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
                                        gas gas_remaining wei
                                       args Array(len=14, data='metadataSetter')
                                mem[96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 96
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                idx = 0
                                while idx < arg1:
                                    mem[mem[64] + 4] = msg.sender
                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                    call 0x0c3b29321611736341609022c23e981ac56e7f96.0x3db12d03 with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _209 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _217 = mem[_209]
                                    require mem[_209] == mem[_209]
                                    mem[mem[64] + 4] = mem[_209]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], Array(len=7, data='s-level'), 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args _217, Array(len=7, data='m-level'), 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args _217, Array(len=11, data='s-timestamp'), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x4e4f31ed00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _217
                                    mem[mem[64] + 36] = 96
                                    mem[mem[64] + 100] = 11
                                    mem[mem[64] + 132] = 'm-timestamp'
                                    mem[mem[64] + 68] = block.timestamp
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args _217, Array(len=11, data='m-timestamp'), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    continue 
                            else:
                                if arg1 > 0x3b07929f6da558694acc7a78f41b0cb947899481c1d4f9fd3:
                                    revert with 'NH{q', 17
                                if msg.value < 5 * 10^18 * arg1:
                                    revert with 0, 'Wrong fee'
                                if arg1 > -stor5 - 1:
                                    revert with 'NH{q', 17
                                if arg1 + stor5 > 8888:
                                    revert with 0, 'Not enough planets left'
                                if arg1 <= 0:
                                    revert with 0, 'Amount should be >0'
                                if arg1 > 40:
                                    revert with 0, 'Amount should be <=40'
                                mem[100] = 32
                                mem[132] = 14
                                mem[164] = 'metadataSetter'
                                require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
                                staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
                                        gas gas_remaining wei
                                       args Array(len=14, data='metadataSetter')
                                mem[96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 96
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                idx = 0
                                while idx < arg1:
                                    mem[mem[64] + 4] = msg.sender
                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                    call 0x0c3b29321611736341609022c23e981ac56e7f96.0x3db12d03 with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _210 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _218 = mem[_210]
                                    require mem[_210] == mem[_210]
                                    mem[mem[64] + 4] = mem[_210]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], Array(len=7, data='s-level'), 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args _218, Array(len=7, data='m-level'), 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args _218, Array(len=11, data='s-timestamp'), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x4e4f31ed00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _218
                                    mem[mem[64] + 36] = 96
                                    mem[mem[64] + 100] = 11
                                    mem[mem[64] + 132] = 'm-timestamp'
                                    mem[mem[64] + 68] = block.timestamp
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args _218, Array(len=11, data='m-timestamp'), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    continue 
    if stor5 > -arg1 - 1:
        revert with 'NH{q', 17
    stor5 += arg1
}

function sub_bef77a95(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 4).length) + 97] = 3
    mem[64] = floor32(('cd', 4).length) + 225
    mem[floor32(('cd', 4).length) + 129] = 0
    mem[floor32(('cd', 4).length) + 161] = 0
    mem[floor32(('cd', 4).length) + 193] = 0
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _249 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = 7
        mem[mem[64] + 100] = 's-level'
        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                gas gas_remaining wei
               args mem[mem[64] + 4], Array(len=7, data='s-level')
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _255 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _256 = mem[_255]
        require mem[_255] == mem[_255]
        mem[mem[64] + 4] = _249
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = 11
        mem[mem[64] + 100] = 's-timestamp'
        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                gas gas_remaining wei
               args _249, Array(len=11, data='s-timestamp')
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _259 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _260 = mem[_259]
        require mem[_259] == mem[_259]
        mem[mem[64] + 4] = _249
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = 7
        mem[mem[64] + 100] = 's-cache'
        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                gas gas_remaining wei
               args _249, Array(len=7, data='s-cache')
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not mem[_259]:
            _266 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _268 = mem[_266]
            require mem[_266] == mem[_266]
            if block.timestamp < block.timestamp:
                revert with 'NH{q', 17
            if False and _256 > 0:
                revert with 'NH{q', 17
            if mem[_266] > -1:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = _249
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = 7
            mem[mem[64] + 100] = 'm-level'
            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                    gas gas_remaining wei
                   args _249, Array(len=7, data='m-level')
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _274 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _276 = mem[_274]
            require mem[_274] == mem[_274]
            mem[mem[64] + 4] = _249
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = 11
            mem[mem[64] + 100] = 'm-timestamp'
            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                    gas gas_remaining wei
                   args _249, Array(len=11, data='m-timestamp')
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _282 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _284 = mem[_282]
            require mem[_282] == mem[_282]
            mem[mem[64] + 4] = _249
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = 7
            mem[mem[64] + 100] = 'm-cache'
            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                    gas gas_remaining wei
                   args _249, Array(len=7, data='m-cache')
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not mem[_282]:
                _296 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _300 = mem[_296]
                require mem[_296] == mem[_296]
                if block.timestamp < block.timestamp:
                    revert with 'NH{q', 17
                if False and _276 > 0:
                    revert with 'NH{q', 17
                if mem[_296] > -1:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = _249
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 7
                mem[mem[64] + 100] = 'c-level'
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                        gas gas_remaining wei
                       args _249, Array(len=7, data='c-level')
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _314 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _318 = mem[_314]
                require mem[_314] == mem[_314]
                mem[mem[64] + 4] = _249
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 11
                mem[mem[64] + 100] = 'c-timestamp'
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                        gas gas_remaining wei
                       args _249, Array(len=11, data='c-timestamp')
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _330 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _334 = mem[_330]
                require mem[_330] == mem[_330]
                mem[mem[64] + 4] = _249
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 7
                mem[mem[64] + 100] = 'c-cache'
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                        gas gas_remaining wei
                       args _249, Array(len=7, data='c-cache')
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not mem[_330]:
                    _359 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _366 = mem[_359]
                    require mem[_359] == mem[_359]
                    if block.timestamp < block.timestamp:
                        revert with 'NH{q', 17
                    if False and _318 > 0:
                        revert with 'NH{q', 17
                    if mem[_359] > -1:
                        revert with 'NH{q', 17
                    if 0 >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    if mem[floor32(('cd', 4).length) + 129] > -_268 - 1:
                        revert with 'NH{q', 17
                    if 0 >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[floor32(('cd', 4).length) + 129] = mem[floor32(('cd', 4).length) + 129] + _268
                    if 1 >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    if mem[floor32(('cd', 4).length) + 161] > -_300 - 1:
                        revert with 'NH{q', 17
                    if 1 >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[floor32(('cd', 4).length) + 161] = mem[floor32(('cd', 4).length) + 161] + _300
                    if 2 >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    if mem[floor32(('cd', 4).length) + 193] > -_366 - 1:
                        revert with 'NH{q', 17
                    if 2 >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[floor32(('cd', 4).length) + 193] = mem[floor32(('cd', 4).length) + 193] + _366
                else:
                    _357 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _365 = mem[_357]
                    require mem[_357] == mem[_357]
                    if block.timestamp < _334:
                        revert with 'NH{q', 17
                    if block.timestamp - _334 and _318 > -1 / block.timestamp - _334:
                        revert with 'NH{q', 17
                    if (block.timestamp * _318) - (_334 * _318) and 10^14 > -1 / (block.timestamp * _318) - (_334 * _318):
                        revert with 'NH{q', 17
                    if mem[_357] > (-1 * 10^14 * block.timestamp * _318) + (10^14 * _334 * _318) - 1:
                        revert with 'NH{q', 17
                    if 0 >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    if mem[floor32(('cd', 4).length) + 129] > -_268 - 1:
                        revert with 'NH{q', 17
                    if 0 >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[floor32(('cd', 4).length) + 129] = mem[floor32(('cd', 4).length) + 129] + _268
                    if 1 >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    if mem[floor32(('cd', 4).length) + 161] > -_300 - 1:
                        revert with 'NH{q', 17
                    if 1 >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[floor32(('cd', 4).length) + 161] = mem[floor32(('cd', 4).length) + 161] + _300
                    if 2 >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    if mem[floor32(('cd', 4).length) + 193] > -_365 + (-1 * 10^14 * block.timestamp * _318) + (10^14 * _334 * _318) - 1:
                        revert with 'NH{q', 17
                    if 2 >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[floor32(('cd', 4).length) + 193] = mem[floor32(('cd', 4).length) + 193] + _365 + (10^14 * block.timestamp * _318) - (10^14 * _334 * _318)
            else:
                _295 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _299 = mem[_295]
                require mem[_295] == mem[_295]
                if block.timestamp < _284:
                    revert with 'NH{q', 17
                if block.timestamp - _284 and _276 > -1 / block.timestamp - _284:
                    revert with 'NH{q', 17
                if (block.timestamp * _276) - (_284 * _276) and 2 * 10^15 > -1 / (block.timestamp * _276) - (_284 * _276):
                    revert with 'NH{q', 17
                if mem[_295] > (-2 * 10^15 * block.timestamp * _276) + (2 * 10^15 * _284 * _276) - 1:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = _249
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 7
                mem[mem[64] + 100] = 'c-level'
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                        gas gas_remaining wei
                       args _249, Array(len=7, data='c-level')
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _313 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _317 = mem[_313]
                require mem[_313] == mem[_313]
                mem[mem[64] + 4] = _249
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 11
                mem[mem[64] + 100] = 'c-timestamp'
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                        gas gas_remaining wei
                       args _249, Array(len=11, data='c-timestamp')
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _329 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _333 = mem[_329]
                require mem[_329] == mem[_329]
                mem[mem[64] + 4] = _249
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 7
                mem[mem[64] + 100] = 'c-cache'
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                        gas gas_remaining wei
                       args _249, Array(len=7, data='c-cache')
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not mem[_329]:
                    _356 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _364 = mem[_356]
                    require mem[_356] == mem[_356]
                    if block.timestamp < block.timestamp:
                        revert with 'NH{q', 17
                    if False and _317 > 0:
                        revert with 'NH{q', 17
                    if mem[_356] > -1:
                        revert with 'NH{q', 17
                    if 0 >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    if mem[floor32(('cd', 4).length) + 129] > -_268 - 1:
                        revert with 'NH{q', 17
                    if 0 >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[floor32(('cd', 4).length) + 129] = mem[floor32(('cd', 4).length) + 129] + _268
                    if 1 >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    if mem[floor32(('cd', 4).length) + 161] > -_299 + (-2 * 10^15 * block.timestamp * _276) + (2 * 10^15 * _284 * _276) - 1:
                        revert with 'NH{q', 17
                    if 1 >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[floor32(('cd', 4).length) + 161] = mem[floor32(('cd', 4).length) + 161] + _299 + (2 * 10^15 * block.timestamp * _276) - (2 * 10^15 * _284 * _276)
                    if 2 >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    if mem[floor32(('cd', 4).length) + 193] > -_364 - 1:
                        revert with 'NH{q', 17
                    if 2 >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[floor32(('cd', 4).length) + 193] = mem[floor32(('cd', 4).length) + 193] + _364
                else:
                    _353 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _362 = mem[_353]
                    require mem[_353] == mem[_353]
                    if block.timestamp < _333:
                        revert with 'NH{q', 17
                    if block.timestamp - _333 and _317 > -1 / block.timestamp - _333:
                        revert with 'NH{q', 17
                    if (block.timestamp * _317) - (_333 * _317) and 10^14 > -1 / (block.timestamp * _317) - (_333 * _317):
                        revert with 'NH{q', 17
                    if mem[_353] > (-1 * 10^14 * block.timestamp * _317) + (10^14 * _333 * _317) - 1:
                        revert with 'NH{q', 17
                    if 0 >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    if mem[floor32(('cd', 4).length) + 129] > -_268 - 1:
                        revert with 'NH{q', 17
                    if 0 >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[floor32(('cd', 4).length) + 129] = mem[floor32(('cd', 4).length) + 129] + _268
                    if 1 >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    if mem[floor32(('cd', 4).length) + 161] > -_299 + (-2 * 10^15 * block.timestamp * _276) + (2 * 10^15 * _284 * _276) - 1:
                        revert with 'NH{q', 17
                    if 1 >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[floor32(('cd', 4).length) + 161] = mem[floor32(('cd', 4).length) + 161] + _299 + (2 * 10^15 * block.timestamp * _276) - (2 * 10^15 * _284 * _276)
                    if 2 >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    if mem[floor32(('cd', 4).length) + 193] > -_362 + (-1 * 10^14 * block.timestamp * _317) + (10^14 * _333 * _317) - 1:
                        revert with 'NH{q', 17
                    if 2 >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[floor32(('cd', 4).length) + 193] = mem[floor32(('cd', 4).length) + 193] + _362 + (10^14 * block.timestamp * _317) - (10^14 * _333 * _317)
        else:
            _265 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _267 = mem[_265]
            require mem[_265] == mem[_265]
            if block.timestamp < _260:
                revert with 'NH{q', 17
            if block.timestamp - _260 and _256 > -1 / block.timestamp - _260:
                revert with 'NH{q', 17
            if (block.timestamp * _256) - (_260 * _256) and 10^15 > -1 / (block.timestamp * _256) - (_260 * _256):
                revert with 'NH{q', 17
            if mem[_265] > (-1 * 10^15 * block.timestamp * _256) + (10^15 * _260 * _256) - 1:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = _249
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = 7
            mem[mem[64] + 100] = 'm-level'
            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                    gas gas_remaining wei
                   args _249, Array(len=7, data='m-level')
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _273 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _275 = mem[_273]
            require mem[_273] == mem[_273]
            mem[mem[64] + 4] = _249
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = 11
            mem[mem[64] + 100] = 'm-timestamp'
            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                    gas gas_remaining wei
                   args _249, Array(len=11, data='m-timestamp')
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _281 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _283 = mem[_281]
            require mem[_281] == mem[_281]
            mem[mem[64] + 4] = _249
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = 7
            mem[mem[64] + 100] = 'm-cache'
            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                    gas gas_remaining wei
                   args _249, Array(len=7, data='m-cache')
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not mem[_281]:
                _294 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _298 = mem[_294]
                require mem[_294] == mem[_294]
                if block.timestamp < block.timestamp:
                    revert with 'NH{q', 17
                if False and _275 > 0:
                    revert with 'NH{q', 17
                if mem[_294] > -1:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = _249
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 7
                mem[mem[64] + 100] = 'c-level'
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                        gas gas_remaining wei
                       args _249, Array(len=7, data='c-level')
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _312 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _316 = mem[_312]
                require mem[_312] == mem[_312]
                mem[mem[64] + 4] = _249
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 11
                mem[mem[64] + 100] = 'c-timestamp'
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                        gas gas_remaining wei
                       args _249, Array(len=11, data='c-timestamp')
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _328 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _332 = mem[_328]
                require mem[_328] == mem[_328]
                mem[mem[64] + 4] = _249
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 7
                mem[mem[64] + 100] = 'c-cache'
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                        gas gas_remaining wei
                       args _249, Array(len=7, data='c-cache')
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not mem[_328]:
                    _355 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _363 = mem[_355]
                    require mem[_355] == mem[_355]
                    if block.timestamp < block.timestamp:
                        revert with 'NH{q', 17
                    if False and _316 > 0:
                        revert with 'NH{q', 17
                    if mem[_355] > -1:
                        revert with 'NH{q', 17
                    if 0 >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    if mem[floor32(('cd', 4).length) + 129] > -_267 + (-1 * 10^15 * block.timestamp * _256) + (10^15 * _260 * _256) - 1:
                        revert with 'NH{q', 17
                    if 0 >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[floor32(('cd', 4).length) + 129] = mem[floor32(('cd', 4).length) + 129] + _267 + (10^15 * block.timestamp * _256) - (10^15 * _260 * _256)
                    if 1 >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    if mem[floor32(('cd', 4).length) + 161] > -_298 - 1:
                        revert with 'NH{q', 17
                    if 1 >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[floor32(('cd', 4).length) + 161] = mem[floor32(('cd', 4).length) + 161] + _298
                    if 2 >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    if mem[floor32(('cd', 4).length) + 193] > -_363 - 1:
                        revert with 'NH{q', 17
                    if 2 >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[floor32(('cd', 4).length) + 193] = mem[floor32(('cd', 4).length) + 193] + _363
                else:
                    _352 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _361 = mem[_352]
                    require mem[_352] == mem[_352]
                    if block.timestamp < _332:
                        revert with 'NH{q', 17
                    if block.timestamp - _332 and _316 > -1 / block.timestamp - _332:
                        revert with 'NH{q', 17
                    if (block.timestamp * _316) - (_332 * _316) and 10^14 > -1 / (block.timestamp * _316) - (_332 * _316):
                        revert with 'NH{q', 17
                    if mem[_352] > (-1 * 10^14 * block.timestamp * _316) + (10^14 * _332 * _316) - 1:
                        revert with 'NH{q', 17
                    if 0 >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    if mem[floor32(('cd', 4).length) + 129] > -_267 + (-1 * 10^15 * block.timestamp * _256) + (10^15 * _260 * _256) - 1:
                        revert with 'NH{q', 17
                    if 0 >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[floor32(('cd', 4).length) + 129] = mem[floor32(('cd', 4).length) + 129] + _267 + (10^15 * block.timestamp * _256) - (10^15 * _260 * _256)
                    if 1 >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    if mem[floor32(('cd', 4).length) + 161] > -_298 - 1:
                        revert with 'NH{q', 17
                    if 1 >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[floor32(('cd', 4).length) + 161] = mem[floor32(('cd', 4).length) + 161] + _298
                    if 2 >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    if mem[floor32(('cd', 4).length) + 193] > -_361 + (-1 * 10^14 * block.timestamp * _316) + (10^14 * _332 * _316) - 1:
                        revert with 'NH{q', 17
                    if 2 >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[floor32(('cd', 4).length) + 193] = mem[floor32(('cd', 4).length) + 193] + _361 + (10^14 * block.timestamp * _316) - (10^14 * _332 * _316)
            else:
                _292 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _297 = mem[_292]
                require mem[_292] == mem[_292]
                if block.timestamp < _283:
                    revert with 'NH{q', 17
                if block.timestamp - _283 and _275 > -1 / block.timestamp - _283:
                    revert with 'NH{q', 17
                if (block.timestamp * _275) - (_283 * _275) and 2 * 10^15 > -1 / (block.timestamp * _275) - (_283 * _275):
                    revert with 'NH{q', 17
                if mem[_292] > (-2 * 10^15 * block.timestamp * _275) + (2 * 10^15 * _283 * _275) - 1:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = _249
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 7
                mem[mem[64] + 100] = 'c-level'
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                        gas gas_remaining wei
                       args _249, Array(len=7, data='c-level')
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _310 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _315 = mem[_310]
                require mem[_310] == mem[_310]
                mem[mem[64] + 4] = _249
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 11
                mem[mem[64] + 100] = 'c-timestamp'
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                        gas gas_remaining wei
                       args _249, Array(len=11, data='c-timestamp')
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _326 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _331 = mem[_326]
                require mem[_326] == mem[_326]
                mem[mem[64] + 4] = _249
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 7
                mem[mem[64] + 100] = 'c-cache'
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                        gas gas_remaining wei
                       args _249, Array(len=7, data='c-cache')
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not mem[_326]:
                    _351 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _360 = mem[_351]
                    require mem[_351] == mem[_351]
                    if block.timestamp < block.timestamp:
                        revert with 'NH{q', 17
                    if False and _315 > 0:
                        revert with 'NH{q', 17
                    if mem[_351] > -1:
                        revert with 'NH{q', 17
                    if 0 >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    if mem[floor32(('cd', 4).length) + 129] > -_267 + (-1 * 10^15 * block.timestamp * _256) + (10^15 * _260 * _256) - 1:
                        revert with 'NH{q', 17
                    if 0 >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[floor32(('cd', 4).length) + 129] = mem[floor32(('cd', 4).length) + 129] + _267 + (10^15 * block.timestamp * _256) - (10^15 * _260 * _256)
                    if 1 >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    if mem[floor32(('cd', 4).length) + 161] > -_297 + (-2 * 10^15 * block.timestamp * _275) + (2 * 10^15 * _283 * _275) - 1:
                        revert with 'NH{q', 17
                    if 1 >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[floor32(('cd', 4).length) + 161] = mem[floor32(('cd', 4).length) + 161] + _297 + (2 * 10^15 * block.timestamp * _275) - (2 * 10^15 * _283 * _275)
                    if 2 >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    if mem[floor32(('cd', 4).length) + 193] > -_360 - 1:
                        revert with 'NH{q', 17
                    if 2 >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[floor32(('cd', 4).length) + 193] = mem[floor32(('cd', 4).length) + 193] + _360
                else:
                    _347 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _358 = mem[_347]
                    require mem[_347] == mem[_347]
                    if block.timestamp < _331:
                        revert with 'NH{q', 17
                    if block.timestamp - _331 and _315 > -1 / block.timestamp - _331:
                        revert with 'NH{q', 17
                    if (block.timestamp * _315) - (_331 * _315) and 10^14 > -1 / (block.timestamp * _315) - (_331 * _315):
                        revert with 'NH{q', 17
                    if mem[_347] > (-1 * 10^14 * block.timestamp * _315) + (10^14 * _331 * _315) - 1:
                        revert with 'NH{q', 17
                    if 0 >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    if mem[floor32(('cd', 4).length) + 129] > -_267 + (-1 * 10^15 * block.timestamp * _256) + (10^15 * _260 * _256) - 1:
                        revert with 'NH{q', 17
                    if 0 >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[floor32(('cd', 4).length) + 129] = mem[floor32(('cd', 4).length) + 129] + _267 + (10^15 * block.timestamp * _256) - (10^15 * _260 * _256)
                    if 1 >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    if mem[floor32(('cd', 4).length) + 161] > -_297 + (-2 * 10^15 * block.timestamp * _275) + (2 * 10^15 * _283 * _275) - 1:
                        revert with 'NH{q', 17
                    if 1 >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[floor32(('cd', 4).length) + 161] = mem[floor32(('cd', 4).length) + 161] + _297 + (2 * 10^15 * block.timestamp * _275) - (2 * 10^15 * _283 * _275)
                    if 2 >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    if mem[floor32(('cd', 4).length) + 193] > -_358 + (-1 * 10^14 * block.timestamp * _315) + (10^14 * _331 * _315) - 1:
                        revert with 'NH{q', 17
                    if 2 >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[floor32(('cd', 4).length) + 193] = mem[floor32(('cd', 4).length) + 193] + _358 + (10^14 * block.timestamp * _315) - (10^14 * _331 * _315)
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _251 = mem[floor32(('cd', 4).length) + 97]
    mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + 97]
    mem[mem[64] + 64 len 32 * _251] = mem[floor32(('cd', 4).length) + 129 len 32 * _251]
    return 32, mem[mem[64] + 32 len (32 * _251) + 32]
}

function sub_2aabff15(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 4).length) + 101] = 32
    mem[floor32(('cd', 4).length) + 133] = 14
    mem[floor32(('cd', 4).length) + 165] = 'metadataSetter'
    require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
    staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
            gas gas_remaining wei
           args Array(len=14, data='metadataSetter')
    mem[floor32(('cd', 4).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(('cd', 4).length) + ceil32(return_data.size) + 97
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _179 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                gas gas_remaining wei
               args _179
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _188 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_188] == mem[_188 + 12 len 20]
        if mem[_188 + 12 len 20] != msg.sender:
            revert with 0, 'User is not the owner of the planet.'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _181 = mem[64]
    mem[mem[64]] = 3
    mem[64] = mem[64] + 128
    if 0 >= mem[_181]:
        revert with 'NH{q', 50
    mem[_181 + 32] = 0
    if 1 >= mem[_181]:
        revert with 'NH{q', 50
    mem[_181 + 64] = 0
    if 2 >= mem[_181]:
        revert with 'NH{q', 50
    mem[_181 + 96] = 0
    _451 = mem[96]
    idx = 0
    while idx < _451:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _453 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = 7
        mem[mem[64] + 100] = 's-level'
        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                gas gas_remaining wei
               args mem[mem[64] + 4], Array(len=7, data='s-level')
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _461 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _466 = mem[_461]
        require mem[_461] == mem[_461]
        mem[mem[64] + 4] = _453
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = 11
        mem[mem[64] + 100] = 's-timestamp'
        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                gas gas_remaining wei
               args _453, Array(len=11, data='s-timestamp')
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _474 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _478 = mem[_474]
        require mem[_474] == mem[_474]
        mem[mem[64] + 4] = _453
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = 7
        mem[mem[64] + 100] = 's-cache'
        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                gas gas_remaining wei
               args _453, Array(len=7, data='s-cache')
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not mem[_474]:
            _491 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _496 = mem[_491]
            require mem[_491] == mem[_491]
            if block.timestamp < block.timestamp:
                revert with 'NH{q', 17
            if False and _466 > 0:
                revert with 'NH{q', 17
            if mem[_491] > -1:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = _453
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = 7
            mem[mem[64] + 100] = 'm-level'
            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                    gas gas_remaining wei
                   args _453, Array(len=7, data='m-level')
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _511 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _513 = mem[_511]
            require mem[_511] == mem[_511]
            mem[mem[64] + 4] = _453
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = 11
            mem[mem[64] + 100] = 'm-timestamp'
            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                    gas gas_remaining wei
                   args _453, Array(len=11, data='m-timestamp')
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _520 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _522 = mem[_520]
            require mem[_520] == mem[_520]
            mem[mem[64] + 4] = _453
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = 7
            mem[mem[64] + 100] = 'm-cache'
            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                    gas gas_remaining wei
                   args _453, Array(len=7, data='m-cache')
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not mem[_520]:
                _534 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _538 = mem[_534]
                require mem[_534] == mem[_534]
                if block.timestamp < block.timestamp:
                    revert with 'NH{q', 17
                if False and _513 > 0:
                    revert with 'NH{q', 17
                if mem[_534] > -1:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = _453
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 7
                mem[mem[64] + 100] = 'c-level'
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                        gas gas_remaining wei
                       args _453, Array(len=7, data='c-level')
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _563 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _568 = mem[_563]
                require mem[_563] == mem[_563]
                mem[mem[64] + 4] = _453
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 11
                mem[mem[64] + 100] = 'c-timestamp'
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                        gas gas_remaining wei
                       args _453, Array(len=11, data='c-timestamp')
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _587 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _592 = mem[_587]
                require mem[_587] == mem[_587]
                mem[mem[64] + 4] = _453
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 7
                mem[mem[64] + 100] = 'c-cache'
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                        gas gas_remaining wei
                       args _453, Array(len=7, data='c-cache')
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not mem[_587]:
                    _626 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _634 = mem[_626]
                    require mem[_626] == mem[_626]
                    if block.timestamp < block.timestamp:
                        revert with 'NH{q', 17
                    if False and _568 > 0:
                        revert with 'NH{q', 17
                    if mem[_626] > -1:
                        revert with 'NH{q', 17
                    if 0 >= mem[_181]:
                        revert with 'NH{q', 50
                    if mem[_181 + 32] > -_496 - 1:
                        revert with 'NH{q', 17
                    if 0 >= mem[_181]:
                        revert with 'NH{q', 50
                    mem[_181 + 32] = mem[_181 + 32] + _496
                    if 1 >= mem[_181]:
                        revert with 'NH{q', 50
                    if mem[_181 + 64] > -_538 - 1:
                        revert with 'NH{q', 17
                    if 1 >= mem[_181]:
                        revert with 'NH{q', 50
                    mem[_181 + 64] = mem[_181 + 64] + _538
                    if 2 >= mem[_181]:
                        revert with 'NH{q', 50
                    if mem[_181 + 96] > -_634 - 1:
                        revert with 'NH{q', 17
                    if 2 >= mem[_181]:
                        revert with 'NH{q', 50
                    mem[_181 + 96] = mem[_181 + 96] + _634
                else:
                    _623 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _633 = mem[_623]
                    require mem[_623] == mem[_623]
                    if block.timestamp < _592:
                        revert with 'NH{q', 17
                    if block.timestamp - _592 and _568 > -1 / block.timestamp - _592:
                        revert with 'NH{q', 17
                    if (block.timestamp * _568) - (_592 * _568) and 10^14 > -1 / (block.timestamp * _568) - (_592 * _568):
                        revert with 'NH{q', 17
                    if mem[_623] > (-1 * 10^14 * block.timestamp * _568) + (10^14 * _592 * _568) - 1:
                        revert with 'NH{q', 17
                    if 0 >= mem[_181]:
                        revert with 'NH{q', 50
                    if mem[_181 + 32] > -_496 - 1:
                        revert with 'NH{q', 17
                    if 0 >= mem[_181]:
                        revert with 'NH{q', 50
                    mem[_181 + 32] = mem[_181 + 32] + _496
                    if 1 >= mem[_181]:
                        revert with 'NH{q', 50
                    if mem[_181 + 64] > -_538 - 1:
                        revert with 'NH{q', 17
                    if 1 >= mem[_181]:
                        revert with 'NH{q', 50
                    mem[_181 + 64] = mem[_181 + 64] + _538
                    if 2 >= mem[_181]:
                        revert with 'NH{q', 50
                    if mem[_181 + 96] > -_633 + (-1 * 10^14 * block.timestamp * _568) + (10^14 * _592 * _568) - 1:
                        revert with 'NH{q', 17
                    if 2 >= mem[_181]:
                        revert with 'NH{q', 50
                    mem[_181 + 96] = mem[_181 + 96] + _633 + (10^14 * block.timestamp * _568) - (10^14 * _592 * _568)
            else:
                _533 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _537 = mem[_533]
                require mem[_533] == mem[_533]
                if block.timestamp < _522:
                    revert with 'NH{q', 17
                if block.timestamp - _522 and _513 > -1 / block.timestamp - _522:
                    revert with 'NH{q', 17
                if (block.timestamp * _513) - (_522 * _513) and 2 * 10^15 > -1 / (block.timestamp * _513) - (_522 * _513):
                    revert with 'NH{q', 17
                if mem[_533] > (-2 * 10^15 * block.timestamp * _513) + (2 * 10^15 * _522 * _513) - 1:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = _453
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 7
                mem[mem[64] + 100] = 'c-level'
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                        gas gas_remaining wei
                       args _453, Array(len=7, data='c-level')
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _562 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _567 = mem[_562]
                require mem[_562] == mem[_562]
                mem[mem[64] + 4] = _453
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 11
                mem[mem[64] + 100] = 'c-timestamp'
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                        gas gas_remaining wei
                       args _453, Array(len=11, data='c-timestamp')
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _586 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _591 = mem[_586]
                require mem[_586] == mem[_586]
                mem[mem[64] + 4] = _453
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 7
                mem[mem[64] + 100] = 'c-cache'
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                        gas gas_remaining wei
                       args _453, Array(len=7, data='c-cache')
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not mem[_586]:
                    _622 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _632 = mem[_622]
                    require mem[_622] == mem[_622]
                    if block.timestamp < block.timestamp:
                        revert with 'NH{q', 17
                    if False and _567 > 0:
                        revert with 'NH{q', 17
                    if mem[_622] > -1:
                        revert with 'NH{q', 17
                    if 0 >= mem[_181]:
                        revert with 'NH{q', 50
                    if mem[_181 + 32] > -_496 - 1:
                        revert with 'NH{q', 17
                    if 0 >= mem[_181]:
                        revert with 'NH{q', 50
                    mem[_181 + 32] = mem[_181 + 32] + _496
                    if 1 >= mem[_181]:
                        revert with 'NH{q', 50
                    if mem[_181 + 64] > -_537 + (-2 * 10^15 * block.timestamp * _513) + (2 * 10^15 * _522 * _513) - 1:
                        revert with 'NH{q', 17
                    if 1 >= mem[_181]:
                        revert with 'NH{q', 50
                    mem[_181 + 64] = mem[_181 + 64] + _537 + (2 * 10^15 * block.timestamp * _513) - (2 * 10^15 * _522 * _513)
                    if 2 >= mem[_181]:
                        revert with 'NH{q', 50
                    if mem[_181 + 96] > -_632 - 1:
                        revert with 'NH{q', 17
                    if 2 >= mem[_181]:
                        revert with 'NH{q', 50
                    mem[_181 + 96] = mem[_181 + 96] + _632
                else:
                    _619 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _630 = mem[_619]
                    require mem[_619] == mem[_619]
                    if block.timestamp < _591:
                        revert with 'NH{q', 17
                    if block.timestamp - _591 and _567 > -1 / block.timestamp - _591:
                        revert with 'NH{q', 17
                    if (block.timestamp * _567) - (_591 * _567) and 10^14 > -1 / (block.timestamp * _567) - (_591 * _567):
                        revert with 'NH{q', 17
                    if mem[_619] > (-1 * 10^14 * block.timestamp * _567) + (10^14 * _591 * _567) - 1:
                        revert with 'NH{q', 17
                    if 0 >= mem[_181]:
                        revert with 'NH{q', 50
                    if mem[_181 + 32] > -_496 - 1:
                        revert with 'NH{q', 17
                    if 0 >= mem[_181]:
                        revert with 'NH{q', 50
                    mem[_181 + 32] = mem[_181 + 32] + _496
                    if 1 >= mem[_181]:
                        revert with 'NH{q', 50
                    if mem[_181 + 64] > -_537 + (-2 * 10^15 * block.timestamp * _513) + (2 * 10^15 * _522 * _513) - 1:
                        revert with 'NH{q', 17
                    if 1 >= mem[_181]:
                        revert with 'NH{q', 50
                    mem[_181 + 64] = mem[_181 + 64] + _537 + (2 * 10^15 * block.timestamp * _513) - (2 * 10^15 * _522 * _513)
                    if 2 >= mem[_181]:
                        revert with 'NH{q', 50
                    if mem[_181 + 96] > -_630 + (-1 * 10^14 * block.timestamp * _567) + (10^14 * _591 * _567) - 1:
                        revert with 'NH{q', 17
                    if 2 >= mem[_181]:
                        revert with 'NH{q', 50
                    mem[_181 + 96] = mem[_181 + 96] + _630 + (10^14 * block.timestamp * _567) - (10^14 * _591 * _567)
        else:
            _489 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _495 = mem[_489]
            require mem[_489] == mem[_489]
            if block.timestamp < _478:
                revert with 'NH{q', 17
            if block.timestamp - _478 and _466 > -1 / block.timestamp - _478:
                revert with 'NH{q', 17
            if (block.timestamp * _466) - (_478 * _466) and 10^15 > -1 / (block.timestamp * _466) - (_478 * _466):
                revert with 'NH{q', 17
            if mem[_489] > (-1 * 10^15 * block.timestamp * _466) + (10^15 * _478 * _466) - 1:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = _453
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = 7
            mem[mem[64] + 100] = 'm-level'
            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                    gas gas_remaining wei
                   args _453, Array(len=7, data='m-level')
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _510 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _512 = mem[_510]
            require mem[_510] == mem[_510]
            mem[mem[64] + 4] = _453
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = 11
            mem[mem[64] + 100] = 'm-timestamp'
            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                    gas gas_remaining wei
                   args _453, Array(len=11, data='m-timestamp')
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _519 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _521 = mem[_519]
            require mem[_519] == mem[_519]
            mem[mem[64] + 4] = _453
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = 7
            mem[mem[64] + 100] = 'm-cache'
            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                    gas gas_remaining wei
                   args _453, Array(len=7, data='m-cache')
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not mem[_519]:
                _532 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _536 = mem[_532]
                require mem[_532] == mem[_532]
                if block.timestamp < block.timestamp:
                    revert with 'NH{q', 17
                if False and _512 > 0:
                    revert with 'NH{q', 17
                if mem[_532] > -1:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = _453
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 7
                mem[mem[64] + 100] = 'c-level'
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                        gas gas_remaining wei
                       args _453, Array(len=7, data='c-level')
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _561 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _566 = mem[_561]
                require mem[_561] == mem[_561]
                mem[mem[64] + 4] = _453
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 11
                mem[mem[64] + 100] = 'c-timestamp'
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                        gas gas_remaining wei
                       args _453, Array(len=11, data='c-timestamp')
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _585 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _590 = mem[_585]
                require mem[_585] == mem[_585]
                mem[mem[64] + 4] = _453
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 7
                mem[mem[64] + 100] = 'c-cache'
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                        gas gas_remaining wei
                       args _453, Array(len=7, data='c-cache')
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not mem[_585]:
                    _621 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _631 = mem[_621]
                    require mem[_621] == mem[_621]
                    if block.timestamp < block.timestamp:
                        revert with 'NH{q', 17
                    if False and _566 > 0:
                        revert with 'NH{q', 17
                    if mem[_621] > -1:
                        revert with 'NH{q', 17
                    if 0 >= mem[_181]:
                        revert with 'NH{q', 50
                    if mem[_181 + 32] > -_495 + (-1 * 10^15 * block.timestamp * _466) + (10^15 * _478 * _466) - 1:
                        revert with 'NH{q', 17
                    if 0 >= mem[_181]:
                        revert with 'NH{q', 50
                    mem[_181 + 32] = mem[_181 + 32] + _495 + (10^15 * block.timestamp * _466) - (10^15 * _478 * _466)
                    if 1 >= mem[_181]:
                        revert with 'NH{q', 50
                    if mem[_181 + 64] > -_536 - 1:
                        revert with 'NH{q', 17
                    if 1 >= mem[_181]:
                        revert with 'NH{q', 50
                    mem[_181 + 64] = mem[_181 + 64] + _536
                    if 2 >= mem[_181]:
                        revert with 'NH{q', 50
                    if mem[_181 + 96] > -_631 - 1:
                        revert with 'NH{q', 17
                    if 2 >= mem[_181]:
                        revert with 'NH{q', 50
                    mem[_181 + 96] = mem[_181 + 96] + _631
                else:
                    _618 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _629 = mem[_618]
                    require mem[_618] == mem[_618]
                    if block.timestamp < _590:
                        revert with 'NH{q', 17
                    if block.timestamp - _590 and _566 > -1 / block.timestamp - _590:
                        revert with 'NH{q', 17
                    if (block.timestamp * _566) - (_590 * _566) and 10^14 > -1 / (block.timestamp * _566) - (_590 * _566):
                        revert with 'NH{q', 17
                    if mem[_618] > (-1 * 10^14 * block.timestamp * _566) + (10^14 * _590 * _566) - 1:
                        revert with 'NH{q', 17
                    if 0 >= mem[_181]:
                        revert with 'NH{q', 50
                    if mem[_181 + 32] > -_495 + (-1 * 10^15 * block.timestamp * _466) + (10^15 * _478 * _466) - 1:
                        revert with 'NH{q', 17
                    if 0 >= mem[_181]:
                        revert with 'NH{q', 50
                    mem[_181 + 32] = mem[_181 + 32] + _495 + (10^15 * block.timestamp * _466) - (10^15 * _478 * _466)
                    if 1 >= mem[_181]:
                        revert with 'NH{q', 50
                    if mem[_181 + 64] > -_536 - 1:
                        revert with 'NH{q', 17
                    if 1 >= mem[_181]:
                        revert with 'NH{q', 50
                    mem[_181 + 64] = mem[_181 + 64] + _536
                    if 2 >= mem[_181]:
                        revert with 'NH{q', 50
                    if mem[_181 + 96] > -_629 + (-1 * 10^14 * block.timestamp * _566) + (10^14 * _590 * _566) - 1:
                        revert with 'NH{q', 17
                    if 2 >= mem[_181]:
                        revert with 'NH{q', 50
                    mem[_181 + 96] = mem[_181 + 96] + _629 + (10^14 * block.timestamp * _566) - (10^14 * _590 * _566)
            else:
                _530 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _535 = mem[_530]
                require mem[_530] == mem[_530]
                if block.timestamp < _521:
                    revert with 'NH{q', 17
                if block.timestamp - _521 and _512 > -1 / block.timestamp - _521:
                    revert with 'NH{q', 17
                if (block.timestamp * _512) - (_521 * _512) and 2 * 10^15 > -1 / (block.timestamp * _512) - (_521 * _512):
                    revert with 'NH{q', 17
                if mem[_530] > (-2 * 10^15 * block.timestamp * _512) + (2 * 10^15 * _521 * _512) - 1:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = _453
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 7
                mem[mem[64] + 100] = 'c-level'
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                        gas gas_remaining wei
                       args _453, Array(len=7, data='c-level')
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _559 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _565 = mem[_559]
                require mem[_559] == mem[_559]
                mem[mem[64] + 4] = _453
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 11
                mem[mem[64] + 100] = 'c-timestamp'
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                        gas gas_remaining wei
                       args _453, Array(len=11, data='c-timestamp')
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _582 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _588 = mem[_582]
                require mem[_582] == mem[_582]
                mem[mem[64] + 4] = _453
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = 7
                mem[mem[64] + 100] = 'c-cache'
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                        gas gas_remaining wei
                       args _453, Array(len=7, data='c-cache')
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not mem[_582]:
                    _617 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _628 = mem[_617]
                    require mem[_617] == mem[_617]
                    if block.timestamp < block.timestamp:
                        revert with 'NH{q', 17
                    if False and _565 > 0:
                        revert with 'NH{q', 17
                    if mem[_617] > -1:
                        revert with 'NH{q', 17
                    if 0 >= mem[_181]:
                        revert with 'NH{q', 50
                    if mem[_181 + 32] > -_495 + (-1 * 10^15 * block.timestamp * _466) + (10^15 * _478 * _466) - 1:
                        revert with 'NH{q', 17
                    if 0 >= mem[_181]:
                        revert with 'NH{q', 50
                    mem[_181 + 32] = mem[_181 + 32] + _495 + (10^15 * block.timestamp * _466) - (10^15 * _478 * _466)
                    if 1 >= mem[_181]:
                        revert with 'NH{q', 50
                    if mem[_181 + 64] > -_535 + (-2 * 10^15 * block.timestamp * _512) + (2 * 10^15 * _521 * _512) - 1:
                        revert with 'NH{q', 17
                    if 1 >= mem[_181]:
                        revert with 'NH{q', 50
                    mem[_181 + 64] = mem[_181 + 64] + _535 + (2 * 10^15 * block.timestamp * _512) - (2 * 10^15 * _521 * _512)
                    if 2 >= mem[_181]:
                        revert with 'NH{q', 50
                    if mem[_181 + 96] > -_628 - 1:
                        revert with 'NH{q', 17
                    if 2 >= mem[_181]:
                        revert with 'NH{q', 50
                    mem[_181 + 96] = mem[_181 + 96] + _628
                else:
                    _611 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _625 = mem[_611]
                    require mem[_611] == mem[_611]
                    if block.timestamp < _588:
                        revert with 'NH{q', 17
                    if block.timestamp - _588 and _565 > -1 / block.timestamp - _588:
                        revert with 'NH{q', 17
                    if (block.timestamp * _565) - (_588 * _565) and 10^14 > -1 / (block.timestamp * _565) - (_588 * _565):
                        revert with 'NH{q', 17
                    if mem[_611] > (-1 * 10^14 * block.timestamp * _565) + (10^14 * _588 * _565) - 1:
                        revert with 'NH{q', 17
                    if 0 >= mem[_181]:
                        revert with 'NH{q', 50
                    if mem[_181 + 32] > -_495 + (-1 * 10^15 * block.timestamp * _466) + (10^15 * _478 * _466) - 1:
                        revert with 'NH{q', 17
                    if 0 >= mem[_181]:
                        revert with 'NH{q', 50
                    mem[_181 + 32] = mem[_181 + 32] + _495 + (10^15 * block.timestamp * _466) - (10^15 * _478 * _466)
                    if 1 >= mem[_181]:
                        revert with 'NH{q', 50
                    if mem[_181 + 64] > -_535 + (-2 * 10^15 * block.timestamp * _512) + (2 * 10^15 * _521 * _512) - 1:
                        revert with 'NH{q', 17
                    if 1 >= mem[_181]:
                        revert with 'NH{q', 50
                    mem[_181 + 64] = mem[_181 + 64] + _535 + (2 * 10^15 * block.timestamp * _512) - (2 * 10^15 * _521 * _512)
                    if 2 >= mem[_181]:
                        revert with 'NH{q', 50
                    if mem[_181 + 96] > -_625 + (-1 * 10^14 * block.timestamp * _565) + (10^14 * _588 * _565) - 1:
                        revert with 'NH{q', 17
                    if 2 >= mem[_181]:
                        revert with 'NH{q', 50
                    mem[_181 + 96] = mem[_181 + 96] + _625 + (10^14 * block.timestamp * _565) - (10^14 * _588 * _565)
        if idx == -1:
            revert with 'NH{q', 17
        _451 = mem[96]
        idx = idx + 1
        continue 
    _539 = mem[96]
    idx = 0
    while idx < _539:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _541 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = 11
        mem[mem[64] + 100] = 's-timestamp'
        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                gas gas_remaining wei
               args mem[mem[64] + 4], Array(len=11, data='s-timestamp')
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _545 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_545] == mem[_545]
        if mem[_545] < block.timestamp:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x4e4f31ed with:
                 gas gas_remaining wei
                args _541, Array(len=11, data='s-timestamp'), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x4e4f31ed with:
                 gas gas_remaining wei
                args _541, 96, 0, 7, 's-cache'
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x4e4f31ed with:
                 gas gas_remaining wei
                args _541, Array(len=11, data='m-timestamp'), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x4e4f31ed with:
                 gas gas_remaining wei
                args _541, 96, 0, 7, 'm-cache'
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x4e4f31ed with:
                 gas gas_remaining wei
                args _541, Array(len=11, data='c-timestamp'), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x4e4f31ed00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _541
            mem[mem[64] + 36] = 96
            mem[mem[64] + 100] = 7
            mem[mem[64] + 132] = 'c-cache'
            mem[mem[64] + 68] = 0
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x4e4f31ed with:
                 gas gas_remaining wei
                args _541, 96, 0, 7, 'c-cache'
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        _539 = mem[96]
        idx = idx + 1
        continue 
    if 0 >= mem[_181]:
        revert with 'NH{q', 50
    _546 = mem[_181 + 32]
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = _546
    require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
    call 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.mint(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, _546
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _558 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_558] == bool(mem[_558])
    if 1 >= mem[_181]:
        revert with 'NH{q', 50
    _571 = mem[_181 + 64]
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = _571
    require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
    call 0x4c1057455747e3ee5871d374fdd77a304ce10989.mint(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, _571
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _584 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_584] == bool(mem[_584])
    if 2 >= mem[_181]:
        revert with 'NH{q', 50
    _597 = mem[_181 + 96]
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = _597
    require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
    call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.mint(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, _597
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _615 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_615] == bool(mem[_615])
}

function sub_b589cae6(?) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not arg1:
        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                gas gas_remaining wei
               args 0, uint32(arg3), 64, 7, 's-level'
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                gas gas_remaining wei
               args arg3, Array(len=11, data='s-timestamp')
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                gas gas_remaining wei
               args arg3, Array(len=7, data='s-cache')
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if not ext_call.return_data[0]:
            if block.timestamp < block.timestamp:
                revert with 'NH{q', 17
            if False and ext_call.return_data[0] > 0:
                revert with 'NH{q', 17
            if ext_call.return_data[0] > -1:
                revert with 'NH{q', 17
            require ext_call.return_data[0] >= arg2
            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                    gas gas_remaining wei
                   args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require msg.sender == ext_call.return_data[12 len 20]
            require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
            staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
                    gas gas_remaining wei
                   args Array(len=14, data='metadataSetter')
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if not arg1:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x4e4f31ed with:
                     gas gas_remaining wei
                    args arg3, Array(len=11, data='s-timestamp'), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if ext_call.return_data[0] < arg2:
                    revert with 'NH{q', 17
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x4e4f31ed with:
                     gas gas_remaining wei
                    args arg3, Array(len=7, data='s-cache'), ext_call.return_data[0] - arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                        gas gas_remaining wei
                       args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
                call 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if arg1 == 1:
                    if not arg1:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                             gas gas_remaining wei
                            args arg3, Array(len=11, data='s-timestamp'), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if ext_call.return_data[0] < arg2:
                            revert with 'NH{q', 17
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                             gas gas_remaining wei
                            args arg3, Array(len=7, data='s-cache'), ext_call.return_data[0] - arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                gas gas_remaining wei
                               args arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                        call 0x4c1057455747e3ee5871d374fdd77a304ce10989.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if arg1 == 1:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                 gas gas_remaining wei
                                args arg3, Array(len=11, data='m-timestamp'), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ext_call.return_data[0] < arg2:
                                revert with 'NH{q', 17
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                 gas gas_remaining wei
                                args arg3, Array(len=7, data='m-cache'), ext_call.return_data[0] - arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                    gas gas_remaining wei
                                   args arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                            call 0x4c1057455747e3ee5871d374fdd77a304ce10989.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if arg1 == 2:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, Array(len=11, data='c-timestamp'), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] < arg2:
                                    revert with 'NH{q', 17
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, Array(len=7, data='c-cache'), ext_call.return_data[0] - arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                        gas gas_remaining wei
                                       args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                                call 0x4c1057455747e3ee5871d374fdd77a304ce10989.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if arg1 != 2:
                        if not arg1:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                 gas gas_remaining wei
                                args arg3, Array(len=11, data='s-timestamp'), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ext_call.return_data[0] < arg2:
                                revert with 'NH{q', 17
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                 gas gas_remaining wei
                                args arg3, Array(len=7, data='s-cache'), ext_call.return_data[0] - arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                    gas gas_remaining wei
                                   args arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(0)
                            call 0x0.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if arg1 == 1:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, Array(len=11, data='m-timestamp'), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] < arg2:
                                    revert with 'NH{q', 17
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, Array(len=7, data='m-cache'), ext_call.return_data[0] - arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                        gas gas_remaining wei
                                       args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(0)
                                call 0x0.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if arg1 == 2:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=11, data='c-timestamp'), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[0] < arg2:
                                        revert with 'NH{q', 17
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=7, data='c-cache'), ext_call.return_data[0] - arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(0)
                                    call 0x0.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if not arg1:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                 gas gas_remaining wei
                                args arg3, Array(len=11, data='s-timestamp'), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ext_call.return_data[0] < arg2:
                                revert with 'NH{q', 17
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                 gas gas_remaining wei
                                args arg3, Array(len=7, data='s-cache'), ext_call.return_data[0] - arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                    gas gas_remaining wei
                                   args arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                            call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if arg1 == 1:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, Array(len=11, data='m-timestamp'), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] < arg2:
                                    revert with 'NH{q', 17
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, Array(len=7, data='m-cache'), ext_call.return_data[0] - arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                        gas gas_remaining wei
                                       args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                                call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if arg1 == 2:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=11, data='c-timestamp'), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[0] < arg2:
                                        revert with 'NH{q', 17
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=7, data='c-cache'), ext_call.return_data[0] - arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                                    call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            if block.timestamp < ext_call.return_data[0]:
                revert with 'NH{q', 17
            if block.timestamp - ext_call.return_data[0] and ext_call.return_data[0] > -1 / block.timestamp - ext_call.return_data[0]:
                revert with 'NH{q', 17
            if (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) and 10^15 > -1 / (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]):
                revert with 'NH{q', 17
            if ext_call.return_data[0] > (-1 * 10^15 * block.timestamp * ext_call.return_data[0]) + (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            require ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) >= arg2
            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                    gas gas_remaining wei
                   args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require msg.sender == ext_call.return_data[12 len 20]
            require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
            staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
                    gas gas_remaining wei
                   args Array(len=14, data='metadataSetter')
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if not arg1:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x4e4f31ed with:
                     gas gas_remaining wei
                    args arg3, Array(len=11, data='s-timestamp'), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                    revert with 'NH{q', 17
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x4e4f31ed with:
                     gas gas_remaining wei
                    args arg3, Array(len=7, data='s-cache'), ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                        gas gas_remaining wei
                       args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
                call 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if arg1 == 1:
                    if not arg1:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                             gas gas_remaining wei
                            args arg3, Array(len=11, data='s-timestamp'), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                            revert with 'NH{q', 17
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                             gas gas_remaining wei
                            args arg3, Array(len=7, data='s-cache'), ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                gas gas_remaining wei
                               args arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                        call 0x4c1057455747e3ee5871d374fdd77a304ce10989.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if arg1 == 1:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                 gas gas_remaining wei
                                args arg3, Array(len=11, data='m-timestamp'), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                revert with 'NH{q', 17
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                 gas gas_remaining wei
                                args arg3, Array(len=7, data='m-cache'), ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                    gas gas_remaining wei
                                   args arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                            call 0x4c1057455747e3ee5871d374fdd77a304ce10989.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if arg1 == 2:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, Array(len=11, data='c-timestamp'), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                    revert with 'NH{q', 17
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, Array(len=7, data='c-cache'), ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                        gas gas_remaining wei
                                       args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                                call 0x4c1057455747e3ee5871d374fdd77a304ce10989.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if arg1 != 2:
                        if not arg1:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                 gas gas_remaining wei
                                args arg3, Array(len=11, data='s-timestamp'), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                revert with 'NH{q', 17
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                 gas gas_remaining wei
                                args arg3, Array(len=7, data='s-cache'), ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                    gas gas_remaining wei
                                   args arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(0)
                            call 0x0.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if arg1 == 1:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, Array(len=11, data='m-timestamp'), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                    revert with 'NH{q', 17
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, Array(len=7, data='m-cache'), ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                        gas gas_remaining wei
                                       args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(0)
                                call 0x0.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if arg1 == 2:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=11, data='c-timestamp'), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                        revert with 'NH{q', 17
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=7, data='c-cache'), ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(0)
                                    call 0x0.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if not arg1:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                 gas gas_remaining wei
                                args arg3, Array(len=11, data='s-timestamp'), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                revert with 'NH{q', 17
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                 gas gas_remaining wei
                                args arg3, Array(len=7, data='s-cache'), ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                    gas gas_remaining wei
                                   args arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                            call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if arg1 == 1:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, Array(len=11, data='m-timestamp'), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                    revert with 'NH{q', 17
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, Array(len=7, data='m-cache'), ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                        gas gas_remaining wei
                                       args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                                call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if arg1 == 2:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=11, data='c-timestamp'), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                        revert with 'NH{q', 17
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=7, data='c-cache'), ext_call.return_data[0] + (10^15 * block.timestamp * ext_call.return_data[0]) - (10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                                    call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        if arg1 == 1:
            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                    gas gas_remaining wei
                   args 0, uint32(arg3), 64, 7, 'm-level'
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                    gas gas_remaining wei
                   args arg3, Array(len=11, data='m-timestamp')
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                    gas gas_remaining wei
                   args arg3, Array(len=7, data='m-cache')
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if not ext_call.return_data[0]:
                if block.timestamp < block.timestamp:
                    revert with 'NH{q', 17
                if False and ext_call.return_data[0] > 0:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] > -1:
                    revert with 'NH{q', 17
                require ext_call.return_data[0] >= arg2
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                        gas gas_remaining wei
                       args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require msg.sender == ext_call.return_data[12 len 20]
                require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
                staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
                        gas gas_remaining wei
                       args Array(len=14, data='metadataSetter')
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if not arg1:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                         gas gas_remaining wei
                        args arg3, Array(len=11, data='s-timestamp'), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if ext_call.return_data[0] < arg2:
                        revert with 'NH{q', 17
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                         gas gas_remaining wei
                        args arg3, Array(len=7, data='s-cache'), ext_call.return_data[0] - arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                            gas gas_remaining wei
                           args arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
                    call 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if arg1 == 1:
                        if not arg1:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                 gas gas_remaining wei
                                args arg3, Array(len=11, data='s-timestamp'), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ext_call.return_data[0] < arg2:
                                revert with 'NH{q', 17
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                 gas gas_remaining wei
                                args arg3, Array(len=7, data='s-cache'), ext_call.return_data[0] - arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                    gas gas_remaining wei
                                   args arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                            call 0x4c1057455747e3ee5871d374fdd77a304ce10989.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if arg1 == 1:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, Array(len=11, data='m-timestamp'), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] < arg2:
                                    revert with 'NH{q', 17
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, Array(len=7, data='m-cache'), ext_call.return_data[0] - arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                        gas gas_remaining wei
                                       args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                                call 0x4c1057455747e3ee5871d374fdd77a304ce10989.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if arg1 == 2:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=11, data='c-timestamp'), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[0] < arg2:
                                        revert with 'NH{q', 17
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=7, data='c-cache'), ext_call.return_data[0] - arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                                    call 0x4c1057455747e3ee5871d374fdd77a304ce10989.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if arg1 != 2:
                            if not arg1:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, Array(len=11, data='s-timestamp'), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] < arg2:
                                    revert with 'NH{q', 17
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, Array(len=7, data='s-cache'), ext_call.return_data[0] - arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                        gas gas_remaining wei
                                       args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(0)
                                call 0x0.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if arg1 == 1:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=11, data='m-timestamp'), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[0] < arg2:
                                        revert with 'NH{q', 17
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=7, data='m-cache'), ext_call.return_data[0] - arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(0)
                                    call 0x0.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                else:
                                    if arg1 == 2:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, Array(len=11, data='c-timestamp'), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if ext_call.return_data[0] < arg2:
                                            revert with 'NH{q', 17
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, Array(len=7, data='c-cache'), ext_call.return_data[0] - arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                                gas gas_remaining wei
                                               args arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(0)
                                        call 0x0.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if not arg1:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, Array(len=11, data='s-timestamp'), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] < arg2:
                                    revert with 'NH{q', 17
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, Array(len=7, data='s-cache'), ext_call.return_data[0] - arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                        gas gas_remaining wei
                                       args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                                call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if arg1 == 1:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=11, data='m-timestamp'), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[0] < arg2:
                                        revert with 'NH{q', 17
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=7, data='m-cache'), ext_call.return_data[0] - arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                                    call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                else:
                                    if arg1 == 2:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, Array(len=11, data='c-timestamp'), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if ext_call.return_data[0] < arg2:
                                            revert with 'NH{q', 17
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, Array(len=7, data='c-cache'), ext_call.return_data[0] - arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                                gas gas_remaining wei
                                               args arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                                        call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if block.timestamp < ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if block.timestamp - ext_call.return_data[0] and ext_call.return_data[0] > -1 / block.timestamp - ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) and 2 * 10^15 > -1 / (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if ext_call.return_data[0] > (-2 * 10^15 * block.timestamp * ext_call.return_data[0]) + (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                require ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) >= arg2
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                        gas gas_remaining wei
                       args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require msg.sender == ext_call.return_data[12 len 20]
                require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
                staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
                        gas gas_remaining wei
                       args Array(len=14, data='metadataSetter')
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if not arg1:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                         gas gas_remaining wei
                        args arg3, Array(len=11, data='s-timestamp'), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                        revert with 'NH{q', 17
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                         gas gas_remaining wei
                        args arg3, Array(len=7, data='s-cache'), ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                            gas gas_remaining wei
                           args arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
                    call 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if arg1 == 1:
                        if not arg1:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                 gas gas_remaining wei
                                args arg3, Array(len=11, data='s-timestamp'), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                revert with 'NH{q', 17
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                 gas gas_remaining wei
                                args arg3, Array(len=7, data='s-cache'), ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                    gas gas_remaining wei
                                   args arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                            call 0x4c1057455747e3ee5871d374fdd77a304ce10989.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if arg1 == 1:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, Array(len=11, data='m-timestamp'), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                    revert with 'NH{q', 17
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, Array(len=7, data='m-cache'), ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                        gas gas_remaining wei
                                       args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                                call 0x4c1057455747e3ee5871d374fdd77a304ce10989.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if arg1 == 2:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=11, data='c-timestamp'), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                        revert with 'NH{q', 17
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=7, data='c-cache'), ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                                    call 0x4c1057455747e3ee5871d374fdd77a304ce10989.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if arg1 != 2:
                            if not arg1:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, Array(len=11, data='s-timestamp'), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                    revert with 'NH{q', 17
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, Array(len=7, data='s-cache'), ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                        gas gas_remaining wei
                                       args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(0)
                                call 0x0.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if arg1 == 1:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=11, data='m-timestamp'), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                        revert with 'NH{q', 17
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=7, data='m-cache'), ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(0)
                                    call 0x0.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                else:
                                    if arg1 == 2:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, Array(len=11, data='c-timestamp'), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                            revert with 'NH{q', 17
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, Array(len=7, data='c-cache'), ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                                gas gas_remaining wei
                                               args arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(0)
                                        call 0x0.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if not arg1:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, Array(len=11, data='s-timestamp'), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                    revert with 'NH{q', 17
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, Array(len=7, data='s-cache'), ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                        gas gas_remaining wei
                                       args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                                call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if arg1 == 1:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=11, data='m-timestamp'), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                        revert with 'NH{q', 17
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=7, data='m-cache'), ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                                    call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                else:
                                    if arg1 == 2:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, Array(len=11, data='c-timestamp'), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                            revert with 'NH{q', 17
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, Array(len=7, data='c-cache'), ext_call.return_data[0] + (2 * 10^15 * block.timestamp * ext_call.return_data[0]) - (2 * 10^15 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                                gas gas_remaining wei
                                               args arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                                        call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            if arg1 != 2:
                require 0 >= arg2
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                        gas gas_remaining wei
                       args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require msg.sender == ext_call.return_data[12 len 20]
                require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
                staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
                        gas gas_remaining wei
                       args Array(len=14, data='metadataSetter')
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if not arg1:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                         gas gas_remaining wei
                        args arg3, Array(len=11, data='s-timestamp'), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 < arg2:
                        revert with 'NH{q', 17
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                         gas gas_remaining wei
                        args arg3, Array(len=7, data='s-cache'), -arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                            gas gas_remaining wei
                           args arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
                    call 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if arg1 == 1:
                        if not arg1:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                 gas gas_remaining wei
                                args arg3, Array(len=11, data='s-timestamp'), block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if 0 < arg2:
                                revert with 'NH{q', 17
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                 gas gas_remaining wei
                                args arg3, Array(len=7, data='s-cache'), -arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                    gas gas_remaining wei
                                   args arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                            call 0x4c1057455747e3ee5871d374fdd77a304ce10989.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if arg1 == 1:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, Array(len=11, data='m-timestamp'), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if 0 < arg2:
                                    revert with 'NH{q', 17
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, Array(len=7, data='m-cache'), -arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                        gas gas_remaining wei
                                       args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                                call 0x4c1057455747e3ee5871d374fdd77a304ce10989.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if arg1 == 2:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=11, data='c-timestamp'), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if 0 < arg2:
                                        revert with 'NH{q', 17
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=7, data='c-cache'), -arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                                    call 0x4c1057455747e3ee5871d374fdd77a304ce10989.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if arg1 != 2:
                            if not arg1:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, Array(len=11, data='s-timestamp'), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if 0 < arg2:
                                    revert with 'NH{q', 17
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, Array(len=7, data='s-cache'), -arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                        gas gas_remaining wei
                                       args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(0)
                                call 0x0.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if arg1 == 1:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=11, data='m-timestamp'), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if 0 < arg2:
                                        revert with 'NH{q', 17
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=7, data='m-cache'), -arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(0)
                                    call 0x0.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                else:
                                    if arg1 == 2:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, Array(len=11, data='c-timestamp'), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if 0 < arg2:
                                            revert with 'NH{q', 17
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, Array(len=7, data='c-cache'), -arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                                gas gas_remaining wei
                                               args arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(0)
                                        call 0x0.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if not arg1:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, Array(len=11, data='s-timestamp'), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if 0 < arg2:
                                    revert with 'NH{q', 17
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, Array(len=7, data='s-cache'), -arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                        gas gas_remaining wei
                                       args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                                call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if arg1 == 1:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=11, data='m-timestamp'), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if 0 < arg2:
                                        revert with 'NH{q', 17
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=7, data='m-cache'), -arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                                    call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                else:
                                    if arg1 == 2:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, Array(len=11, data='c-timestamp'), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if 0 < arg2:
                                            revert with 'NH{q', 17
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, Array(len=7, data='c-cache'), -arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                                gas gas_remaining wei
                                               args arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                                        call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                        gas gas_remaining wei
                       args 0, uint32(arg3), 64, 7, 'c-level'
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                        gas gas_remaining wei
                       args arg3, Array(len=11, data='c-timestamp')
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                        gas gas_remaining wei
                       args arg3, Array(len=7, data='c-cache')
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if not ext_call.return_data[0]:
                    if block.timestamp < block.timestamp:
                        revert with 'NH{q', 17
                    if False and ext_call.return_data[0] > 0:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] > -1:
                        revert with 'NH{q', 17
                    require ext_call.return_data[0] >= arg2
                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                            gas gas_remaining wei
                           args arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require msg.sender == ext_call.return_data[12 len 20]
                    require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
                    staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
                            gas gas_remaining wei
                           args Array(len=14, data='metadataSetter')
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if not arg1:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                             gas gas_remaining wei
                            args arg3, Array(len=11, data='s-timestamp'), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if ext_call.return_data[0] < arg2:
                            revert with 'NH{q', 17
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                             gas gas_remaining wei
                            args arg3, Array(len=7, data='s-cache'), ext_call.return_data[0] - arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                gas gas_remaining wei
                               args arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
                        call 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if arg1 == 1:
                            if not arg1:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, Array(len=11, data='s-timestamp'), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] < arg2:
                                    revert with 'NH{q', 17
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, Array(len=7, data='s-cache'), ext_call.return_data[0] - arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                        gas gas_remaining wei
                                       args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                                call 0x4c1057455747e3ee5871d374fdd77a304ce10989.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if arg1 == 1:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=11, data='m-timestamp'), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[0] < arg2:
                                        revert with 'NH{q', 17
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=7, data='m-cache'), ext_call.return_data[0] - arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                                    call 0x4c1057455747e3ee5871d374fdd77a304ce10989.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                else:
                                    if arg1 == 2:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, Array(len=11, data='c-timestamp'), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if ext_call.return_data[0] < arg2:
                                            revert with 'NH{q', 17
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, Array(len=7, data='c-cache'), ext_call.return_data[0] - arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                                gas gas_remaining wei
                                               args arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                                        call 0x4c1057455747e3ee5871d374fdd77a304ce10989.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if arg1 != 2:
                                if not arg1:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=11, data='s-timestamp'), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[0] < arg2:
                                        revert with 'NH{q', 17
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=7, data='s-cache'), ext_call.return_data[0] - arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(0)
                                    call 0x0.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                else:
                                    if arg1 == 1:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, Array(len=11, data='m-timestamp'), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if ext_call.return_data[0] < arg2:
                                            revert with 'NH{q', 17
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, Array(len=7, data='m-cache'), ext_call.return_data[0] - arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                                gas gas_remaining wei
                                               args arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(0)
                                        call 0x0.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    else:
                                        if arg1 == 2:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                                 gas gas_remaining wei
                                                args arg3, Array(len=11, data='c-timestamp'), block.timestamp
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if ext_call.return_data[0] < arg2:
                                                revert with 'NH{q', 17
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                                 gas gas_remaining wei
                                                args arg3, Array(len=7, data='c-cache'), ext_call.return_data[0] - arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                                    gas gas_remaining wei
                                                   args arg3
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(0)
                                            call 0x0.mint(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if not arg1:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=11, data='s-timestamp'), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[0] < arg2:
                                        revert with 'NH{q', 17
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=7, data='s-cache'), ext_call.return_data[0] - arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                                    call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                else:
                                    if arg1 == 1:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, Array(len=11, data='m-timestamp'), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if ext_call.return_data[0] < arg2:
                                            revert with 'NH{q', 17
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, Array(len=7, data='m-cache'), ext_call.return_data[0] - arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                                gas gas_remaining wei
                                               args arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                                        call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    else:
                                        if arg1 == 2:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                                 gas gas_remaining wei
                                                args arg3, Array(len=11, data='c-timestamp'), block.timestamp
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if ext_call.return_data[0] < arg2:
                                                revert with 'NH{q', 17
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                                 gas gas_remaining wei
                                                args arg3, Array(len=7, data='c-cache'), ext_call.return_data[0] - arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                                    gas gas_remaining wei
                                                   args arg3
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                                            call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.mint(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if block.timestamp < ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if block.timestamp - ext_call.return_data[0] and ext_call.return_data[0] > -1 / block.timestamp - ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) and 10^14 > -1 / (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] > (-1 * 10^14 * block.timestamp * ext_call.return_data[0]) + (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) - 1:
                        revert with 'NH{q', 17
                    require ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) >= arg2
                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                            gas gas_remaining wei
                           args arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require msg.sender == ext_call.return_data[12 len 20]
                    require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
                    staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
                            gas gas_remaining wei
                           args Array(len=14, data='metadataSetter')
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if not arg1:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                             gas gas_remaining wei
                            args arg3, Array(len=11, data='s-timestamp'), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                            revert with 'NH{q', 17
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                             gas gas_remaining wei
                            args arg3, Array(len=7, data='s-cache'), ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                gas gas_remaining wei
                               args arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
                        call 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if arg1 == 1:
                            if not arg1:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, Array(len=11, data='s-timestamp'), block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                    revert with 'NH{q', 17
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x4e4f31ed with:
                                     gas gas_remaining wei
                                    args arg3, Array(len=7, data='s-cache'), ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                        gas gas_remaining wei
                                       args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                                call 0x4c1057455747e3ee5871d374fdd77a304ce10989.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if arg1 == 1:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=11, data='m-timestamp'), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                        revert with 'NH{q', 17
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=7, data='m-cache'), ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                                    call 0x4c1057455747e3ee5871d374fdd77a304ce10989.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                else:
                                    if arg1 == 2:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, Array(len=11, data='c-timestamp'), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                            revert with 'NH{q', 17
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, Array(len=7, data='c-cache'), ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                                gas gas_remaining wei
                                               args arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                                        call 0x4c1057455747e3ee5871d374fdd77a304ce10989.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if arg1 != 2:
                                if not arg1:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=11, data='s-timestamp'), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                        revert with 'NH{q', 17
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=7, data='s-cache'), ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(0)
                                    call 0x0.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                else:
                                    if arg1 == 1:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, Array(len=11, data='m-timestamp'), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                            revert with 'NH{q', 17
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, Array(len=7, data='m-cache'), ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                                gas gas_remaining wei
                                               args arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(0)
                                        call 0x0.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    else:
                                        if arg1 == 2:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                                 gas gas_remaining wei
                                                args arg3, Array(len=11, data='c-timestamp'), block.timestamp
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                                revert with 'NH{q', 17
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                                 gas gas_remaining wei
                                                args arg3, Array(len=7, data='c-cache'), ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                                    gas gas_remaining wei
                                                   args arg3
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(0)
                                            call 0x0.mint(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if not arg1:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=11, data='s-timestamp'), block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                        revert with 'NH{q', 17
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                                         gas gas_remaining wei
                                        args arg3, Array(len=7, data='s-cache'), ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                            gas gas_remaining wei
                                           args arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                                    call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                else:
                                    if arg1 == 1:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, Array(len=11, data='m-timestamp'), block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                            revert with 'NH{q', 17
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                                             gas gas_remaining wei
                                            args arg3, Array(len=7, data='m-cache'), ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                                gas gas_remaining wei
                                               args arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                                        call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.mint(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args address(ext_call.return_data[0]), arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    else:
                                        if arg1 == 2:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                                 gas gas_remaining wei
                                                args arg3, Array(len=11, data='c-timestamp'), block.timestamp
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) < arg2:
                                                revert with 'NH{q', 17
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x4e4f31ed with:
                                                 gas gas_remaining wei
                                                args arg3, Array(len=7, data='c-cache'), ext_call.return_data[0] + (10^14 * block.timestamp * ext_call.return_data[0]) - (10^14 * ext_call.return_data[0] * ext_call.return_data[0]) - arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                                            staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                                    gas gas_remaining wei
                                                   args arg3
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                                            call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.mint(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), arg2
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 1
}



}
