contract main {




// =====================  Runtime code  =====================


const sub_d4e86a42(?) = 10^6


mapping of struct sub_7be6277b;
mapping of uint256 sub_3ae4fb1b;
uint8 stor2;
address tokenAddress; offset 8
uint256 sub_d060d6fe;
uint256 tgeTimestamp;
mapping of uint8 stor5;
mapping of uint256 sub_8d41ebe0;

function sub_3ae4fb1b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_3ae4fb1b[arg1]
}

function inited() payable {
    return bool(stor2)
}

function sub_7be6277b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 2
    return sub_7be6277b[arg1].field_0, 
           sub_7be6277b[arg1].field_256,
           sub_7be6277b[arg1].field_512,
           sub_7be6277b[arg1].field_768,
           sub_7be6277b[arg1].field_1024
}

function sub_8d41ebe0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_8d41ebe0[arg1]
}

function tgeTimestamp() payable {
    return tgeTimestamp
}

function sub_d060d6fe(?) payable {
    return sub_d060d6fe
}

function sub_e989a9b5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor5[arg1])
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function sub_359ebd9f(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + 160] = address(arg1)
    mem[(32 * arg4.length) + 180] = arg2
    mem[(32 * arg4.length) + 212] = arg3
    mem[(32 * arg4.length) + 128] = 84
    idx = 0
    s = 0
    while idx < arg4.length:
        if idx >= arg4.length:
            revert with 0, 50
        if s + sha3(address(arg1), arg2, arg3) > mem[(32 * idx) + 128]:
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = s + sha3(address(arg1), arg2, arg3)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = sha3(mem[(32 * idx) + 128], s)
            continue 
        mem[0] = s + sha3(address(arg1), arg2, arg3)
        mem[32] = mem[(32 * idx) + 128]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = sha3(s, mem[(32 * idx) + 128])
        continue 
    return (s == sub_d060d6fe)
}

