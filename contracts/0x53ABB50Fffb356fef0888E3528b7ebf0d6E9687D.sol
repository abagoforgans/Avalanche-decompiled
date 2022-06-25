contract main {




// =====================  Runtime code  =====================


const VERSION = 2


address owner;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function rescue() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function sub_dedf7c6c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if eth.balance(this.address) > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    return (eth.balance(this.address) + ext_call.return_data[0])
}

function collect(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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
    call arg1.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function sub_35d27953(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 > -2:
        revert with 'NH{q', 17
    if arg2 + 1 > 0x177e0b5c9f10d3b3ea44db772:
        revert with 'NH{q', 17
    require ext_code.size(address(arg1 xor (0xae5ac3c49a5d5c88ae551608cae0d57b636c125d * arg2) + 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d))
    if block.timestamp > arg2:
        staticcall address(arg1 xor (0xae5ac3c49a5d5c88ae551608cae0d57b636c125d * arg2) + 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d).lastHarvest() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] > arg2:
            revert with 0, 'expired'
    call address(arg1 xor (0xae5ac3c49a5d5c88ae551608cae0d57b636c125d * arg2) + 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d).harvest() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_9fdb639b(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 > -2:
        revert with 'NH{q', 17
    if arg3 + 1 > 0x177e0b5c9f10d3b3ea44db772:
        revert with 'NH{q', 17
    require ext_code.size(address(arg1 xor (0xae5ac3c49a5d5c88ae551608cae0d57b636c125d * arg3) + 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d))
    if block.timestamp > arg3:
        staticcall address(arg1 xor (0xae5ac3c49a5d5c88ae551608cae0d57b636c125d * arg3) + 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d).lastHarvest() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] > arg3:
            revert with 0, 'expired'
    call address(arg1 xor (0xae5ac3c49a5d5c88ae551608cae0d57b636c125d * arg3) + 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d).harvest(address arg1) with:
         gas gas_remaining wei
        args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_9a08e77e(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 > -2:
        revert with 'NH{q', 17
    if arg3 + 1 > 0x177e0b5c9f10d3b3ea44db772:
        revert with 'NH{q', 17
    require ext_code.size(address(arg1 xor (0xae5ac3c49a5d5c88ae551608cae0d57b636c125d * arg3) + 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d))
    if block.timestamp > arg3:
        staticcall address(arg1 xor (0xae5ac3c49a5d5c88ae551608cae0d57b636c125d * arg3) + 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d).lastHarvest() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] > arg3:
            revert with 0, 'expired'
    call address(arg1 xor (0xae5ac3c49a5d5c88ae551608cae0d57b636c125d * arg3) + 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d).harvestWithCallFeeRecipient(address arg1) with:
         gas gas_remaining wei
        args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d04b78aa(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 > -2:
        revert with 'NH{q', 17
    if arg2 + 1 > 0x177e0b5c9f10d3b3ea44db772:
        revert with 'NH{q', 17
    if arg2:
        require ext_code.size(address(arg1 xor (0xae5ac3c49a5d5c88ae551608cae0d57b636c125d * arg2) + 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d))
        staticcall address(arg1 xor (0xae5ac3c49a5d5c88ae551608cae0d57b636c125d * arg2) + 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d).getPricePerFullShare() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] > arg2:
            revert with 0, 'expired'
    require ext_code.size(0xeae4cb5741b56133a8c3fb2afd52aa67ccd6fc29)
    call 0xeae4cb5741b56133a8c3fb2afd52aa67ccd6fc29.doHardWork(address arg1) with:
         gas gas_remaining wei
        args address(arg1 xor (0xae5ac3c49a5d5c88ae551608cae0d57b636c125d * arg2) + 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function rescue(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function sub_d9e5580e(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    mem[96] = 3
    mem[128 len 96] = call.data[calldata.size len 96]
    mem[128] = this.address
    if this.address == msg.sender:
        require ext_code.size(address(arg1))
        staticcall address(arg1).getPricePerFullShare() with:
                gas gas_remaining wei
        mem[224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 224
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        idx = 0
        s = 0
        while idx < 3:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if not mem[(32 * idx) + 140 len 20]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _74 = mem[(32 * idx) + 128]
            if s > -eth.balance(mem[(32 * idx) + 128]) - 1:
                revert with 'NH{q', 17
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _80 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args address(_80)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _89 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_89] == mem[_89]
            if s + eth.balance(_74) > -mem[_89] - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + eth.balance(_74) + mem[_89]
            continue 
        mem[mem[64]] = 0xaf210a100000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(arg1)
        require ext_code.size(0xeae4cb5741b56133a8c3fb2afd52aa67ccd6fc29)
        call 0xeae4cb5741b56133a8c3fb2afd52aa67ccd6fc29.doHardWork(address arg1) with:
             gas gas_remaining wei
            args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if gas_remaining < gas_remaining:
            revert with 'NH{q', 17
        _116 = mem[96]
        idx = 0
        t = 0
        while idx < _116:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if not mem[(32 * idx) + 140 len 20]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                t = t
                continue 
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _124 = mem[(32 * idx) + 128]
            if t > -eth.balance(mem[(32 * idx) + 128]) - 1:
                revert with 'NH{q', 17
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _130 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args address(_130)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _136 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_136] == mem[_136]
            if t + eth.balance(_124) > -mem[_136] - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            t = t + eth.balance(_124) + mem[_136]
            continue 
    else:
        mem[160] = msg.sender
        require ext_code.size(address(arg1))
        staticcall address(arg1).getPricePerFullShare() with:
                gas gas_remaining wei
        mem[224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 224
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        idx = 0
        s = 0
        while idx < 3:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if not mem[(32 * idx) + 140 len 20]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _75 = mem[(32 * idx) + 128]
            if s > -eth.balance(mem[(32 * idx) + 128]) - 1:
                revert with 'NH{q', 17
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _82 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args address(_82)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _91 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_91] == mem[_91]
            if s + eth.balance(_75) > -mem[_91] - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + eth.balance(_75) + mem[_91]
            continue 
        mem[mem[64]] = 0xaf210a100000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(arg1)
        require ext_code.size(0xeae4cb5741b56133a8c3fb2afd52aa67ccd6fc29)
        call 0xeae4cb5741b56133a8c3fb2afd52aa67ccd6fc29.doHardWork(address arg1) with:
             gas gas_remaining wei
            args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if gas_remaining < gas_remaining:
            revert with 'NH{q', 17
        _117 = mem[96]
        idx = 0
        t = 0
        while idx < _117:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if not mem[(32 * idx) + 140 len 20]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                t = t
                continue 
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _125 = mem[(32 * idx) + 128]
            if t > -eth.balance(mem[(32 * idx) + 128]) - 1:
                revert with 'NH{q', 17
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _132 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args address(_132)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _137 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_137] == mem[_137]
            if t + eth.balance(_125) > -mem[_137] - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            t = t + eth.balance(_125) + mem[_137]
            continue 
    if t < s:
        revert with 'NH{q', 17
    return t - s, 0, ext_call.return_data[0]
}

function sub_2e9b33d5(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    mem[96] = 3
    mem[64] = 224
    mem[128 len 96] = call.data[calldata.size len 96]
    mem[128] = this.address
    if this.address == msg.sender:
        require ext_code.size(address(arg1))
        staticcall address(arg1).lastHarvest() with:
                gas gas_remaining wei
        mem[224] = ext_call.return_data[0]
        if not ext_call.success:
            idx = 0
            s = 0
            while idx < 3:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if not mem[(32 * idx) + 140 len 20]:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s
                    continue 
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _200 = mem[(32 * idx) + 128]
                if s > -eth.balance(mem[(32 * idx) + 128]) - 1:
                    revert with 'NH{q', 17
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _209 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_209)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _233 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_233] == mem[_233]
                if s + eth.balance(_200) > -mem[_233] - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + eth.balance(_200) + mem[_233]
                continue 
            mem[mem[64] len 379] = code.data[9877 len 379]
            mem[mem[64] + 379] = address(arg1)
            create contract with 0 wei
                            code: code.data[9877 len 379], address(arg1)
            if create.new_address:
                if gas_remaining < 45000:
                    revert with 'NH{q', 17
                if 2 >= mem[96]:
                    revert with 'NH{q', 50
                mem[192] = address(create.new_address)
                if gas_remaining - 45000 < gas_remaining:
                    revert with 'NH{q', 17
                _349 = mem[96]
                idx = 0
                t = 0
                while idx < _349:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if not mem[(32 * idx) + 140 len 20]:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        t = t
                        continue 
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _381 = mem[(32 * idx) + 128]
                    if t > -eth.balance(mem[(32 * idx) + 128]) - 1:
                        revert with 'NH{q', 17
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _406 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_406)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _429 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_429] == mem[_429]
                    if t + eth.balance(_381) > -mem[_429] - 1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    t = t + eth.balance(_381) + mem[_429]
                    continue 
                if t < s:
                    revert with 'NH{q', 17
                return t - s, -45000, 0
            mem[mem[64]] = 0x4641257d00000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(arg1))
            call address(arg1).harvest() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if gas_remaining < gas_remaining:
                revert with 'NH{q', 17
            _348 = mem[96]
            idx = 0
            t = 0
            while idx < _348:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if not mem[(32 * idx) + 140 len 20]:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    t = t
                    continue 
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _380 = mem[(32 * idx) + 128]
                if t > -eth.balance(mem[(32 * idx) + 128]) - 1:
                    revert with 'NH{q', 17
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _404 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_404)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _428 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_428] == mem[_428]
                if t + eth.balance(_380) > -mem[_428] - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                t = t + eth.balance(_380) + mem[_428]
                continue 
            if t < s:
                revert with 'NH{q', 17
            return t - s, 0, 0
        mem[64] = ceil32(return_data.size) + 224
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        idx = 0
        s = 0
        while idx < 3:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if not mem[(32 * idx) + 140 len 20]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _201 = mem[(32 * idx) + 128]
            if s > -eth.balance(mem[(32 * idx) + 128]) - 1:
                revert with 'NH{q', 17
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _212 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args address(_212)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _235 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_235] == mem[_235]
            if s + eth.balance(_201) > -mem[_235] - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + eth.balance(_201) + mem[_235]
            continue 
        mem[mem[64] len 379] = code.data[9877 len 379]
        mem[mem[64] + 379] = address(arg1)
        create contract with 0 wei
                        code: code.data[9877 len 379], address(arg1)
        if create.new_address:
            if gas_remaining < 45000:
                revert with 'NH{q', 17
            if 2 >= mem[96]:
                revert with 'NH{q', 50
            mem[192] = address(create.new_address)
            if gas_remaining - 45000 < gas_remaining:
                revert with 'NH{q', 17
            _351 = mem[96]
            idx = 0
            t = 0
            while idx < _351:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if not mem[(32 * idx) + 140 len 20]:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    t = t
                    continue 
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _383 = mem[(32 * idx) + 128]
                if t > -eth.balance(mem[(32 * idx) + 128]) - 1:
                    revert with 'NH{q', 17
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _410 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_410)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _431 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_431] == mem[_431]
                if t + eth.balance(_383) > -mem[_431] - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                t = t + eth.balance(_383) + mem[_431]
                continue 
            if t < s:
                revert with 'NH{q', 17
            return t - s, -45000, ext_call.return_data[0]
        mem[mem[64]] = 0x4641257d00000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(arg1))
        call address(arg1).harvest() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if gas_remaining < gas_remaining:
            revert with 'NH{q', 17
        _350 = mem[96]
        idx = 0
        t = 0
        while idx < _350:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if not mem[(32 * idx) + 140 len 20]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                t = t
                continue 
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _382 = mem[(32 * idx) + 128]
            if t > -eth.balance(mem[(32 * idx) + 128]) - 1:
                revert with 'NH{q', 17
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _408 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args address(_408)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _430 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_430] == mem[_430]
            if t + eth.balance(_382) > -mem[_430] - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            t = t + eth.balance(_382) + mem[_430]
            continue 
    else:
        mem[160] = msg.sender
        require ext_code.size(address(arg1))
        staticcall address(arg1).lastHarvest() with:
                gas gas_remaining wei
        mem[224] = ext_call.return_data[0]
        if not ext_call.success:
            idx = 0
            s = 0
            while idx < 3:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if not mem[(32 * idx) + 140 len 20]:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s
                    continue 
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _202 = mem[(32 * idx) + 128]
                if s > -eth.balance(mem[(32 * idx) + 128]) - 1:
                    revert with 'NH{q', 17
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _215 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_215)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _237 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_237] == mem[_237]
                if s + eth.balance(_202) > -mem[_237] - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + eth.balance(_202) + mem[_237]
                continue 
            mem[mem[64] len 379] = code.data[9877 len 379]
            mem[mem[64] + 379] = address(arg1)
            create contract with 0 wei
                            code: code.data[9877 len 379], address(arg1)
            if create.new_address:
                if gas_remaining < 45000:
                    revert with 'NH{q', 17
                if 2 >= mem[96]:
                    revert with 'NH{q', 50
                mem[192] = address(create.new_address)
                if gas_remaining - 45000 < gas_remaining:
                    revert with 'NH{q', 17
                _353 = mem[96]
                idx = 0
                t = 0
                while idx < _353:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if not mem[(32 * idx) + 140 len 20]:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        t = t
                        continue 
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _385 = mem[(32 * idx) + 128]
                    if t > -eth.balance(mem[(32 * idx) + 128]) - 1:
                        revert with 'NH{q', 17
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _414 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_414)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _433 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_433] == mem[_433]
                    if t + eth.balance(_385) > -mem[_433] - 1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    t = t + eth.balance(_385) + mem[_433]
                    continue 
                if t < s:
                    revert with 'NH{q', 17
                return t - s, -45000, 0
            mem[mem[64]] = 0x4641257d00000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(arg1))
            call address(arg1).harvest() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if gas_remaining < gas_remaining:
                revert with 'NH{q', 17
            _352 = mem[96]
            idx = 0
            t = 0
            while idx < _352:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if not mem[(32 * idx) + 140 len 20]:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    t = t
                    continue 
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _384 = mem[(32 * idx) + 128]
                if t > -eth.balance(mem[(32 * idx) + 128]) - 1:
                    revert with 'NH{q', 17
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _412 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_412)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _432 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_432] == mem[_432]
                if t + eth.balance(_384) > -mem[_432] - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                t = t + eth.balance(_384) + mem[_432]
                continue 
            if t < s:
                revert with 'NH{q', 17
            return t - s, 0, 0
        mem[64] = ceil32(return_data.size) + 224
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        idx = 0
        s = 0
        while idx < 3:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if not mem[(32 * idx) + 140 len 20]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _203 = mem[(32 * idx) + 128]
            if s > -eth.balance(mem[(32 * idx) + 128]) - 1:
                revert with 'NH{q', 17
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _218 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args address(_218)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _239 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_239] == mem[_239]
            if s + eth.balance(_203) > -mem[_239] - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + eth.balance(_203) + mem[_239]
            continue 
        mem[mem[64] len 379] = code.data[9877 len 379]
        mem[mem[64] + 379] = address(arg1)
        create contract with 0 wei
                        code: code.data[9877 len 379], address(arg1)
        if create.new_address:
            if gas_remaining < 45000:
                revert with 'NH{q', 17
            if 2 >= mem[96]:
                revert with 'NH{q', 50
            mem[192] = address(create.new_address)
            if gas_remaining - 45000 < gas_remaining:
                revert with 'NH{q', 17
            _355 = mem[96]
            idx = 0
            t = 0
            while idx < _355:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if not mem[(32 * idx) + 140 len 20]:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    t = t
                    continue 
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _387 = mem[(32 * idx) + 128]
                if t > -eth.balance(mem[(32 * idx) + 128]) - 1:
                    revert with 'NH{q', 17
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _418 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_418)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _435 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_435] == mem[_435]
                if t + eth.balance(_387) > -mem[_435] - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                t = t + eth.balance(_387) + mem[_435]
                continue 
            if t < s:
                revert with 'NH{q', 17
            return t - s, -45000, ext_call.return_data[0]
        mem[mem[64]] = 0x4641257d00000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(arg1))
        call address(arg1).harvest() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if gas_remaining < gas_remaining:
            revert with 'NH{q', 17
        _354 = mem[96]
        idx = 0
        t = 0
        while idx < _354:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if not mem[(32 * idx) + 140 len 20]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                t = t
                continue 
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _386 = mem[(32 * idx) + 128]
            if t > -eth.balance(mem[(32 * idx) + 128]) - 1:
                revert with 'NH{q', 17
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _416 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args address(_416)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _434 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_434] == mem[_434]
            if t + eth.balance(_386) > -mem[_434] - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            t = t + eth.balance(_386) + mem[_434]
            continue 
    if t < s:
        revert with 'NH{q', 17
    return t - s, 0, ext_call.return_data[0]
}



}
