contract main {




// =====================  Runtime code  =====================


const VERSION = 2


address owner;

function owner() {
    return owner
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
    if eth.balance(this.address) > !ext_call.return_data[0]:
        revert with 0, 17
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
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 1 > !arg2:
        revert with 0, 17
    if arg2 + 1 > 0x177e0b5c9f10d3b3ea44db772:
        revert with 0, 17
    require ext_code.size(address(arg1 xor (0xae5ac3c49a5d5c88ae551608cae0d57b636c125d * arg2) + 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d))
    if block.timestamp > arg2:
        staticcall address(arg1 xor (0xae5ac3c49a5d5c88ae551608cae0d57b636c125d * arg2) + 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d).lastHarvest() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
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
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 1 > !arg3:
        revert with 0, 17
    if arg3 + 1 > 0x177e0b5c9f10d3b3ea44db772:
        revert with 0, 17
    require ext_code.size(address(arg1 xor (0xae5ac3c49a5d5c88ae551608cae0d57b636c125d * arg3) + 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d))
    if block.timestamp > arg3:
        staticcall address(arg1 xor (0xae5ac3c49a5d5c88ae551608cae0d57b636c125d * arg3) + 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d).lastHarvest() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
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
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 1 > !arg3:
        revert with 0, 17
    if arg3 + 1 > 0x177e0b5c9f10d3b3ea44db772:
        revert with 0, 17
    require ext_code.size(address(arg1 xor (0xae5ac3c49a5d5c88ae551608cae0d57b636c125d * arg3) + 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d))
    if block.timestamp > arg3:
        staticcall address(arg1 xor (0xae5ac3c49a5d5c88ae551608cae0d57b636c125d * arg3) + 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d).lastHarvest() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
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
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 1 > !arg2:
        revert with 0, 17
    if arg2 + 1 > 0x177e0b5c9f10d3b3ea44db772:
        revert with 0, 17
    if arg2:
        require ext_code.size(address(arg1 xor (0xae5ac3c49a5d5c88ae551608cae0d57b636c125d * arg2) + 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d))
        staticcall address(arg1 xor (0xae5ac3c49a5d5c88ae551608cae0d57b636c125d * arg2) + 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d).getPricePerFullShare() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
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
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function sub_d9e5580e(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    mem[96] = 2
    mem[128] = this.address
    mem[160] = msg.sender
    require ext_code.size(address(arg1))
    staticcall address(arg1).getPricePerFullShare() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    idx = 0
    s = 0
    while idx < 2:
        if idx >= mem[96]:
            revert with 0, 50
        if not mem[(32 * idx) + 140 len 20]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if idx >= mem[96]:
            revert with 0, 50
        _40 = mem[(32 * idx) + 128]
        if s > !eth.balance(mem[(32 * idx) + 128]):
            revert with 0, 17
        if idx >= mem[96]:
            revert with 0, 50
        _42 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args address(_42)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _48 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if s + eth.balance(_40) > !mem[_48]:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + eth.balance(_40) + mem[_48]
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
        revert with 0, 17
    _60 = mem[96]
    idx = 0
    t = 0
    while idx < _60:
        if idx >= mem[96]:
            revert with 0, 50
        if not mem[(32 * idx) + 140 len 20]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = t
            continue 
        if idx >= mem[96]:
            revert with 0, 50
        _64 = mem[(32 * idx) + 128]
        if t > !eth.balance(mem[(32 * idx) + 128]):
            revert with 0, 17
        if idx >= mem[96]:
            revert with 0, 50
        _68 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args address(_68)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _71 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if t + eth.balance(_64) > !mem[_71]:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        t = t + eth.balance(_64) + mem[_71]
        continue 
    if t < s:
        revert with 0, 17
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
    if msg.sender == this.address:
        require ext_code.size(address(arg1))
        staticcall address(arg1).lastHarvest() with:
                gas gas_remaining wei
        mem[224] = ext_call.return_data[0]
        if not ext_call.success:
            idx = 0
            s = 0
            while idx < 3:
                if idx >= mem[96]:
                    revert with 0, 50
                if not mem[(32 * idx) + 140 len 20]:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if idx >= mem[96]:
                    revert with 0, 50
                _201 = mem[(32 * idx) + 128]
                if s > !eth.balance(mem[(32 * idx) + 128]):
                    revert with 0, 17
                if idx >= mem[96]:
                    revert with 0, 50
                _224 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_224)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _236 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s + eth.balance(_201) > !mem[_236]:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + eth.balance(_201) + mem[_236]
                continue 
            mem[mem[64] len 259] = code.data[5600 len 259]
            mem[mem[64] + 259] = address(arg1)
            create contract with 0 wei
                            code: code.data[5600 len 259], address(arg1)
            if create.new_address:
                if 2 >= mem[96]:
                    revert with 0, 50
                mem[192] = address(create.new_address)
                if gas_remaining < gas_remaining:
                    revert with 0, 17
                _349 = mem[96]
                idx = 0
                t = 0
                while idx < _349:
                    if idx >= mem[96]:
                        revert with 0, 50
                    if not mem[(32 * idx) + 140 len 20]:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t
                        continue 
                    if idx >= mem[96]:
                        revert with 0, 50
                    _381 = mem[(32 * idx) + 128]
                    if t > !eth.balance(mem[(32 * idx) + 128]):
                        revert with 0, 17
                    if idx >= mem[96]:
                        revert with 0, 50
                    _414 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_414)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _437 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if t + eth.balance(_381) > !mem[_437]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = t + eth.balance(_381) + mem[_437]
                    continue 
            else:
                mem[mem[64]] = 0x4641257d00000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(arg1))
                call address(arg1).harvest() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if gas_remaining < gas_remaining:
                    revert with 0, 17
                _348 = mem[96]
                idx = 0
                t = 0
                while idx < _348:
                    if idx >= mem[96]:
                        revert with 0, 50
                    if not mem[(32 * idx) + 140 len 20]:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t
                        continue 
                    if idx >= mem[96]:
                        revert with 0, 50
                    _380 = mem[(32 * idx) + 128]
                    if t > !eth.balance(mem[(32 * idx) + 128]):
                        revert with 0, 17
                    if idx >= mem[96]:
                        revert with 0, 50
                    _412 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_412)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _436 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if t + eth.balance(_380) > !mem[_436]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = t + eth.balance(_380) + mem[_436]
                    continue 
            if t < s:
                revert with 0, 17
            return t - s, 0, 0
        mem[64] = ceil32(return_data.size) + 224
        require return_data.size >= 32
        idx = 0
        s = 0
        while idx < 3:
            if idx >= mem[96]:
                revert with 0, 50
            if not mem[(32 * idx) + 140 len 20]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= mem[96]:
                revert with 0, 50
            _203 = mem[(32 * idx) + 128]
            if s > !eth.balance(mem[(32 * idx) + 128]):
                revert with 0, 17
            if idx >= mem[96]:
                revert with 0, 50
            _226 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args address(_226)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _237 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if s + eth.balance(_203) > !mem[_237]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + eth.balance(_203) + mem[_237]
            continue 
        mem[mem[64] len 259] = code.data[5600 len 259]
        mem[mem[64] + 259] = address(arg1)
        create contract with 0 wei
                        code: code.data[5600 len 259], address(arg1)
        if create.new_address:
            if 2 >= mem[96]:
                revert with 0, 50
            mem[192] = address(create.new_address)
            if gas_remaining < gas_remaining:
                revert with 0, 17
            _351 = mem[96]
            idx = 0
            t = 0
            while idx < _351:
                if idx >= mem[96]:
                    revert with 0, 50
                if not mem[(32 * idx) + 140 len 20]:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = t
                    continue 
                if idx >= mem[96]:
                    revert with 0, 50
                _383 = mem[(32 * idx) + 128]
                if t > !eth.balance(mem[(32 * idx) + 128]):
                    revert with 0, 17
                if idx >= mem[96]:
                    revert with 0, 50
                _418 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_418)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _439 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if t + eth.balance(_383) > !mem[_439]:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = t + eth.balance(_383) + mem[_439]
                continue 
        else:
            mem[mem[64]] = 0x4641257d00000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(arg1))
            call address(arg1).harvest() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if gas_remaining < gas_remaining:
                revert with 0, 17
            _350 = mem[96]
            idx = 0
            t = 0
            while idx < _350:
                if idx >= mem[96]:
                    revert with 0, 50
                if not mem[(32 * idx) + 140 len 20]:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = t
                    continue 
                if idx >= mem[96]:
                    revert with 0, 50
                _382 = mem[(32 * idx) + 128]
                if t > !eth.balance(mem[(32 * idx) + 128]):
                    revert with 0, 17
                if idx >= mem[96]:
                    revert with 0, 50
                _416 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_416)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _438 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if t + eth.balance(_382) > !mem[_438]:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = t + eth.balance(_382) + mem[_438]
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
                    revert with 0, 50
                if not mem[(32 * idx) + 140 len 20]:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if idx >= mem[96]:
                    revert with 0, 50
                _205 = mem[(32 * idx) + 128]
                if s > !eth.balance(mem[(32 * idx) + 128]):
                    revert with 0, 17
                if idx >= mem[96]:
                    revert with 0, 50
                _228 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_228)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _238 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s + eth.balance(_205) > !mem[_238]:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + eth.balance(_205) + mem[_238]
                continue 
            mem[mem[64] len 259] = code.data[5600 len 259]
            mem[mem[64] + 259] = address(arg1)
            create contract with 0 wei
                            code: code.data[5600 len 259], address(arg1)
            if create.new_address:
                if 2 >= mem[96]:
                    revert with 0, 50
                mem[192] = address(create.new_address)
                if gas_remaining < gas_remaining:
                    revert with 0, 17
                _353 = mem[96]
                idx = 0
                t = 0
                while idx < _353:
                    if idx >= mem[96]:
                        revert with 0, 50
                    if not mem[(32 * idx) + 140 len 20]:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t
                        continue 
                    if idx >= mem[96]:
                        revert with 0, 50
                    _385 = mem[(32 * idx) + 128]
                    if t > !eth.balance(mem[(32 * idx) + 128]):
                        revert with 0, 17
                    if idx >= mem[96]:
                        revert with 0, 50
                    _422 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_422)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _441 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if t + eth.balance(_385) > !mem[_441]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = t + eth.balance(_385) + mem[_441]
                    continue 
            else:
                mem[mem[64]] = 0x4641257d00000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(arg1))
                call address(arg1).harvest() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if gas_remaining < gas_remaining:
                    revert with 0, 17
                _352 = mem[96]
                idx = 0
                t = 0
                while idx < _352:
                    if idx >= mem[96]:
                        revert with 0, 50
                    if not mem[(32 * idx) + 140 len 20]:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t
                        continue 
                    if idx >= mem[96]:
                        revert with 0, 50
                    _384 = mem[(32 * idx) + 128]
                    if t > !eth.balance(mem[(32 * idx) + 128]):
                        revert with 0, 17
                    if idx >= mem[96]:
                        revert with 0, 50
                    _420 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_420)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _440 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if t + eth.balance(_384) > !mem[_440]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = t + eth.balance(_384) + mem[_440]
                    continue 
            if t < s:
                revert with 0, 17
            return t - s, 0, 0
        mem[64] = ceil32(return_data.size) + 224
        require return_data.size >= 32
        idx = 0
        s = 0
        while idx < 3:
            if idx >= mem[96]:
                revert with 0, 50
            if not mem[(32 * idx) + 140 len 20]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= mem[96]:
                revert with 0, 50
            _207 = mem[(32 * idx) + 128]
            if s > !eth.balance(mem[(32 * idx) + 128]):
                revert with 0, 17
            if idx >= mem[96]:
                revert with 0, 50
            _230 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args address(_230)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _239 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if s + eth.balance(_207) > !mem[_239]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + eth.balance(_207) + mem[_239]
            continue 
        mem[mem[64] len 259] = code.data[5600 len 259]
        mem[mem[64] + 259] = address(arg1)
        create contract with 0 wei
                        code: code.data[5600 len 259], address(arg1)
        if create.new_address:
            if 2 >= mem[96]:
                revert with 0, 50
            mem[192] = address(create.new_address)
            if gas_remaining < gas_remaining:
                revert with 0, 17
            _355 = mem[96]
            idx = 0
            t = 0
            while idx < _355:
                if idx >= mem[96]:
                    revert with 0, 50
                if not mem[(32 * idx) + 140 len 20]:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = t
                    continue 
                if idx >= mem[96]:
                    revert with 0, 50
                _387 = mem[(32 * idx) + 128]
                if t > !eth.balance(mem[(32 * idx) + 128]):
                    revert with 0, 17
                if idx >= mem[96]:
                    revert with 0, 50
                _426 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_426)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _443 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if t + eth.balance(_387) > !mem[_443]:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = t + eth.balance(_387) + mem[_443]
                continue 
        else:
            mem[mem[64]] = 0x4641257d00000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(arg1))
            call address(arg1).harvest() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if gas_remaining < gas_remaining:
                revert with 0, 17
            _354 = mem[96]
            idx = 0
            t = 0
            while idx < _354:
                if idx >= mem[96]:
                    revert with 0, 50
                if not mem[(32 * idx) + 140 len 20]:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = t
                    continue 
                if idx >= mem[96]:
                    revert with 0, 50
                _386 = mem[(32 * idx) + 128]
                if t > !eth.balance(mem[(32 * idx) + 128]):
                    revert with 0, 17
                if idx >= mem[96]:
                    revert with 0, 50
                _424 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_424)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _442 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if t + eth.balance(_386) > !mem[_442]:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = t + eth.balance(_386) + mem[_442]
                continue 
    if t < s:
        revert with 0, 17
    return t - s, 0, ext_call.return_data[0]
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x9a08e77e(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xd9e5580e(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x9a08e77e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 96
                    require arg1 == address(arg1)
                    require arg2 == address(arg2)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if 1 > !arg3:
                        revert with 0, 17
                    if arg3 + 1 > 0x177e0b5c9f10d3b3ea44db772:
                        revert with 0, 17
                    require ext_code.size(address(arg1 xor (0xae5ac3c49a5d5c88ae551608cae0d57b636c125d * arg3) + 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d))
                    if block.timestamp > arg3:
                        staticcall address(arg1 xor (0xae5ac3c49a5d5c88ae551608cae0d57b636c125d * arg3) + 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d).lastHarvest() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > arg3:
                            revert with 0, 'expired'
                    call address(arg1 xor (0xae5ac3c49a5d5c88ae551608cae0d57b636c125d * arg3) + 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d).harvestWithCallFeeRecipient(address arg1) with:
                         gas gas_remaining wei
                        args address(arg2)
                else:
                    if unknown_0x9fdb639b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 96
                        require arg1 == address(arg1)
                        require arg2 == address(arg2)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if 1 > !arg3:
                            revert with 0, 17
                        if arg3 + 1 > 0x177e0b5c9f10d3b3ea44db772:
                            revert with 0, 17
                        require ext_code.size(address(arg1 xor (0xae5ac3c49a5d5c88ae551608cae0d57b636c125d * arg3) + 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d))
                        if block.timestamp > arg3:
                            staticcall address(arg1 xor (0xae5ac3c49a5d5c88ae551608cae0d57b636c125d * arg3) + 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d).lastHarvest() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > arg3:
                                revert with 0, 'expired'
                        call address(arg1 xor (0xae5ac3c49a5d5c88ae551608cae0d57b636c125d * arg3) + 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d).harvest(address arg1) with:
                             gas gas_remaining wei
                            args address(arg2)
                    else:
                        require unknown_0xd04b78aa(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if 1 > !arg2:
                            revert with 0, 17
                        if arg2 + 1 > 0x177e0b5c9f10d3b3ea44db772:
                            revert with 0, 17
                        if arg2:
                            require ext_code.size(address(arg1 xor (0xae5ac3c49a5d5c88ae551608cae0d57b636c125d * arg2) + 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d))
                            staticcall address(arg1 xor (0xae5ac3c49a5d5c88ae551608cae0d57b636c125d * arg2) + 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d).getPricePerFullShare() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > arg2:
                                revert with 0, 'expired'
                        require ext_code.size(0xeae4cb5741b56133a8c3fb2afd52aa67ccd6fc29)
                        call 0xeae4cb5741b56133a8c3fb2afd52aa67ccd6fc29.doHardWork(address arg1) with:
                             gas gas_remaining wei
                            args address(arg1 xor (0xae5ac3c49a5d5c88ae551608cae0d57b636c125d * arg2) + 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if uint32(call.func_hash) >> 224 != unknown_0xd9e5580e(?????):
                if unknown_0xdedf7c6c(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if eth.balance(this.address) > !ext_call.return_data[0]:
                        revert with 0, 17
                    return (eth.balance(this.address) + ext_call.return_data[0])
                if uint32(call.func_hash) >> 224 != unknown_0xf2fde38b(?????):
                    require unknown_0xffa1ad74(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return 2
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if not address(arg1):
                    revert with 0, 'Ownable: new owner is the zero address'
                owner = address(arg1)
                emit OwnershipTransferred(owner, address(arg1));
            require not msg.value
            require calldata.size - 4 >= 64
            require arg1 == address(arg1)
            require arg2 == address(arg2)
            mem[128] = 2
            mem[160] = this.address
            mem[192] = msg.sender
            require ext_code.size(address(arg1))
            staticcall address(arg1).getPricePerFullShare() with:
                    gas gas_remaining wei
            mem[224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 224
            require return_data.size >= 32
            idx = 0
            s = 0
            while idx < 2:
                if idx >= mem[128]:
                    revert with 0, 50
                if not mem[(32 * idx) + 172 len 20]:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if idx >= mem[128]:
                    revert with 0, 50
                _396 = mem[(32 * idx) + 160]
                if s > !eth.balance(mem[(32 * idx) + 160]):
                    revert with 0, 17
                if idx >= mem[128]:
                    revert with 0, 50
                _427 = mem[(32 * idx) + 160]
                mem[mem[64] + 4] = mem[(32 * idx) + 172 len 20]
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_427)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _455 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s + eth.balance(_396) > !mem[_455]:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + eth.balance(_396) + mem[_455]
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
                revert with 0, 17
            _615 = mem[128]
            idx = 0
            t = 0
            while idx < _615:
                if idx >= mem[128]:
                    revert with 0, 50
                if not mem[(32 * idx) + 172 len 20]:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = t
                    continue 
                if idx >= mem[128]:
                    revert with 0, 50
                _659 = mem[(32 * idx) + 160]
                if t > !eth.balance(mem[(32 * idx) + 160]):
                    revert with 0, 17
                if idx >= mem[128]:
                    revert with 0, 50
                _707 = mem[(32 * idx) + 160]
                mem[mem[64] + 4] = mem[(32 * idx) + 172 len 20]
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_707)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _726 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if t + eth.balance(_659) > !mem[_726]:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = t + eth.balance(_659) + mem[_726]
                continue 
            if t < s:
                revert with 0, 17
            return t - s, 0, ext_call.return_data[0]
        if unknown_0x35d27953(?????) > uint32(call.func_hash) >> 224:
            if collect(address arg1) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(arg1))
                call address(arg1).withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call msg.sender with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
            if unknown_0x1fbe1979(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                call msg.sender with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require unknown_0x2e9b33d5(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 64
            require arg1 == address(arg1)
            require arg2 == address(arg2)
            mem[128] = 3
            mem[64] = 256
            mem[160 len 96] = call.data[calldata.size len 96]
            mem[160] = this.address
            if msg.sender == this.address:
                require ext_code.size(address(arg1))
                staticcall address(arg1).lastHarvest() with:
                        gas gas_remaining wei
                mem[256] = ext_call.return_data[0]
                if not ext_call.success:
                    idx = 0
                    s = 0
                    while idx < 3:
                        if idx >= mem[128]:
                            revert with 0, 50
                        if not mem[(32 * idx) + 172 len 20]:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            continue 
                        if idx >= mem[128]:
                            revert with 0, 50
                        _388 = mem[(32 * idx) + 160]
                        if s > !eth.balance(mem[(32 * idx) + 160]):
                            revert with 0, 17
                        if idx >= mem[128]:
                            revert with 0, 50
                        _417 = mem[(32 * idx) + 160]
                        mem[mem[64] + 4] = mem[(32 * idx) + 172 len 20]
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_417)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _448 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if s + eth.balance(_388) > !mem[_448]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + eth.balance(_388) + mem[_448]
                        continue 
                    mem[mem[64] len 259] = code.data[5600 len 259]
                    mem[mem[64] + 259] = address(arg1)
                    create contract with 0 wei
                                    code: code.data[5600 len 259], address(arg1)
                    if create.new_address:
                        if 2 >= mem[128]:
                            revert with 0, 50
                        mem[224] = address(create.new_address)
                        if gas_remaining < gas_remaining:
                            revert with 0, 17
                        _608 = mem[128]
                        idx = 0
                        t = 0
                        while idx < _608:
                            if idx >= mem[128]:
                                revert with 0, 50
                            if not mem[(32 * idx) + 172 len 20]:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                t = t
                                continue 
                            if idx >= mem[128]:
                                revert with 0, 50
                            _648 = mem[(32 * idx) + 160]
                            if t > !eth.balance(mem[(32 * idx) + 160]):
                                revert with 0, 17
                            if idx >= mem[128]:
                                revert with 0, 50
                            _693 = mem[(32 * idx) + 160]
                            mem[mem[64] + 4] = mem[(32 * idx) + 172 len 20]
                            require ext_code.size(address(arg2))
                            staticcall address(arg2).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_693)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _719 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if t + eth.balance(_648) > !mem[_719]:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = t + eth.balance(_648) + mem[_719]
                            continue 
                    else:
                        mem[mem[64]] = 0x4641257d00000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(arg1))
                        call address(arg1).harvest() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if gas_remaining < gas_remaining:
                            revert with 0, 17
                        _607 = mem[128]
                        idx = 0
                        t = 0
                        while idx < _607:
                            if idx >= mem[128]:
                                revert with 0, 50
                            if not mem[(32 * idx) + 172 len 20]:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                t = t
                                continue 
                            if idx >= mem[128]:
                                revert with 0, 50
                            _647 = mem[(32 * idx) + 160]
                            if t > !eth.balance(mem[(32 * idx) + 160]):
                                revert with 0, 17
                            if idx >= mem[128]:
                                revert with 0, 50
                            _691 = mem[(32 * idx) + 160]
                            mem[mem[64] + 4] = mem[(32 * idx) + 172 len 20]
                            require ext_code.size(address(arg2))
                            staticcall address(arg2).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_691)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _718 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if t + eth.balance(_647) > !mem[_718]:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = t + eth.balance(_647) + mem[_718]
                            continue 
                    if t < s:
                        revert with 0, 17
                    return t - s, 0, 0
                mem[64] = ceil32(return_data.size) + 256
                require return_data.size >= 32
                idx = 0
                s = 0
                while idx < 3:
                    if idx >= mem[128]:
                        revert with 0, 50
                    if not mem[(32 * idx) + 172 len 20]:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= mem[128]:
                        revert with 0, 50
                    _390 = mem[(32 * idx) + 160]
                    if s > !eth.balance(mem[(32 * idx) + 160]):
                        revert with 0, 17
                    if idx >= mem[128]:
                        revert with 0, 50
                    _419 = mem[(32 * idx) + 160]
                    mem[mem[64] + 4] = mem[(32 * idx) + 172 len 20]
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_419)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _449 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s + eth.balance(_390) > !mem[_449]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + eth.balance(_390) + mem[_449]
                    continue 
                mem[mem[64] len 259] = code.data[5600 len 259]
                mem[mem[64] + 259] = address(arg1)
                create contract with 0 wei
                                code: code.data[5600 len 259], address(arg1)
                if create.new_address:
                    if 2 >= mem[128]:
                        revert with 0, 50
                    mem[224] = address(create.new_address)
                    if gas_remaining < gas_remaining:
                        revert with 0, 17
                    _610 = mem[128]
                    idx = 0
                    t = 0
                    while idx < _610:
                        if idx >= mem[128]:
                            revert with 0, 50
                        if not mem[(32 * idx) + 172 len 20]:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = t
                            continue 
                        if idx >= mem[128]:
                            revert with 0, 50
                        _650 = mem[(32 * idx) + 160]
                        if t > !eth.balance(mem[(32 * idx) + 160]):
                            revert with 0, 17
                        if idx >= mem[128]:
                            revert with 0, 50
                        _697 = mem[(32 * idx) + 160]
                        mem[mem[64] + 4] = mem[(32 * idx) + 172 len 20]
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_697)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _721 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t + eth.balance(_650) > !mem[_721]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t + eth.balance(_650) + mem[_721]
                        continue 
                else:
                    mem[mem[64]] = 0x4641257d00000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(arg1))
                    call address(arg1).harvest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if gas_remaining < gas_remaining:
                        revert with 0, 17
                    _609 = mem[128]
                    idx = 0
                    t = 0
                    while idx < _609:
                        if idx >= mem[128]:
                            revert with 0, 50
                        if not mem[(32 * idx) + 172 len 20]:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = t
                            continue 
                        if idx >= mem[128]:
                            revert with 0, 50
                        _649 = mem[(32 * idx) + 160]
                        if t > !eth.balance(mem[(32 * idx) + 160]):
                            revert with 0, 17
                        if idx >= mem[128]:
                            revert with 0, 50
                        _695 = mem[(32 * idx) + 160]
                        mem[mem[64] + 4] = mem[(32 * idx) + 172 len 20]
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_695)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _720 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t + eth.balance(_649) > !mem[_720]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t + eth.balance(_649) + mem[_720]
                        continue 
            else:
                mem[192] = msg.sender
                require ext_code.size(address(arg1))
                staticcall address(arg1).lastHarvest() with:
                        gas gas_remaining wei
                mem[256] = ext_call.return_data[0]
                if not ext_call.success:
                    idx = 0
                    s = 0
                    while idx < 3:
                        if idx >= mem[128]:
                            revert with 0, 50
                        if not mem[(32 * idx) + 172 len 20]:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s
                            continue 
                        if idx >= mem[128]:
                            revert with 0, 50
                        _392 = mem[(32 * idx) + 160]
                        if s > !eth.balance(mem[(32 * idx) + 160]):
                            revert with 0, 17
                        if idx >= mem[128]:
                            revert with 0, 50
                        _421 = mem[(32 * idx) + 160]
                        mem[mem[64] + 4] = mem[(32 * idx) + 172 len 20]
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_421)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _450 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if s + eth.balance(_392) > !mem[_450]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + eth.balance(_392) + mem[_450]
                        continue 
                    mem[mem[64] len 259] = code.data[5600 len 259]
                    mem[mem[64] + 259] = address(arg1)
                    create contract with 0 wei
                                    code: code.data[5600 len 259], address(arg1)
                    if create.new_address:
                        if 2 >= mem[128]:
                            revert with 0, 50
                        mem[224] = address(create.new_address)
                        if gas_remaining < gas_remaining:
                            revert with 0, 17
                        _612 = mem[128]
                        idx = 0
                        t = 0
                        while idx < _612:
                            if idx >= mem[128]:
                                revert with 0, 50
                            if not mem[(32 * idx) + 172 len 20]:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                t = t
                                continue 
                            if idx >= mem[128]:
                                revert with 0, 50
                            _652 = mem[(32 * idx) + 160]
                            if t > !eth.balance(mem[(32 * idx) + 160]):
                                revert with 0, 17
                            if idx >= mem[128]:
                                revert with 0, 50
                            _701 = mem[(32 * idx) + 160]
                            mem[mem[64] + 4] = mem[(32 * idx) + 172 len 20]
                            require ext_code.size(address(arg2))
                            staticcall address(arg2).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_701)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _723 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if t + eth.balance(_652) > !mem[_723]:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = t + eth.balance(_652) + mem[_723]
                            continue 
                    else:
                        mem[mem[64]] = 0x4641257d00000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(arg1))
                        call address(arg1).harvest() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if gas_remaining < gas_remaining:
                            revert with 0, 17
                        _611 = mem[128]
                        idx = 0
                        t = 0
                        while idx < _611:
                            if idx >= mem[128]:
                                revert with 0, 50
                            if not mem[(32 * idx) + 172 len 20]:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                t = t
                                continue 
                            if idx >= mem[128]:
                                revert with 0, 50
                            _651 = mem[(32 * idx) + 160]
                            if t > !eth.balance(mem[(32 * idx) + 160]):
                                revert with 0, 17
                            if idx >= mem[128]:
                                revert with 0, 50
                            _699 = mem[(32 * idx) + 160]
                            mem[mem[64] + 4] = mem[(32 * idx) + 172 len 20]
                            require ext_code.size(address(arg2))
                            staticcall address(arg2).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_699)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _722 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if t + eth.balance(_651) > !mem[_722]:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = t + eth.balance(_651) + mem[_722]
                            continue 
                    if t < s:
                        revert with 0, 17
                    return t - s, 0, 0
                mem[64] = ceil32(return_data.size) + 256
                require return_data.size >= 32
                idx = 0
                s = 0
                while idx < 3:
                    if idx >= mem[128]:
                        revert with 0, 50
                    if not mem[(32 * idx) + 172 len 20]:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= mem[128]:
                        revert with 0, 50
                    _394 = mem[(32 * idx) + 160]
                    if s > !eth.balance(mem[(32 * idx) + 160]):
                        revert with 0, 17
                    if idx >= mem[128]:
                        revert with 0, 50
                    _423 = mem[(32 * idx) + 160]
                    mem[mem[64] + 4] = mem[(32 * idx) + 172 len 20]
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_423)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _451 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s + eth.balance(_394) > !mem[_451]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + eth.balance(_394) + mem[_451]
                    continue 
                mem[mem[64] len 259] = code.data[5600 len 259]
                mem[mem[64] + 259] = address(arg1)
                create contract with 0 wei
                                code: code.data[5600 len 259], address(arg1)
                if create.new_address:
                    if 2 >= mem[128]:
                        revert with 0, 50
                    mem[224] = address(create.new_address)
                    if gas_remaining < gas_remaining:
                        revert with 0, 17
                    _614 = mem[128]
                    idx = 0
                    t = 0
                    while idx < _614:
                        if idx >= mem[128]:
                            revert with 0, 50
                        if not mem[(32 * idx) + 172 len 20]:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = t
                            continue 
                        if idx >= mem[128]:
                            revert with 0, 50
                        _654 = mem[(32 * idx) + 160]
                        if t > !eth.balance(mem[(32 * idx) + 160]):
                            revert with 0, 17
                        if idx >= mem[128]:
                            revert with 0, 50
                        _705 = mem[(32 * idx) + 160]
                        mem[mem[64] + 4] = mem[(32 * idx) + 172 len 20]
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_705)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _725 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t + eth.balance(_654) > !mem[_725]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t + eth.balance(_654) + mem[_725]
                        continue 
                else:
                    mem[mem[64]] = 0x4641257d00000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(arg1))
                    call address(arg1).harvest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if gas_remaining < gas_remaining:
                        revert with 0, 17
                    _613 = mem[128]
                    idx = 0
                    t = 0
                    while idx < _613:
                        if idx >= mem[128]:
                            revert with 0, 50
                        if not mem[(32 * idx) + 172 len 20]:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = t
                            continue 
                        if idx >= mem[128]:
                            revert with 0, 50
                        _653 = mem[(32 * idx) + 160]
                        if t > !eth.balance(mem[(32 * idx) + 160]):
                            revert with 0, 17
                        if idx >= mem[128]:
                            revert with 0, 50
                        _703 = mem[(32 * idx) + 160]
                        mem[mem[64] + 4] = mem[(32 * idx) + 172 len 20]
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_703)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _724 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t + eth.balance(_653) > !mem[_724]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t + eth.balance(_653) + mem[_724]
                        continue 
            if t < s:
                revert with 0, 17
            return t - s, 0, ext_call.return_data[0]
        if unknown_0x35d27953(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 64
            require arg1 == address(arg1)
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if 1 > !arg2:
                revert with 0, 17
            if arg2 + 1 > 0x177e0b5c9f10d3b3ea44db772:
                revert with 0, 17
            require ext_code.size(address(arg1 xor (0xae5ac3c49a5d5c88ae551608cae0d57b636c125d * arg2) + 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d))
            if block.timestamp > arg2:
                staticcall address(arg1 xor (0xae5ac3c49a5d5c88ae551608cae0d57b636c125d * arg2) + 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d).lastHarvest() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > arg2:
                    revert with 0, 'expired'
            call address(arg1 xor (0xae5ac3c49a5d5c88ae551608cae0d57b636c125d * arg2) + 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d).harvest() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                owner = 0
                emit OwnershipTransferred(owner, 0);
            else:
                if uint32(call.func_hash) >> 224 != unknown_0x839006f2(?????):
                    require unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return owner
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                mem[132] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(return_data.size) + 164] = msg.sender
                mem[ceil32(return_data.size) + 196] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + 128] = 68
                mem[ceil32(return_data.size) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 228] = 32
                mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(arg1)):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 292 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
                mem[ceil32(return_data.size) + 360] = 0
                call address(arg1) with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96]:
                        require mem[96] >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                        if not mem[ceil32(return_data.size) + 324]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}



}
