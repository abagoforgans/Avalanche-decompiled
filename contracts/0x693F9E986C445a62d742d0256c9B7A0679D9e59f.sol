contract main {




// =====================  Runtime code  =====================


const VERSION = 4


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
    call arg1.0x2e1a7d4d with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function sub_d1d0ff49(?) {
    require calldata.size - 4 >= 32
    if 1 > !(Mask(96, 0, arg1) >> 160):
        revert with 0, 17
    if address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d) and (Mask(96, 0, arg1) >> 160) + 1 > -1 / address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d):
        revert with 0, 17
    require ext_code.size(address(address(arg1) xor address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d) + (Mask(96, 0, arg1) >> 160 * address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d))))
    if Mask(96, 0, arg1) >> 160 < block.timestamp:
        staticcall address(address(arg1) xor address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d) + (Mask(96, 0, arg1) >> 160 * address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d))).0xf1a392da with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > Mask(96, 0, arg1) >> 160:
            revert with 0, 'expired'
    call address(address(arg1) xor address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d) + (Mask(96, 0, arg1) >> 160 * address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d))).0x4641257d with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_08d3f9ae(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if 1 > !(Mask(96, 0, arg1) >> 160):
        revert with 0, 17
    if address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d) and (Mask(96, 0, arg1) >> 160) + 1 > -1 / address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d):
        revert with 0, 17
    require ext_code.size(address(address(arg1) xor address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d) + (Mask(96, 0, arg1) >> 160 * address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d))))
    if Mask(96, 0, arg1) >> 160 < block.timestamp:
        staticcall address(address(arg1) xor address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d) + (Mask(96, 0, arg1) >> 160 * address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d))).0xf1a392da with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > Mask(96, 0, arg1) >> 160:
            revert with 0, 'expired'
    call address(address(arg1) xor address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d) + (Mask(96, 0, arg1) >> 160 * address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d))).harvest(address arg1) with:
         gas gas_remaining wei
        args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_5c427314(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if 1 > !(Mask(96, 0, arg1) >> 160):
        revert with 0, 17
    if address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d) and (Mask(96, 0, arg1) >> 160) + 1 > -1 / address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d):
        revert with 0, 17
    require ext_code.size(address(address(arg1) xor address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d) + (Mask(96, 0, arg1) >> 160 * address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d))))
    if Mask(96, 0, arg1) >> 160 < block.timestamp:
        staticcall address(address(arg1) xor address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d) + (Mask(96, 0, arg1) >> 160 * address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d))).0xf1a392da with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > Mask(96, 0, arg1) >> 160:
            revert with 0, 'expired'
    call address(address(arg1) xor address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d) + (Mask(96, 0, arg1) >> 160 * address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d))).harvestWithCallFeeRecipient(address arg1) with:
         gas gas_remaining wei
        args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_4b326189(?) {
    require calldata.size - 4 >= 32
    if 1 > !(Mask(96, 0, arg1) >> 160):
        revert with 0, 17
    if address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d) and (Mask(96, 0, arg1) >> 160) + 1 > -1 / address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d):
        revert with 0, 17
    if Mask(256, -160, arg1):
        require ext_code.size(address(address(arg1) xor address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d) + (Mask(96, 0, arg1) >> 160 * address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d))))
        staticcall address(address(arg1) xor address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d) + (Mask(96, 0, arg1) >> 160 * address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d))).getPricePerFullShare() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > Mask(96, 0, arg1) >> 160:
            revert with 0, 'expired'
    require ext_code.size(0xeae4cb5741b56133a8c3fb2afd52aa67ccd6fc29)
    call 0xeae4cb5741b56133a8c3fb2afd52aa67ccd6fc29.doHardWork(address arg1) with:
         gas gas_remaining wei
        args address(address(arg1) xor address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d) + (Mask(96, 0, arg1) >> 160 * address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d)))
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
    mem[96] = 3
    mem[128 len 96] = call.data[calldata.size len 96]
    mem[128] = this.address
    if msg.sender == this.address:
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
            _76 = mem[(32 * idx) + 128]
            if s > !eth.balance(mem[(32 * idx) + 128]):
                revert with 0, 17
            if idx >= mem[96]:
                revert with 0, 50
            _80 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args address(_80)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _91 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if s + eth.balance(_76) > !mem[_91]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + eth.balance(_76) + mem[_91]
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
        _116 = mem[96]
        idx = 0
        t = 0
        while idx < _116:
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
            _124 = mem[(32 * idx) + 128]
            if t > !eth.balance(mem[(32 * idx) + 128]):
                revert with 0, 17
            if idx >= mem[96]:
                revert with 0, 50
            _132 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args address(_132)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _138 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if t + eth.balance(_124) > !mem[_138]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = t + eth.balance(_124) + mem[_138]
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
            _77 = mem[(32 * idx) + 128]
            if s > !eth.balance(mem[(32 * idx) + 128]):
                revert with 0, 17
            if idx >= mem[96]:
                revert with 0, 50
            _82 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args address(_82)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _93 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if s + eth.balance(_77) > !mem[_93]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + eth.balance(_77) + mem[_93]
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
        _117 = mem[96]
        idx = 0
        t = 0
        while idx < _117:
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
            _125 = mem[(32 * idx) + 128]
            if t > !eth.balance(mem[(32 * idx) + 128]):
                revert with 0, 17
            if idx >= mem[96]:
                revert with 0, 50
            _134 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args address(_134)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _139 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if t + eth.balance(_125) > !mem[_139]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = t + eth.balance(_125) + mem[_139]
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
        staticcall address(arg1).0xf1a392da with:
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
                _220 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_220)
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
            mem[mem[64] len 259] = code.data[5440 len 259]
            mem[mem[64] + 259] = address(arg1)
            create contract with 0 wei
                            code: code.data[5440 len 259], address(arg1)
            if create.new_address:
                if gas_remaining < 45000:
                    revert with 0, 17
                if 2 >= mem[96]:
                    revert with 0, 50
                mem[192] = address(create.new_address)
                if gas_remaining - 45000 < gas_remaining:
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
                if t < s:
                    revert with 0, 17
                return t - s, -45000, 0
            mem[mem[64]] = 0x4641257d00000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(arg1))
            call address(arg1).0x4641257d with:
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
            _222 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args address(_222)
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
        mem[mem[64] len 259] = code.data[5440 len 259]
        mem[mem[64] + 259] = address(arg1)
        create contract with 0 wei
                        code: code.data[5440 len 259], address(arg1)
        if create.new_address:
            if gas_remaining < 45000:
                revert with 0, 17
            if 2 >= mem[96]:
                revert with 0, 50
            mem[192] = address(create.new_address)
            if gas_remaining - 45000 < gas_remaining:
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
            if t < s:
                revert with 0, 17
            return t - s, -45000, ext_call.return_data[0]
        mem[mem[64]] = 0x4641257d00000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(arg1))
        call address(arg1).0x4641257d with:
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
        staticcall address(arg1).0xf1a392da with:
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
                _224 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_224)
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
            mem[mem[64] len 259] = code.data[5440 len 259]
            mem[mem[64] + 259] = address(arg1)
            create contract with 0 wei
                            code: code.data[5440 len 259], address(arg1)
            if create.new_address:
                if gas_remaining < 45000:
                    revert with 0, 17
                if 2 >= mem[96]:
                    revert with 0, 50
                mem[192] = address(create.new_address)
                if gas_remaining - 45000 < gas_remaining:
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
                if t < s:
                    revert with 0, 17
                return t - s, -45000, 0
            mem[mem[64]] = 0x4641257d00000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(arg1))
            call address(arg1).0x4641257d with:
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
            _226 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args address(_226)
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
        mem[mem[64] len 259] = code.data[5440 len 259]
        mem[mem[64] + 259] = address(arg1)
        create contract with 0 wei
                        code: code.data[5440 len 259], address(arg1)
        if create.new_address:
            if gas_remaining < 45000:
                revert with 0, 17
            if 2 >= mem[96]:
                revert with 0, 50
            mem[192] = address(create.new_address)
            if gas_remaining - 45000 < gas_remaining:
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
            if t < s:
                revert with 0, 17
            return t - s, -45000, ext_call.return_data[0]
        mem[mem[64]] = 0x4641257d00000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(arg1))
        call address(arg1).0x4641257d with:
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
        if unknown_0x839006f2(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x2e9b33d5(?????) > uint32(call.func_hash) >> 224:
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
                    call address(arg1).0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0x08d3f9ae(?????):
                        require unknown_0x1fbe1979(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        call msg.sender with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg2 == address(arg2)
                        if 1 > !(Mask(96, 0, arg1) >> 160):
                            revert with 0, 17
                        if address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d) and (Mask(96, 0, arg1) >> 160) + 1 > -1 / address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d):
                            revert with 0, 17
                        require ext_code.size(address(address(arg1) xor address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d) + (Mask(96, 0, arg1) >> 160 * address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d))))
                        if Mask(96, 0, arg1) >> 160 < block.timestamp:
                            staticcall address(address(arg1) xor address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d) + (Mask(96, 0, arg1) >> 160 * address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d))).0xf1a392da with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > Mask(96, 0, arg1) >> 160:
                                revert with 0, 'expired'
                        call address(address(arg1) xor address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d) + (Mask(96, 0, arg1) >> 160 * address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d))).harvest(address arg1) with:
                             gas gas_remaining wei
                            args address(arg2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            if uint32(call.func_hash) >> 224 != unknown_0x2e9b33d5(?????):
                if unknown_0x4b326189(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if 1 > !(Mask(96, 0, arg1) >> 160):
                        revert with 0, 17
                    if address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d) and (Mask(96, 0, arg1) >> 160) + 1 > -1 / address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d):
                        revert with 0, 17
                    if Mask(256, -160, arg1):
                        require ext_code.size(address(address(arg1) xor address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d) + (Mask(96, 0, arg1) >> 160 * address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d))))
                        staticcall address(address(arg1) xor address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d) + (Mask(96, 0, arg1) >> 160 * address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d))).getPricePerFullShare() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > Mask(96, 0, arg1) >> 160:
                            revert with 0, 'expired'
                    require ext_code.size(0xeae4cb5741b56133a8c3fb2afd52aa67ccd6fc29)
                    call 0xeae4cb5741b56133a8c3fb2afd52aa67ccd6fc29.doHardWork(address arg1) with:
                         gas gas_remaining wei
                        args address(address(arg1) xor address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d) + (Mask(96, 0, arg1) >> 160 * address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d)))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0x5c427314(?????):
                        require unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        owner = 0
                        emit OwnershipTransferred(owner, 0);
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg2 == address(arg2)
                        if 1 > !(Mask(96, 0, arg1) >> 160):
                            revert with 0, 17
                        if address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d) and (Mask(96, 0, arg1) >> 160) + 1 > -1 / address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d):
                            revert with 0, 17
                        require ext_code.size(address(address(arg1) xor address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d) + (Mask(96, 0, arg1) >> 160 * address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d))))
                        if Mask(96, 0, arg1) >> 160 < block.timestamp:
                            staticcall address(address(arg1) xor address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d) + (Mask(96, 0, arg1) >> 160 * address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d))).0xf1a392da with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > Mask(96, 0, arg1) >> 160:
                                revert with 0, 'expired'
                        call address(address(arg1) xor address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d) + (Mask(96, 0, arg1) >> 160 * address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d))).harvestWithCallFeeRecipient(address arg1) with:
                             gas gas_remaining wei
                            args address(arg2)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
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
                staticcall address(arg1).0xf1a392da with:
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
                        _416 = mem[(32 * idx) + 160]
                        if s > !eth.balance(mem[(32 * idx) + 160]):
                            revert with 0, 17
                        if idx >= mem[128]:
                            revert with 0, 50
                        _443 = mem[(32 * idx) + 160]
                        mem[mem[64] + 4] = mem[(32 * idx) + 172 len 20]
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_443)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _483 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if s + eth.balance(_416) > !mem[_483]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + eth.balance(_416) + mem[_483]
                        continue 
                    mem[mem[64] len 259] = code.data[5440 len 259]
                    mem[mem[64] + 259] = address(arg1)
                    create contract with 0 wei
                                    code: code.data[5440 len 259], address(arg1)
                    if create.new_address:
                        if gas_remaining < 45000:
                            revert with 0, 17
                        if 2 >= mem[128]:
                            revert with 0, 50
                        mem[224] = address(create.new_address)
                        if gas_remaining - 45000 < gas_remaining:
                            revert with 0, 17
                        _656 = mem[128]
                        idx = 0
                        t = 0
                        while idx < _656:
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
                            _700 = mem[(32 * idx) + 160]
                            if t > !eth.balance(mem[(32 * idx) + 160]):
                                revert with 0, 17
                            if idx >= mem[128]:
                                revert with 0, 50
                            _749 = mem[(32 * idx) + 160]
                            mem[mem[64] + 4] = mem[(32 * idx) + 172 len 20]
                            require ext_code.size(address(arg2))
                            staticcall address(arg2).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_749)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _778 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if t + eth.balance(_700) > !mem[_778]:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = t + eth.balance(_700) + mem[_778]
                            continue 
                        if t < s:
                            revert with 0, 17
                        return t - s, -45000, 0
                    mem[mem[64]] = 0x4641257d00000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(arg1))
                    call address(arg1).0x4641257d with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if gas_remaining < gas_remaining:
                        revert with 0, 17
                    _655 = mem[128]
                    idx = 0
                    t = 0
                    while idx < _655:
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
                        _699 = mem[(32 * idx) + 160]
                        if t > !eth.balance(mem[(32 * idx) + 160]):
                            revert with 0, 17
                        if idx >= mem[128]:
                            revert with 0, 50
                        _747 = mem[(32 * idx) + 160]
                        mem[mem[64] + 4] = mem[(32 * idx) + 172 len 20]
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_747)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _777 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t + eth.balance(_699) > !mem[_777]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t + eth.balance(_699) + mem[_777]
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
                    _418 = mem[(32 * idx) + 160]
                    if s > !eth.balance(mem[(32 * idx) + 160]):
                        revert with 0, 17
                    if idx >= mem[128]:
                        revert with 0, 50
                    _445 = mem[(32 * idx) + 160]
                    mem[mem[64] + 4] = mem[(32 * idx) + 172 len 20]
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_445)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _484 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s + eth.balance(_418) > !mem[_484]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + eth.balance(_418) + mem[_484]
                    continue 
                mem[mem[64] len 259] = code.data[5440 len 259]
                mem[mem[64] + 259] = address(arg1)
                create contract with 0 wei
                                code: code.data[5440 len 259], address(arg1)
                if create.new_address:
                    if gas_remaining < 45000:
                        revert with 0, 17
                    if 2 >= mem[128]:
                        revert with 0, 50
                    mem[224] = address(create.new_address)
                    if gas_remaining - 45000 < gas_remaining:
                        revert with 0, 17
                    _658 = mem[128]
                    idx = 0
                    t = 0
                    while idx < _658:
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
                        _702 = mem[(32 * idx) + 160]
                        if t > !eth.balance(mem[(32 * idx) + 160]):
                            revert with 0, 17
                        if idx >= mem[128]:
                            revert with 0, 50
                        _753 = mem[(32 * idx) + 160]
                        mem[mem[64] + 4] = mem[(32 * idx) + 172 len 20]
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_753)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _780 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t + eth.balance(_702) > !mem[_780]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t + eth.balance(_702) + mem[_780]
                        continue 
                    if t < s:
                        revert with 0, 17
                    return t - s, -45000, ext_call.return_data[0]
                mem[mem[64]] = 0x4641257d00000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(arg1))
                call address(arg1).0x4641257d with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if gas_remaining < gas_remaining:
                    revert with 0, 17
                _657 = mem[128]
                idx = 0
                t = 0
                while idx < _657:
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
                    _701 = mem[(32 * idx) + 160]
                    if t > !eth.balance(mem[(32 * idx) + 160]):
                        revert with 0, 17
                    if idx >= mem[128]:
                        revert with 0, 50
                    _751 = mem[(32 * idx) + 160]
                    mem[mem[64] + 4] = mem[(32 * idx) + 172 len 20]
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_751)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _779 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if t + eth.balance(_701) > !mem[_779]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = t + eth.balance(_701) + mem[_779]
                    continue 
            else:
                mem[192] = msg.sender
                require ext_code.size(address(arg1))
                staticcall address(arg1).0xf1a392da with:
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
                        _420 = mem[(32 * idx) + 160]
                        if s > !eth.balance(mem[(32 * idx) + 160]):
                            revert with 0, 17
                        if idx >= mem[128]:
                            revert with 0, 50
                        _447 = mem[(32 * idx) + 160]
                        mem[mem[64] + 4] = mem[(32 * idx) + 172 len 20]
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_447)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _485 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if s + eth.balance(_420) > !mem[_485]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + eth.balance(_420) + mem[_485]
                        continue 
                    mem[mem[64] len 259] = code.data[5440 len 259]
                    mem[mem[64] + 259] = address(arg1)
                    create contract with 0 wei
                                    code: code.data[5440 len 259], address(arg1)
                    if create.new_address:
                        if gas_remaining < 45000:
                            revert with 0, 17
                        if 2 >= mem[128]:
                            revert with 0, 50
                        mem[224] = address(create.new_address)
                        if gas_remaining - 45000 < gas_remaining:
                            revert with 0, 17
                        _660 = mem[128]
                        idx = 0
                        t = 0
                        while idx < _660:
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
                            _704 = mem[(32 * idx) + 160]
                            if t > !eth.balance(mem[(32 * idx) + 160]):
                                revert with 0, 17
                            if idx >= mem[128]:
                                revert with 0, 50
                            _757 = mem[(32 * idx) + 160]
                            mem[mem[64] + 4] = mem[(32 * idx) + 172 len 20]
                            require ext_code.size(address(arg2))
                            staticcall address(arg2).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_757)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _782 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if t + eth.balance(_704) > !mem[_782]:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = t + eth.balance(_704) + mem[_782]
                            continue 
                        if t < s:
                            revert with 0, 17
                        return t - s, -45000, 0
                    mem[mem[64]] = 0x4641257d00000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(arg1))
                    call address(arg1).0x4641257d with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if gas_remaining < gas_remaining:
                        revert with 0, 17
                    _659 = mem[128]
                    idx = 0
                    t = 0
                    while idx < _659:
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
                        _703 = mem[(32 * idx) + 160]
                        if t > !eth.balance(mem[(32 * idx) + 160]):
                            revert with 0, 17
                        if idx >= mem[128]:
                            revert with 0, 50
                        _755 = mem[(32 * idx) + 160]
                        mem[mem[64] + 4] = mem[(32 * idx) + 172 len 20]
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_755)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _781 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t + eth.balance(_703) > !mem[_781]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t + eth.balance(_703) + mem[_781]
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
                    _422 = mem[(32 * idx) + 160]
                    if s > !eth.balance(mem[(32 * idx) + 160]):
                        revert with 0, 17
                    if idx >= mem[128]:
                        revert with 0, 50
                    _449 = mem[(32 * idx) + 160]
                    mem[mem[64] + 4] = mem[(32 * idx) + 172 len 20]
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_449)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _486 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s + eth.balance(_422) > !mem[_486]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + eth.balance(_422) + mem[_486]
                    continue 
                mem[mem[64] len 259] = code.data[5440 len 259]
                mem[mem[64] + 259] = address(arg1)
                create contract with 0 wei
                                code: code.data[5440 len 259], address(arg1)
                if create.new_address:
                    if gas_remaining < 45000:
                        revert with 0, 17
                    if 2 >= mem[128]:
                        revert with 0, 50
                    mem[224] = address(create.new_address)
                    if gas_remaining - 45000 < gas_remaining:
                        revert with 0, 17
                    _662 = mem[128]
                    idx = 0
                    t = 0
                    while idx < _662:
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
                        _706 = mem[(32 * idx) + 160]
                        if t > !eth.balance(mem[(32 * idx) + 160]):
                            revert with 0, 17
                        if idx >= mem[128]:
                            revert with 0, 50
                        _761 = mem[(32 * idx) + 160]
                        mem[mem[64] + 4] = mem[(32 * idx) + 172 len 20]
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_761)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _784 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t + eth.balance(_706) > !mem[_784]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t + eth.balance(_706) + mem[_784]
                        continue 
                    if t < s:
                        revert with 0, 17
                    return t - s, -45000, ext_call.return_data[0]
                mem[mem[64]] = 0x4641257d00000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(arg1))
                call address(arg1).0x4641257d with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if gas_remaining < gas_remaining:
                    revert with 0, 17
                _661 = mem[128]
                idx = 0
                t = 0
                while idx < _661:
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
                    _705 = mem[(32 * idx) + 160]
                    if t > !eth.balance(mem[(32 * idx) + 160]):
                        revert with 0, 17
                    if idx >= mem[128]:
                        revert with 0, 50
                    _759 = mem[(32 * idx) + 160]
                    mem[mem[64] + 4] = mem[(32 * idx) + 172 len 20]
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_759)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _783 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if t + eth.balance(_705) > !mem[_783]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = t + eth.balance(_705) + mem[_783]
                    continue 
            if t < s:
                revert with 0, 17
            return t - s, 0, ext_call.return_data[0]
        if unknown_0xd9e5580e(?????) <= uint32(call.func_hash) >> 224:
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
                    return 4
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
            mem[128] = 3
            mem[160 len 96] = call.data[calldata.size len 96]
            mem[160] = this.address
            if msg.sender == this.address:
                require ext_code.size(address(arg1))
                staticcall address(arg1).getPricePerFullShare() with:
                        gas gas_remaining wei
                mem[256] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
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
                    _424 = mem[(32 * idx) + 160]
                    if s > !eth.balance(mem[(32 * idx) + 160]):
                        revert with 0, 17
                    if idx >= mem[128]:
                        revert with 0, 50
                    _453 = mem[(32 * idx) + 160]
                    mem[mem[64] + 4] = mem[(32 * idx) + 172 len 20]
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_453)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _490 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s + eth.balance(_424) > !mem[_490]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + eth.balance(_424) + mem[_490]
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
                _663 = mem[128]
                idx = 0
                t = 0
                while idx < _663:
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
                    _711 = mem[(32 * idx) + 160]
                    if t > !eth.balance(mem[(32 * idx) + 160]):
                        revert with 0, 17
                    if idx >= mem[128]:
                        revert with 0, 50
                    _763 = mem[(32 * idx) + 160]
                    mem[mem[64] + 4] = mem[(32 * idx) + 172 len 20]
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_763)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _785 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if t + eth.balance(_711) > !mem[_785]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = t + eth.balance(_711) + mem[_785]
                    continue 
            else:
                mem[192] = msg.sender
                require ext_code.size(address(arg1))
                staticcall address(arg1).getPricePerFullShare() with:
                        gas gas_remaining wei
                mem[256] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
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
                    _425 = mem[(32 * idx) + 160]
                    if s > !eth.balance(mem[(32 * idx) + 160]):
                        revert with 0, 17
                    if idx >= mem[128]:
                        revert with 0, 50
                    _455 = mem[(32 * idx) + 160]
                    mem[mem[64] + 4] = mem[(32 * idx) + 172 len 20]
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_455)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _492 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s + eth.balance(_425) > !mem[_492]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + eth.balance(_425) + mem[_492]
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
                _664 = mem[128]
                idx = 0
                t = 0
                while idx < _664:
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
                    _712 = mem[(32 * idx) + 160]
                    if t > !eth.balance(mem[(32 * idx) + 160]):
                        revert with 0, 17
                    if idx >= mem[128]:
                        revert with 0, 50
                    _765 = mem[(32 * idx) + 160]
                    mem[mem[64] + 4] = mem[(32 * idx) + 172 len 20]
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_765)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _786 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if t + eth.balance(_712) > !mem[_786]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = t + eth.balance(_712) + mem[_786]
                    continue 
            if t < s:
                revert with 0, 17
            return t - s, 0, ext_call.return_data[0]
        if uint32(call.func_hash) >> 224 != unknown_0x839006f2(?????):
            if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return owner
            require unknown_0xd1d0ff49(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 32
            if 1 > !(Mask(96, 0, arg1) >> 160):
                revert with 0, 17
            if address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d) and (Mask(96, 0, arg1) >> 160) + 1 > -1 / address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d):
                revert with 0, 17
            require ext_code.size(address(address(arg1) xor address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d) + (Mask(96, 0, arg1) >> 160 * address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d))))
            if Mask(96, 0, arg1) >> 160 < block.timestamp:
                staticcall address(address(arg1) xor address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d) + (Mask(96, 0, arg1) >> 160 * address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d))).0xf1a392da with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > Mask(96, 0, arg1) >> 160:
                    revert with 0, 'expired'
            call address(address(arg1) xor address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d) + (Mask(96, 0, arg1) >> 160 * address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d))).0x4641257d with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
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