function claim(uint256 arg1, uint256 arg2, bytes32[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    if not stor2:
        revert with 0, 'BptVesting: not inited'
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 160] = address(msg.sender)
    mem[(32 * arg3.length) + 180] = arg1
    mem[(32 * arg3.length) + 212] = arg2
    mem[(32 * arg3.length) + 128] = 84
    idx = 0
    s = 0
    while idx < arg3.length:
        if idx >= arg3.length:
            revert with 0, 50
        if s + sha3(msg.sender, arg1, arg2) > mem[(32 * idx) + 128]:
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = s + sha3(msg.sender, arg1, arg2)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = sha3(mem[(32 * idx) + 128], s)
            continue 
        mem[0] = s + sha3(msg.sender, arg1, arg2)
        mem[32] = mem[(32 * idx) + 128]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = sha3(s, mem[(32 * idx) + 128])
        continue 
    if s != sub_d060d6fe:
        revert with 0, 'BptVesting: invalid proof or wrong data'
    if arg1 > 1:
        revert with 0, 33
    if not arg1:
        revert with 0, 'BptVesting: invalid category'
    if arg2 <= 0:
        revert with 0, 'BptVesting: invalid amount'
    if block.timestamp < tgeTimestamp:
        revert with 0, 'BptVesting: TGE has not started yet'
    if arg1 > 1:
        revert with 0, 33
    mem[64] = (32 * arg3.length) + 404
    mem[(32 * arg3.length) + 244] = sub_7be6277b[arg1].field_0
    mem[(32 * arg3.length) + 276] = sub_7be6277b[arg1].field_256
    mem[(32 * arg3.length) + 308] = sub_7be6277b[arg1].field_512
    mem[(32 * arg3.length) + 340] = sub_7be6277b[arg1].field_768
    mem[(32 * arg3.length) + 372] = sub_7be6277b[arg1].field_1024
    if stor5[msg.sender]:
        if tgeTimestamp > !sub_7be6277b[arg1].field_768:
            revert with 0, 17
        mem[0] = msg.sender
        mem[32] = 6
        idx = stor[sha3(mem[0 len 64])]
        s = 0
        t = 0
        while idx < sub_7be6277b[arg1].field_0:
            if mem[(32 * arg3.length) + 276] and idx > -1 / mem[(32 * arg3.length) + 276]:
                revert with 0, 17
            if tgeTimestamp + sub_7be6277b[arg1].field_768 > !(mem[(32 * arg3.length) + 276] * idx):
                revert with 0, 17
            if tgeTimestamp + sub_7be6277b[arg1].field_768 + (mem[(32 * arg3.length) + 276] * idx) <= block.timestamp:
                if idx > -2:
                    revert with 0, 17
                _944 = mem[(32 * arg3.length) + 372]
                if arg2 and mem[(32 * arg3.length) + 372] > -1 / arg2:
                    revert with 0, 17
                if t > !(arg2 * mem[(32 * arg3.length) + 372] / 10^6):
                    revert with 0, 17
                mem[mem[64]] = msg.sender
                mem[mem[64] + 32] = idx
                mem[mem[64] + 64] = arg2 * _944 / 10^6
                mem[mem[64] + 96] = block.timestamp
                emit 0xb5fedb6d: msg.sender, idx, arg2 * _944 / 10^6, block.timestamp
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = idx + 1
                t = t + (arg2 * _944 / 10^6)
                continue 
            if t <= 0:
                revert with 0, 'BptVesting: no tokens to claim'
            mem[0] = msg.sender
            sub_8d41ebe0[msg.sender] = s
            mem[32] = 1
            if sub_3ae4fb1b[msg.sender] > !t:
                revert with 0, 17
            if sub_3ae4fb1b[msg.sender] + t <= arg2:
                if sub_3ae4fb1b[msg.sender] > !t:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 1
                sub_3ae4fb1b[msg.sender] += t
                _1000 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = t
                _1001 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_1001 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1001 + 36 len 28]
                mem[64] = _1000 + 164
                mem[_1000 + 100] = 32
                mem[_1000 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(tokenAddress):
                    revert with 0, 'Address: call to non-contract'
                _1072 = mem[_1001]
                idx = 0
                while idx < _1072:
                    mem[idx + _1000 + 164] = mem[idx + _1001 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_1072) > _1072:
                    mem[_1000 + _1072 + 164] = 0
                call tokenAddress.mem[_1000 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_1000 + 168 len _1072 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_1000 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1000 + 168] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _1000 + 232] = mem[idx + _1000 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_1000 + 232]
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_1000 + 164] = return_data.size
                    mem[_1000 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1000 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1000 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _1000 + ceil32(return_data.size) + 233] = mem[idx + _1000 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_1000 + ceil32(return_data.size) + 233]
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_1000 + 196] == bool(mem[_1000 + 196])
                        if not mem[_1000 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require arg3.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                emit 0xed397d63: arg2, Array(len=arg3.length, data=call.data[arg3 + 36 len 32 * arg3.length]), t, block.timestamp, msg.sender, arg1
                return t
            _963 = mem[64]
            mem[64] = mem[64] + 96
            mem[_963] = 47
            mem[_963 + 32 len 47] = 0xfe42707456657374696e673a206e6f20746f6b656e7320746f20636c61696d2028736563757269747920636865636b
            if sub_3ae4fb1b[msg.sender] > arg2:
                _975 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 47
                idx = 0
                while idx < 47:
                    mem[idx + _975 + 68] = mem[idx + _963 + 32]
                    idx = idx + 32
                    continue 
                mem[_975 + 115] = 0
                revert with memory
                  from mem[64]
                   len _975 + -mem[64] + 132
            if sub_3ae4fb1b[msg.sender] > !(arg2 - sub_3ae4fb1b[msg.sender]):
                revert with 0, 17
            mem[0] = msg.sender
            mem[32] = 1
            sub_3ae4fb1b[msg.sender] = arg2
            _1021 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = arg2 - sub_3ae4fb1b[msg.sender]
            _1022 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_1022 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1022 + 36 len 28]
            mem[64] = _1021 + 164
            mem[_1021 + 100] = 32
            mem[_1021 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(tokenAddress):
                revert with 0, 'Address: call to non-contract'
            _1127 = mem[_1022]
            idx = 0
            while idx < _1127:
                mem[idx + _1021 + 164] = mem[idx + _1022 + 32]
                idx = idx + 32
                continue 
            if ceil32(_1127) > _1127:
                mem[_1021 + _1127 + 164] = 0
            call tokenAddress.mem[_1021 + 164 len 4] with:
                 gas gas_remaining wei
                args mem[_1021 + 168 len _1127 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_1021 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_1021 + 168] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _1021 + 232] = mem[idx + _1021 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_1021 + 232]
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[_1021 + 164] = return_data.size
                mem[_1021 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1021 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_1021 + ceil32(return_data.size) + 169] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _1021 + ceil32(return_data.size) + 233] = mem[idx + _1021 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_1021 + ceil32(return_data.size) + 233]
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_1021 + 196] == bool(mem[_1021 + 196])
                    if not mem[_1021 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require arg3.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            emit 0xed397d63: arg2, Array(len=arg3.length, data=call.data[arg3 + 36 len 32 * arg3.length]), arg2 - sub_3ae4fb1b[msg.sender], block.timestamp, msg.sender, arg1
            return (arg2 - sub_3ae4fb1b[msg.sender])
        if t <= 0:
            revert with 0, 'BptVesting: no tokens to claim'
        mem[0] = msg.sender
        sub_8d41ebe0[msg.sender] = s
        mem[32] = 1
        if sub_3ae4fb1b[msg.sender] > !t:
            revert with 0, 17
        if sub_3ae4fb1b[msg.sender] + t <= arg2:
            if sub_3ae4fb1b[msg.sender] > !t:
                revert with 0, 17
            mem[0] = msg.sender
            mem[32] = 1
            sub_3ae4fb1b[msg.sender] += t
            _932 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = t
            _933 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_932 + 100] = 32
            mem[_932 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(tokenAddress):
                revert with 0, 'Address: call to non-contract'
            _968 = mem[_933]
            mem[_932 + 164 len ceil32(mem[_933])] = mem[_933 + 32 len ceil32(mem[_933])]
            if ceil32(_968) > _968:
                mem[_932 + _968 + 164] = 0
            call tokenAddress with:
                 gas gas_remaining wei
                args mem[_932 + 168 len _968 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[_932 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_932 + 196] == bool(mem[_932 + 196])
                    if not mem[_932 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require arg3.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            emit 0xed397d63: arg2, Array(len=arg3.length, data=call.data[arg3 + 36 len 32 * arg3.length]), t, block.timestamp, msg.sender, arg1
            return t
        _912 = mem[64]
        mem[64] = mem[64] + 96
        mem[_912] = 47
        mem[_912 + 32 len 47] = 0xfe42707456657374696e673a206e6f20746f6b656e7320746f20636c61696d2028736563757269747920636865636b
        if sub_3ae4fb1b[msg.sender] > arg2:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 47
            mem[mem[64] + 68 len 64] = 0xfe42707456657374696e673a206e6f20746f6b656e7320746f20636c61696d2028736563757269747920636865636b, mem[_912 + 79 len 17]
            revert with 0, 32, 47, mem[mem[64] + 68 len 47], 0
        if sub_3ae4fb1b[msg.sender] > !(arg2 - sub_3ae4fb1b[msg.sender]):
            revert with 0, 17
        mem[0] = msg.sender
        mem[32] = 1
        sub_3ae4fb1b[msg.sender] = arg2
        _948 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = arg2 - sub_3ae4fb1b[msg.sender]
        _949 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
        mem[64] = mem[64] + 164
        mem[_948 + 100] = 32
        mem[_948 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(tokenAddress):
            revert with 0, 'Address: call to non-contract'
        _987 = mem[_949]
        mem[_948 + 164 len ceil32(mem[_949])] = mem[_949 + 32 len ceil32(mem[_949])]
        if ceil32(_987) > _987:
            mem[_948 + _987 + 164] = 0
        call tokenAddress with:
             gas gas_remaining wei
            args mem[_948 + 168 len _987 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_948 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_948 + 196] == bool(mem[_948 + 196])
                if not mem[_948 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        if arg2 and sub_7be6277b[arg1].field_512 > -1 / arg2:
            revert with 0, 17
        if 0 > !(arg2 * sub_7be6277b[arg1].field_512 / 10^6):
            revert with 0, 17
        stor5[msg.sender] = 1
        mem[(32 * arg3.length) + 404] = arg2 * sub_7be6277b[arg1].field_512 / 10^6
        mem[(32 * arg3.length) + 436] = block.timestamp
        emit 0x8166115a: arg2 * sub_7be6277b[arg1].field_512 / 10^6, block.timestamp, msg.sender
        if tgeTimestamp > !sub_7be6277b[arg1].field_768:
            revert with 0, 17
        mem[0] = msg.sender
        mem[32] = 6
        idx = stor[sha3(mem[0 len 64])]
        s = 0
        t = arg2 * sub_7be6277b[arg1].field_512 / 10^6
        while idx < sub_7be6277b[arg1].field_0:
            if mem[(32 * arg3.length) + 276] and idx > -1 / mem[(32 * arg3.length) + 276]:
                revert with 0, 17
            if tgeTimestamp + sub_7be6277b[arg1].field_768 > !(mem[(32 * arg3.length) + 276] * idx):
                revert with 0, 17
            if tgeTimestamp + sub_7be6277b[arg1].field_768 + (mem[(32 * arg3.length) + 276] * idx) <= block.timestamp:
                if idx > -2:
                    revert with 0, 17
                _947 = mem[(32 * arg3.length) + 372]
                if arg2 and mem[(32 * arg3.length) + 372] > -1 / arg2:
                    revert with 0, 17
                if t > !(arg2 * mem[(32 * arg3.length) + 372] / 10^6):
                    revert with 0, 17
                mem[mem[64]] = msg.sender
                mem[mem[64] + 32] = idx
                mem[mem[64] + 64] = arg2 * _947 / 10^6
                mem[mem[64] + 96] = block.timestamp
                emit 0xb5fedb6d: msg.sender, idx, arg2 * _947 / 10^6, block.timestamp
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = idx + 1
                t = t + (arg2 * _947 / 10^6)
                continue 
            if t <= 0:
                revert with 0, 'BptVesting: no tokens to claim'
            mem[0] = msg.sender
            sub_8d41ebe0[msg.sender] = s
            mem[32] = 1
            if sub_3ae4fb1b[msg.sender] > !t:
                revert with 0, 17
            if sub_3ae4fb1b[msg.sender] + t <= arg2:
                if sub_3ae4fb1b[msg.sender] > !t:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 1
                sub_3ae4fb1b[msg.sender] += t
                _1005 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = t
                _1006 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_1006 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1006 + 36 len 28]
                mem[64] = _1005 + 164
                mem[_1005 + 100] = 32
                mem[_1005 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(tokenAddress):
                    revert with 0, 'Address: call to non-contract'
                _1080 = mem[_1006]
                idx = 0
                while idx < _1080:
                    mem[idx + _1005 + 164] = mem[idx + _1006 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_1080) > _1080:
                    mem[_1005 + _1080 + 164] = 0
                call tokenAddress.mem[_1005 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_1005 + 168 len _1080 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_1005 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1005 + 168] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _1005 + 232] = mem[idx + _1005 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_1005 + 232]
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_1005 + 164] = return_data.size
                    mem[_1005 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1005 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1005 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _1005 + ceil32(return_data.size) + 233] = mem[idx + _1005 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_1005 + ceil32(return_data.size) + 233]
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_1005 + 196] == bool(mem[_1005 + 196])
                        if not mem[_1005 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require arg3.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                emit 0xed397d63: arg2, Array(len=arg3.length, data=call.data[arg3 + 36 len 32 * arg3.length]), t, block.timestamp, msg.sender, arg1
                return t
            _967 = mem[64]
            mem[64] = mem[64] + 96
            mem[_967] = 47
            mem[_967 + 32 len 47] = 0xfe42707456657374696e673a206e6f20746f6b656e7320746f20636c61696d2028736563757269747920636865636b
            if sub_3ae4fb1b[msg.sender] > arg2:
                _977 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 47
                idx = 0
                while idx < 47:
                    mem[idx + _977 + 68] = mem[idx + _967 + 32]
                    idx = idx + 32
                    continue 
                mem[_977 + 115] = 0
                revert with memory
                  from mem[64]
                   len _977 + -mem[64] + 132
            if sub_3ae4fb1b[msg.sender] > !(arg2 - sub_3ae4fb1b[msg.sender]):
                revert with 0, 17
            mem[0] = msg.sender
            mem[32] = 1
            sub_3ae4fb1b[msg.sender] = arg2
            _1026 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = arg2 - sub_3ae4fb1b[msg.sender]
            _1027 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_1027 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1027 + 36 len 28]
            mem[64] = _1026 + 164
            mem[_1026 + 100] = 32
            mem[_1026 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(tokenAddress):
                revert with 0, 'Address: call to non-contract'
            _1142 = mem[_1027]
            idx = 0
            while idx < _1142:
                mem[idx + _1026 + 164] = mem[idx + _1027 + 32]
                idx = idx + 32
                continue 
            if ceil32(_1142) > _1142:
                mem[_1026 + _1142 + 164] = 0
            call tokenAddress.mem[_1026 + 164 len 4] with:
                 gas gas_remaining wei
                args mem[_1026 + 168 len _1142 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_1026 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_1026 + 168] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _1026 + 232] = mem[idx + _1026 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_1026 + 232]
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[_1026 + 164] = return_data.size
                mem[_1026 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1026 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_1026 + ceil32(return_data.size) + 169] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _1026 + ceil32(return_data.size) + 233] = mem[idx + _1026 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_1026 + ceil32(return_data.size) + 233]
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_1026 + 196] == bool(mem[_1026 + 196])
                    if not mem[_1026 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require arg3.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            emit 0xed397d63: arg2, Array(len=arg3.length, data=call.data[arg3 + 36 len 32 * arg3.length]), arg2 - sub_3ae4fb1b[msg.sender], block.timestamp, msg.sender, arg1
            return (arg2 - sub_3ae4fb1b[msg.sender])
        if t <= 0:
            revert with 0, 'BptVesting: no tokens to claim'
        mem[0] = msg.sender
        sub_8d41ebe0[msg.sender] = s
        mem[32] = 1
        if sub_3ae4fb1b[msg.sender] > !t:
            revert with 0, 17
        if sub_3ae4fb1b[msg.sender] + t <= arg2:
            if sub_3ae4fb1b[msg.sender] > !t:
                revert with 0, 17
            mem[0] = msg.sender
            mem[32] = 1
            sub_3ae4fb1b[msg.sender] += t
            _936 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = t
            _937 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_936 + 100] = 32
            mem[_936 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(tokenAddress):
                revert with 0, 'Address: call to non-contract'
            _971 = mem[_937]
            mem[_936 + 164 len ceil32(mem[_937])] = mem[_937 + 32 len ceil32(mem[_937])]
            if ceil32(_971) > _971:
                mem[_936 + _971 + 164] = 0
            call tokenAddress with:
                 gas gas_remaining wei
                args mem[_936 + 168 len _971 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[_936 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_936 + 196] == bool(mem[_936 + 196])
                    if not mem[_936 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require arg3.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            emit 0xed397d63: arg2, Array(len=arg3.length, data=call.data[arg3 + 36 len 32 * arg3.length]), t, block.timestamp, msg.sender, arg1
            return t
        _913 = mem[64]
        mem[64] = mem[64] + 96
        mem[_913] = 47
        mem[_913 + 32 len 47] = 0xfe42707456657374696e673a206e6f20746f6b656e7320746f20636c61696d2028736563757269747920636865636b
        if sub_3ae4fb1b[msg.sender] > arg2:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 47
            mem[mem[64] + 68 len 64] = 0xfe42707456657374696e673a206e6f20746f6b656e7320746f20636c61696d2028736563757269747920636865636b, mem[_913 + 79 len 17]
            revert with 0, 32, 47, mem[mem[64] + 68 len 47], 0
        if sub_3ae4fb1b[msg.sender] > !(arg2 - sub_3ae4fb1b[msg.sender]):
            revert with 0, 17
        mem[0] = msg.sender
        mem[32] = 1
        sub_3ae4fb1b[msg.sender] = arg2
        _952 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = arg2 - sub_3ae4fb1b[msg.sender]
        _953 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
        mem[64] = mem[64] + 164
        mem[_952 + 100] = 32
        mem[_952 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(tokenAddress):
            revert with 0, 'Address: call to non-contract'
        _991 = mem[_953]
        mem[_952 + 164 len ceil32(mem[_953])] = mem[_953 + 32 len ceil32(mem[_953])]
        if ceil32(_991) > _991:
            mem[_952 + _991 + 164] = 0
        call tokenAddress with:
             gas gas_remaining wei
            args mem[_952 + 168 len _991 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_952 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_952 + 196] == bool(mem[_952 + 196])
                if not mem[_952 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    require arg3.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    emit 0xed397d63: arg2, Array(len=arg3.length, data=call.data[arg3 + 36 len 32 * arg3.length]), arg2 - sub_3ae4fb1b[msg.sender], block.timestamp, msg.sender, arg1
    return (arg2 - sub_3ae4fb1b[msg.sender])
}



}
