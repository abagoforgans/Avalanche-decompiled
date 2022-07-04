contract main {




// =====================  Runtime code  =====================


#
#  - _fallback()
#
const VERSION = 5


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

function sub_d1d0ff49(?) {
    require calldata.size - 4 >= 32
    if 1 > !(Mask(96, 0, arg1) >> 160):
        revert with 0, 17
    if address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d) and (Mask(96, 0, arg1) >> 160) + 1 > -1 / address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d):
        revert with 0, 17
    require ext_code.size(address(address(arg1) xor address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d) + (Mask(96, 0, arg1) >> 160 * address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d))))
    if Mask(96, 0, arg1) >> 160 < block.timestamp:
        staticcall address(address(arg1) xor address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d) + (Mask(96, 0, arg1) >> 160 * address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d))).lastHarvest() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > Mask(96, 0, arg1) >> 160:
            revert with 0, 'expired'
    call address(address(arg1) xor address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d) + (Mask(96, 0, arg1) >> 160 * address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d))).harvest() with:
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
        staticcall address(address(arg1) xor address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d) + (Mask(96, 0, arg1) >> 160 * address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d))).lastHarvest() with:
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
        staticcall address(address(arg1) xor address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d) + (Mask(96, 0, arg1) >> 160 * address(msg.sender xor 0xae5ac3c49a5d5c88ae551608cae0d57b636c125d))).lastHarvest() with:
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

function sub_7577b21d(?) {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    mem[96] = 3
    mem[128 len 96] = call.data[calldata.size len 96]
    mem[128] = this.address
    if msg.sender == this.address:
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).getPricePerFullShare() with:
                gas gas_remaining wei
        mem[224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 224] = 0
        mem[ceil32(return_data.size) + 256] = 96
        idx = 0
        s = 0
        while idx < 3:
            if idx >= 3:
                revert with 0, 50
            if not mem[(32 * idx) + 140 len 20]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= 3:
                revert with 0, 50
            if s > !eth.balance(mem[(32 * idx) + 128]):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + eth.balance(mem[(32 * idx) + 128])
            continue 
        mem[ceil32(return_data.size) + 288] = s
        if ('cd', 36).length > test266151307():
            revert with 0, 65
        mem[ceil32(return_data.size) + 352] = ('cd', 36).length
        mem[64] = ceil32(return_data.size) + (32 * ('cd', 36).length) + 384
        if not ('cd', 36).length:
            idx = 0
            while idx < ('cd', 36).length:
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                _1145 = mem[96]
                s = 0
                t = 0
                while s < _1145:
                    if s >= mem[96]:
                        revert with 0, 50
                    if not mem[(32 * s) + 140 len 20]:
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = t
                        continue 
                    if s >= mem[96]:
                        revert with 0, 50
                    _1182 = mem[(32 * s) + 128]
                    mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_1182)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1200 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if t > !mem[_1200]:
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t + mem[_1200]
                    continue 
                if idx >= mem[ceil32(return_data.size) + 352]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(return_data.size) + 384] = t
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[ceil32(return_data.size) + 320] = ceil32(return_data.size) + 352
            mem[mem[64]] = 0xaf210a100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(cd[4])
            require ext_code.size(0xeae4cb5741b56133a8c3fb2afd52aa67ccd6fc29)
            call 0xeae4cb5741b56133a8c3fb2afd52aa67ccd6fc29.doHardWork(address arg1) with:
                 gas gas_remaining wei
                args address(cd[4])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if gas_remaining < gas_remaining:
                revert with 0, 17
            _784 = mem[64]
            mem[64] = mem[64] + 64
            mem[_784] = 0
            mem[_784 + 32] = 96
            _785 = mem[64]
            mem[64] = mem[64] + 64
            idx = 0
            s = 0
            while idx < mem[96]:
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
                if s > !eth.balance(mem[(32 * idx) + 128]):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + eth.balance(mem[(32 * idx) + 128])
                continue 
            mem[_785] = s
            if ('cd', 36).length > test266151307():
                revert with 0, 65
            _1180 = mem[64]
            mem[mem[64]] = ('cd', 36).length
            mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
            if not ('cd', 36).length:
                idx = 0
                while idx < ('cd', 36).length:
                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                    _1786 = mem[96]
                    s = 0
                    t = 0
                    while s < _1786:
                        if s >= mem[96]:
                            revert with 0, 50
                        if not mem[(32 * s) + 140 len 20]:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t
                            continue 
                        if s >= mem[96]:
                            revert with 0, 50
                        _1920 = mem[(32 * s) + 128]
                        mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_1920)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1978 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t > !mem[_1978]:
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = t + mem[_1978]
                        continue 
                    if idx >= mem[_1180]:
                        revert with 0, 50
                    mem[(32 * idx) + _1180 + 32] = t
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[_785 + 32] = _1180
                _1496 = mem[ceil32(return_data.size) + 288]
                _1497 = mem[_785]
                if mem[_785] < mem[ceil32(return_data.size) + 288]:
                    revert with 0, 17
                _1513 = mem[ceil32(return_data.size) + 320]
                _1528 = mem[_1180]
                if mem[_1180] > test266151307():
                    revert with 0, 65
                _1536 = mem[64]
                mem[mem[64]] = mem[_1180]
                mem[64] = mem[64] + (32 * _1528) + 32
                if not _1528:
                    _1784 = mem[_1180]
                    idx = 0
                    while idx < _1784:
                        if idx >= mem[_1513]:
                            revert with 0, 50
                        if idx >= mem[_1180]:
                            revert with 0, 50
                        if mem[(32 * idx) + _1180 + 32] < mem[(32 * idx) + _1513 + 32]:
                            revert with 0, 17
                        if idx >= mem[_1536]:
                            revert with 0, 50
                        mem[(32 * idx) + _1536 + 32] = mem[(32 * idx) + _1180 + 32] - mem[(32 * idx) + _1513 + 32]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = _1497 - _1496
                    mem[mem[64] + 32] = 128
                    _1936 = mem[_1536]
                    mem[mem[64] + 128] = mem[_1536]
                    mem[mem[64] + 160 len 32 * _1936] = mem[_1536 + 32 len 32 * _1936]
                    mem[mem[64] + 64] = 0
                    mem[mem[64] + 96] = ext_call.return_data[0]
                    return _1497 - _1496, 128, 0, ext_call.return_data[0], mem[mem[64] + 128 len (32 * _1936) + 32]
                mem[_1536 + 32 len 32 * _1528] = call.data[calldata.size len 32 * _1528]
                _1785 = mem[_1180]
                idx = 0
                while idx < _1785:
                    if idx >= mem[_1513]:
                        revert with 0, 50
                    if idx >= mem[_1180]:
                        revert with 0, 50
                    if mem[(32 * idx) + _1180 + 32] < mem[(32 * idx) + _1513 + 32]:
                        revert with 0, 17
                    if idx >= mem[_1536]:
                        revert with 0, 50
                    mem[(32 * idx) + _1536 + 32] = mem[(32 * idx) + _1180 + 32] - mem[(32 * idx) + _1513 + 32]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[mem[64]] = _1497 - _1496
                mem[mem[64] + 32] = 128
                _1937 = mem[_1536]
                mem[mem[64] + 128] = mem[_1536]
                mem[mem[64] + 160 len 32 * _1937] = mem[_1536 + 32 len 32 * _1937]
                mem[mem[64] + 64] = 0
                mem[mem[64] + 96] = ext_call.return_data[0]
                return _1497 - _1496, 128, 0, ext_call.return_data[0], mem[mem[64] + 128 len (32 * _1937) + 32]
            mem[_1180 + 32 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
            idx = 0
            while idx < ('cd', 36).length:
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                _1789 = mem[96]
                s = 0
                t = 0
                while s < _1789:
                    if s >= mem[96]:
                        revert with 0, 50
                    if not mem[(32 * s) + 140 len 20]:
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = t
                        continue 
                    if s >= mem[96]:
                        revert with 0, 50
                    _1922 = mem[(32 * s) + 128]
                    mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_1922)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1981 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if t > !mem[_1981]:
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t + mem[_1981]
                    continue 
                if idx >= mem[_1180]:
                    revert with 0, 50
                mem[(32 * idx) + _1180 + 32] = t
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[_785 + 32] = _1180
            _1498 = mem[ceil32(return_data.size) + 288]
            _1499 = mem[_785]
            if mem[_785] < mem[ceil32(return_data.size) + 288]:
                revert with 0, 17
            _1515 = mem[ceil32(return_data.size) + 320]
            _1529 = mem[_1180]
            if mem[_1180] > test266151307():
                revert with 0, 65
            _1537 = mem[64]
            mem[mem[64]] = mem[_1180]
            mem[64] = mem[64] + (32 * _1529) + 32
            if not _1529:
                _1787 = mem[_1180]
                idx = 0
                while idx < _1787:
                    if idx >= mem[_1515]:
                        revert with 0, 50
                    if idx >= mem[_1180]:
                        revert with 0, 50
                    if mem[(32 * idx) + _1180 + 32] < mem[(32 * idx) + _1515 + 32]:
                        revert with 0, 17
                    if idx >= mem[_1537]:
                        revert with 0, 50
                    mem[(32 * idx) + _1537 + 32] = mem[(32 * idx) + _1180 + 32] - mem[(32 * idx) + _1515 + 32]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[mem[64]] = _1499 - _1498
                mem[mem[64] + 32] = 128
                _1939 = mem[_1537]
                mem[mem[64] + 128] = mem[_1537]
                mem[mem[64] + 160 len 32 * _1939] = mem[_1537 + 32 len 32 * _1939]
                mem[mem[64] + 64] = 0
                mem[mem[64] + 96] = ext_call.return_data[0]
                return _1499 - _1498, 128, 0, ext_call.return_data[0], mem[mem[64] + 128 len (32 * _1939) + 32]
            mem[_1537 + 32 len 32 * _1529] = call.data[calldata.size len 32 * _1529]
            _1788 = mem[_1180]
            idx = 0
            while idx < _1788:
                if idx >= mem[_1515]:
                    revert with 0, 50
                if idx >= mem[_1180]:
                    revert with 0, 50
                if mem[(32 * idx) + _1180 + 32] < mem[(32 * idx) + _1515 + 32]:
                    revert with 0, 17
                if idx >= mem[_1537]:
                    revert with 0, 50
                mem[(32 * idx) + _1537 + 32] = mem[(32 * idx) + _1180 + 32] - mem[(32 * idx) + _1515 + 32]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = _1499 - _1498
            mem[mem[64] + 32] = 128
            _1940 = mem[_1537]
            mem[mem[64] + 128] = mem[_1537]
            mem[mem[64] + 160 len 32 * _1940] = mem[_1537 + 32 len 32 * _1940]
            mem[mem[64] + 64] = 0
            mem[mem[64] + 96] = ext_call.return_data[0]
            return _1499 - _1498, 128, 0, ext_call.return_data[0], mem[mem[64] + 128 len (32 * _1940) + 32]
        mem[ceil32(return_data.size) + 384 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            _1147 = mem[96]
            s = 0
            t = 0
            while s < _1147:
                if s >= mem[96]:
                    revert with 0, 50
                if not mem[(32 * s) + 140 len 20]:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t
                    continue 
                if s >= mem[96]:
                    revert with 0, 50
                _1186 = mem[(32 * s) + 128]
                mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_1186)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1201 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if t > !mem[_1201]:
                    revert with 0, 17
                if s == -1:
                    revert with 0, 17
                s = s + 1
                t = t + mem[_1201]
                continue 
            if idx >= mem[ceil32(return_data.size) + 352]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(return_data.size) + 384] = t
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[ceil32(return_data.size) + 320] = ceil32(return_data.size) + 352
        mem[mem[64]] = 0xaf210a100000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(cd[4])
        require ext_code.size(0xeae4cb5741b56133a8c3fb2afd52aa67ccd6fc29)
        call 0xeae4cb5741b56133a8c3fb2afd52aa67ccd6fc29.doHardWork(address arg1) with:
             gas gas_remaining wei
            args address(cd[4])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if gas_remaining < gas_remaining:
            revert with 0, 17
        _786 = mem[64]
        mem[64] = mem[64] + 64
        mem[_786] = 0
        mem[_786 + 32] = 96
        _787 = mem[64]
        mem[64] = mem[64] + 64
        idx = 0
        s = 0
        while idx < mem[96]:
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
            if s > !eth.balance(mem[(32 * idx) + 128]):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + eth.balance(mem[(32 * idx) + 128])
            continue 
        mem[_787] = s
        if ('cd', 36).length > test266151307():
            revert with 0, 65
        _1184 = mem[64]
        mem[mem[64]] = ('cd', 36).length
        mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
        if not ('cd', 36).length:
            idx = 0
            while idx < ('cd', 36).length:
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                _1792 = mem[96]
                s = 0
                t = 0
                while s < _1792:
                    if s >= mem[96]:
                        revert with 0, 50
                    if not mem[(32 * s) + 140 len 20]:
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = t
                        continue 
                    if s >= mem[96]:
                        revert with 0, 50
                    _1924 = mem[(32 * s) + 128]
                    mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_1924)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1984 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if t > !mem[_1984]:
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t + mem[_1984]
                    continue 
                if idx >= mem[_1184]:
                    revert with 0, 50
                mem[(32 * idx) + _1184 + 32] = t
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[_787 + 32] = _1184
            _1500 = mem[ceil32(return_data.size) + 288]
            _1501 = mem[_787]
            if mem[_787] < mem[ceil32(return_data.size) + 288]:
                revert with 0, 17
            _1517 = mem[ceil32(return_data.size) + 320]
            _1530 = mem[_1184]
            if mem[_1184] > test266151307():
                revert with 0, 65
            _1538 = mem[64]
            mem[mem[64]] = mem[_1184]
            mem[64] = mem[64] + (32 * _1530) + 32
            if not _1530:
                _1790 = mem[_1184]
                idx = 0
                while idx < _1790:
                    if idx >= mem[_1517]:
                        revert with 0, 50
                    if idx >= mem[_1184]:
                        revert with 0, 50
                    if mem[(32 * idx) + _1184 + 32] < mem[(32 * idx) + _1517 + 32]:
                        revert with 0, 17
                    if idx >= mem[_1538]:
                        revert with 0, 50
                    mem[(32 * idx) + _1538 + 32] = mem[(32 * idx) + _1184 + 32] - mem[(32 * idx) + _1517 + 32]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[mem[64]] = _1501 - _1500
                mem[mem[64] + 32] = 128
                _1942 = mem[_1538]
                mem[mem[64] + 128] = mem[_1538]
                mem[mem[64] + 160 len 32 * _1942] = mem[_1538 + 32 len 32 * _1942]
                mem[mem[64] + 64] = 0
                mem[mem[64] + 96] = ext_call.return_data[0]
                return _1501 - _1500, 128, 0, ext_call.return_data[0], mem[mem[64] + 128 len (32 * _1942) + 32]
            mem[_1538 + 32 len 32 * _1530] = call.data[calldata.size len 32 * _1530]
            _1791 = mem[_1184]
            idx = 0
            while idx < _1791:
                if idx >= mem[_1517]:
                    revert with 0, 50
                if idx >= mem[_1184]:
                    revert with 0, 50
                if mem[(32 * idx) + _1184 + 32] < mem[(32 * idx) + _1517 + 32]:
                    revert with 0, 17
                if idx >= mem[_1538]:
                    revert with 0, 50
                mem[(32 * idx) + _1538 + 32] = mem[(32 * idx) + _1184 + 32] - mem[(32 * idx) + _1517 + 32]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = _1501 - _1500
            mem[mem[64] + 32] = 128
            _1943 = mem[_1538]
            mem[mem[64] + 128] = mem[_1538]
            mem[mem[64] + 160 len 32 * _1943] = mem[_1538 + 32 len 32 * _1943]
            mem[mem[64] + 64] = 0
            mem[mem[64] + 96] = ext_call.return_data[0]
            return _1501 - _1500, 128, 0, ext_call.return_data[0], mem[mem[64] + 128 len (32 * _1943) + 32]
        mem[_1184 + 32 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            _1795 = mem[96]
            s = 0
            t = 0
            while s < _1795:
                if s >= mem[96]:
                    revert with 0, 50
                if not mem[(32 * s) + 140 len 20]:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t
                    continue 
                if s >= mem[96]:
                    revert with 0, 50
                _1926 = mem[(32 * s) + 128]
                mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_1926)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1987 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if t > !mem[_1987]:
                    revert with 0, 17
                if s == -1:
                    revert with 0, 17
                s = s + 1
                t = t + mem[_1987]
                continue 
            if idx >= mem[_1184]:
                revert with 0, 50
            mem[(32 * idx) + _1184 + 32] = t
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[_787 + 32] = _1184
        _1502 = mem[ceil32(return_data.size) + 288]
        _1503 = mem[_787]
        if mem[_787] < mem[ceil32(return_data.size) + 288]:
            revert with 0, 17
        _1519 = mem[ceil32(return_data.size) + 320]
        _1531 = mem[_1184]
        if mem[_1184] > test266151307():
            revert with 0, 65
        _1539 = mem[64]
        mem[mem[64]] = mem[_1184]
        mem[64] = mem[64] + (32 * _1531) + 32
        if not _1531:
            _1793 = mem[_1184]
            idx = 0
            while idx < _1793:
                if idx >= mem[_1519]:
                    revert with 0, 50
                if idx >= mem[_1184]:
                    revert with 0, 50
                if mem[(32 * idx) + _1184 + 32] < mem[(32 * idx) + _1519 + 32]:
                    revert with 0, 17
                if idx >= mem[_1539]:
                    revert with 0, 50
                mem[(32 * idx) + _1539 + 32] = mem[(32 * idx) + _1184 + 32] - mem[(32 * idx) + _1519 + 32]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = _1503 - _1502
            mem[mem[64] + 32] = 128
            _1945 = mem[_1539]
            mem[mem[64] + 128] = mem[_1539]
            mem[mem[64] + 160 len 32 * _1945] = mem[_1539 + 32 len 32 * _1945]
            mem[mem[64] + 64] = 0
            mem[mem[64] + 96] = ext_call.return_data[0]
            return _1503 - _1502, 128, 0, ext_call.return_data[0], mem[mem[64] + 128 len (32 * _1945) + 32]
        mem[_1539 + 32 len 32 * _1531] = call.data[calldata.size len 32 * _1531]
        _1794 = mem[_1184]
        idx = 0
        while idx < _1794:
            if idx >= mem[_1519]:
                revert with 0, 50
            if idx >= mem[_1184]:
                revert with 0, 50
            if mem[(32 * idx) + _1184 + 32] < mem[(32 * idx) + _1519 + 32]:
                revert with 0, 17
            if idx >= mem[_1539]:
                revert with 0, 50
            mem[(32 * idx) + _1539 + 32] = mem[(32 * idx) + _1184 + 32] - mem[(32 * idx) + _1519 + 32]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = _1503 - _1502
        mem[mem[64] + 32] = 128
        _1946 = mem[_1539]
        mem[mem[64] + 128] = mem[_1539]
        mem[mem[64] + 160 len 32 * _1946] = mem[_1539 + 32 len 32 * _1946]
        mem[mem[64] + 64] = 0
        mem[mem[64] + 96] = ext_call.return_data[0]
        return _1503 - _1502, 128, 0, ext_call.return_data[0], mem[mem[64] + 128 len (32 * _1946) + 32]
    mem[160] = msg.sender
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).getPricePerFullShare() with:
            gas gas_remaining wei
    mem[224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 224] = 0
    mem[ceil32(return_data.size) + 256] = 96
    idx = 0
    s = 0
    while idx < 3:
        if idx >= 3:
            revert with 0, 50
        if not mem[(32 * idx) + 140 len 20]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if idx >= 3:
            revert with 0, 50
        if s > !eth.balance(mem[(32 * idx) + 128]):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + eth.balance(mem[(32 * idx) + 128])
        continue 
    mem[ceil32(return_data.size) + 288] = s
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    mem[ceil32(return_data.size) + 352] = ('cd', 36).length
    mem[64] = ceil32(return_data.size) + (32 * ('cd', 36).length) + 384
    if not ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            _1149 = mem[96]
            s = 0
            t = 0
            while s < _1149:
                if s >= mem[96]:
                    revert with 0, 50
                if not mem[(32 * s) + 140 len 20]:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t
                    continue 
                if s >= mem[96]:
                    revert with 0, 50
                _1190 = mem[(32 * s) + 128]
                mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_1190)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1202 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if t > !mem[_1202]:
                    revert with 0, 17
                if s == -1:
                    revert with 0, 17
                s = s + 1
                t = t + mem[_1202]
                continue 
            if idx >= mem[ceil32(return_data.size) + 352]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(return_data.size) + 384] = t
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[ceil32(return_data.size) + 320] = ceil32(return_data.size) + 352
        mem[mem[64]] = 0xaf210a100000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(cd[4])
        require ext_code.size(0xeae4cb5741b56133a8c3fb2afd52aa67ccd6fc29)
        call 0xeae4cb5741b56133a8c3fb2afd52aa67ccd6fc29.doHardWork(address arg1) with:
             gas gas_remaining wei
            args address(cd[4])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if gas_remaining < gas_remaining:
            revert with 0, 17
        _788 = mem[64]
        mem[64] = mem[64] + 64
        mem[_788] = 0
        mem[_788 + 32] = 96
        _789 = mem[64]
        mem[64] = mem[64] + 64
        idx = 0
        s = 0
        while idx < mem[96]:
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
            if s > !eth.balance(mem[(32 * idx) + 128]):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + eth.balance(mem[(32 * idx) + 128])
            continue 
        mem[_789] = s
        if ('cd', 36).length > test266151307():
            revert with 0, 65
        _1188 = mem[64]
        mem[mem[64]] = ('cd', 36).length
        mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
        if not ('cd', 36).length:
            idx = 0
            while idx < ('cd', 36).length:
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                _1798 = mem[96]
                s = 0
                t = 0
                while s < _1798:
                    if s >= mem[96]:
                        revert with 0, 50
                    if not mem[(32 * s) + 140 len 20]:
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = t
                        continue 
                    if s >= mem[96]:
                        revert with 0, 50
                    _1928 = mem[(32 * s) + 128]
                    mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_1928)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1990 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if t > !mem[_1990]:
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t + mem[_1990]
                    continue 
                if idx >= mem[_1188]:
                    revert with 0, 50
                mem[(32 * idx) + _1188 + 32] = t
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[_789 + 32] = _1188
            _1504 = mem[ceil32(return_data.size) + 288]
            _1505 = mem[_789]
            if mem[_789] < mem[ceil32(return_data.size) + 288]:
                revert with 0, 17
            _1521 = mem[ceil32(return_data.size) + 320]
            _1532 = mem[_1188]
            if mem[_1188] > test266151307():
                revert with 0, 65
            _1540 = mem[64]
            mem[mem[64]] = mem[_1188]
            mem[64] = mem[64] + (32 * _1532) + 32
            if not _1532:
                _1796 = mem[_1188]
                idx = 0
                while idx < _1796:
                    if idx >= mem[_1521]:
                        revert with 0, 50
                    if idx >= mem[_1188]:
                        revert with 0, 50
                    if mem[(32 * idx) + _1188 + 32] < mem[(32 * idx) + _1521 + 32]:
                        revert with 0, 17
                    if idx >= mem[_1540]:
                        revert with 0, 50
                    mem[(32 * idx) + _1540 + 32] = mem[(32 * idx) + _1188 + 32] - mem[(32 * idx) + _1521 + 32]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[mem[64]] = _1505 - _1504
                mem[mem[64] + 32] = 128
                _1948 = mem[_1540]
                mem[mem[64] + 128] = mem[_1540]
                mem[mem[64] + 160 len 32 * _1948] = mem[_1540 + 32 len 32 * _1948]
                mem[mem[64] + 64] = 0
                mem[mem[64] + 96] = ext_call.return_data[0]
                return _1505 - _1504, 128, 0, ext_call.return_data[0], mem[mem[64] + 128 len (32 * _1948) + 32]
            mem[_1540 + 32 len 32 * _1532] = call.data[calldata.size len 32 * _1532]
            _1797 = mem[_1188]
            idx = 0
            while idx < _1797:
                if idx >= mem[_1521]:
                    revert with 0, 50
                if idx >= mem[_1188]:
                    revert with 0, 50
                if mem[(32 * idx) + _1188 + 32] < mem[(32 * idx) + _1521 + 32]:
                    revert with 0, 17
                if idx >= mem[_1540]:
                    revert with 0, 50
                mem[(32 * idx) + _1540 + 32] = mem[(32 * idx) + _1188 + 32] - mem[(32 * idx) + _1521 + 32]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = _1505 - _1504
            mem[mem[64] + 32] = 128
            _1949 = mem[_1540]
            mem[mem[64] + 128] = mem[_1540]
            mem[mem[64] + 160 len 32 * _1949] = mem[_1540 + 32 len 32 * _1949]
            mem[mem[64] + 64] = 0
            mem[mem[64] + 96] = ext_call.return_data[0]
            return _1505 - _1504, 128, 0, ext_call.return_data[0], mem[mem[64] + 128 len (32 * _1949) + 32]
        mem[_1188 + 32 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            _1801 = mem[96]
            s = 0
            t = 0
            while s < _1801:
                if s >= mem[96]:
                    revert with 0, 50
                if not mem[(32 * s) + 140 len 20]:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t
                    continue 
                if s >= mem[96]:
                    revert with 0, 50
                _1930 = mem[(32 * s) + 128]
                mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_1930)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1993 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if t > !mem[_1993]:
                    revert with 0, 17
                if s == -1:
                    revert with 0, 17
                s = s + 1
                t = t + mem[_1993]
                continue 
            if idx >= mem[_1188]:
                revert with 0, 50
            mem[(32 * idx) + _1188 + 32] = t
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[_789 + 32] = _1188
        _1506 = mem[ceil32(return_data.size) + 288]
        _1507 = mem[_789]
        if mem[_789] < mem[ceil32(return_data.size) + 288]:
            revert with 0, 17
        _1523 = mem[ceil32(return_data.size) + 320]
        _1533 = mem[_1188]
        if mem[_1188] > test266151307():
            revert with 0, 65
        _1541 = mem[64]
        mem[mem[64]] = mem[_1188]
        mem[64] = mem[64] + (32 * _1533) + 32
        if not _1533:
            _1799 = mem[_1188]
            idx = 0
            while idx < _1799:
                if idx >= mem[_1523]:
                    revert with 0, 50
                if idx >= mem[_1188]:
                    revert with 0, 50
                if mem[(32 * idx) + _1188 + 32] < mem[(32 * idx) + _1523 + 32]:
                    revert with 0, 17
                if idx >= mem[_1541]:
                    revert with 0, 50
                mem[(32 * idx) + _1541 + 32] = mem[(32 * idx) + _1188 + 32] - mem[(32 * idx) + _1523 + 32]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = _1507 - _1506
            mem[mem[64] + 32] = 128
            _1951 = mem[_1541]
            mem[mem[64] + 128] = mem[_1541]
            mem[mem[64] + 160 len 32 * _1951] = mem[_1541 + 32 len 32 * _1951]
            mem[mem[64] + 64] = 0
            mem[mem[64] + 96] = ext_call.return_data[0]
            return _1507 - _1506, 128, 0, ext_call.return_data[0], mem[mem[64] + 128 len (32 * _1951) + 32]
        mem[_1541 + 32 len 32 * _1533] = call.data[calldata.size len 32 * _1533]
        _1800 = mem[_1188]
        idx = 0
        while idx < _1800:
            if idx >= mem[_1523]:
                revert with 0, 50
            if idx >= mem[_1188]:
                revert with 0, 50
            if mem[(32 * idx) + _1188 + 32] < mem[(32 * idx) + _1523 + 32]:
                revert with 0, 17
            if idx >= mem[_1541]:
                revert with 0, 50
            mem[(32 * idx) + _1541 + 32] = mem[(32 * idx) + _1188 + 32] - mem[(32 * idx) + _1523 + 32]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = _1507 - _1506
        mem[mem[64] + 32] = 128
        _1952 = mem[_1541]
        mem[mem[64] + 128] = mem[_1541]
        mem[mem[64] + 160 len 32 * _1952] = mem[_1541 + 32 len 32 * _1952]
        mem[mem[64] + 64] = 0
        mem[mem[64] + 96] = ext_call.return_data[0]
        return _1507 - _1506, 128, 0, ext_call.return_data[0], mem[mem[64] + 128 len (32 * _1952) + 32]
    mem[ceil32(return_data.size) + 384 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
    idx = 0
    while idx < ('cd', 36).length:
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        _1151 = mem[96]
        s = 0
        t = 0
        while s < _1151:
            if s >= mem[96]:
                revert with 0, 50
            if not mem[(32 * s) + 140 len 20]:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                t = t
                continue 
            if s >= mem[96]:
                revert with 0, 50
            _1194 = mem[(32 * s) + 128]
            mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(_1194)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1203 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if t > !mem[_1203]:
                revert with 0, 17
            if s == -1:
                revert with 0, 17
            s = s + 1
            t = t + mem[_1203]
            continue 
        if idx >= mem[ceil32(return_data.size) + 352]:
            revert with 0, 50
        mem[(32 * idx) + ceil32(return_data.size) + 384] = t
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[ceil32(return_data.size) + 320] = ceil32(return_data.size) + 352
    mem[mem[64]] = 0xaf210a100000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = address(cd[4])
    require ext_code.size(0xeae4cb5741b56133a8c3fb2afd52aa67ccd6fc29)
    call 0xeae4cb5741b56133a8c3fb2afd52aa67ccd6fc29.doHardWork(address arg1) with:
         gas gas_remaining wei
        args address(cd[4])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if gas_remaining < gas_remaining:
        revert with 0, 17
    _790 = mem[64]
    mem[64] = mem[64] + 64
    mem[_790] = 0
    mem[_790 + 32] = 96
    _791 = mem[64]
    mem[64] = mem[64] + 64
    idx = 0
    s = 0
    while idx < mem[96]:
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
        if s > !eth.balance(mem[(32 * idx) + 128]):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + eth.balance(mem[(32 * idx) + 128])
        continue 
    mem[_791] = s
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    _1192 = mem[64]
    mem[mem[64]] = ('cd', 36).length
    mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
    if not ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            _1804 = mem[96]
            s = 0
            t = 0
            while s < _1804:
                if s >= mem[96]:
                    revert with 0, 50
                if not mem[(32 * s) + 140 len 20]:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t
                    continue 
                if s >= mem[96]:
                    revert with 0, 50
                _1932 = mem[(32 * s) + 128]
                mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_1932)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1996 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if t > !mem[_1996]:
                    revert with 0, 17
                if s == -1:
                    revert with 0, 17
                s = s + 1
                t = t + mem[_1996]
                continue 
            if idx >= mem[_1192]:
                revert with 0, 50
            mem[(32 * idx) + _1192 + 32] = t
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[_791 + 32] = _1192
        _1508 = mem[ceil32(return_data.size) + 288]
        _1509 = mem[_791]
        if mem[_791] < mem[ceil32(return_data.size) + 288]:
            revert with 0, 17
        _1525 = mem[ceil32(return_data.size) + 320]
        _1534 = mem[_1192]
        if mem[_1192] > test266151307():
            revert with 0, 65
        _1542 = mem[64]
        mem[mem[64]] = mem[_1192]
        mem[64] = mem[64] + (32 * _1534) + 32
        if not _1534:
            _1802 = mem[_1192]
            idx = 0
            while idx < _1802:
                if idx >= mem[_1525]:
                    revert with 0, 50
                if idx >= mem[_1192]:
                    revert with 0, 50
                if mem[(32 * idx) + _1192 + 32] < mem[(32 * idx) + _1525 + 32]:
                    revert with 0, 17
                if idx >= mem[_1542]:
                    revert with 0, 50
                mem[(32 * idx) + _1542 + 32] = mem[(32 * idx) + _1192 + 32] - mem[(32 * idx) + _1525 + 32]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = _1509 - _1508
            mem[mem[64] + 32] = 128
            _1954 = mem[_1542]
            mem[mem[64] + 128] = mem[_1542]
            mem[mem[64] + 160 len 32 * _1954] = mem[_1542 + 32 len 32 * _1954]
            mem[mem[64] + 64] = 0
            mem[mem[64] + 96] = ext_call.return_data[0]
            return _1509 - _1508, 128, 0, ext_call.return_data[0], mem[mem[64] + 128 len (32 * _1954) + 32]
        mem[_1542 + 32 len 32 * _1534] = call.data[calldata.size len 32 * _1534]
        _1803 = mem[_1192]
        idx = 0
        while idx < _1803:
            if idx >= mem[_1525]:
                revert with 0, 50
            if idx >= mem[_1192]:
                revert with 0, 50
            if mem[(32 * idx) + _1192 + 32] < mem[(32 * idx) + _1525 + 32]:
                revert with 0, 17
            if idx >= mem[_1542]:
                revert with 0, 50
            mem[(32 * idx) + _1542 + 32] = mem[(32 * idx) + _1192 + 32] - mem[(32 * idx) + _1525 + 32]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = _1509 - _1508
        mem[mem[64] + 32] = 128
        _1955 = mem[_1542]
        mem[mem[64] + 128] = mem[_1542]
        mem[mem[64] + 160 len 32 * _1955] = mem[_1542 + 32 len 32 * _1955]
        mem[mem[64] + 64] = 0
        mem[mem[64] + 96] = ext_call.return_data[0]
        return _1509 - _1508, 128, 0, ext_call.return_data[0], mem[mem[64] + 128 len (32 * _1955) + 32]
    mem[_1192 + 32 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
    idx = 0
    while idx < ('cd', 36).length:
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        _1807 = mem[96]
        s = 0
        t = 0
        while s < _1807:
            if s >= mem[96]:
                revert with 0, 50
            if not mem[(32 * s) + 140 len 20]:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                t = t
                continue 
            if s >= mem[96]:
                revert with 0, 50
            _1934 = mem[(32 * s) + 128]
            mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(_1934)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1999 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if t > !mem[_1999]:
                revert with 0, 17
            if s == -1:
                revert with 0, 17
            s = s + 1
            t = t + mem[_1999]
            continue 
        if idx >= mem[_1192]:
            revert with 0, 50
        mem[(32 * idx) + _1192 + 32] = t
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[_791 + 32] = _1192
    _1510 = mem[ceil32(return_data.size) + 288]
    _1511 = mem[_791]
    if mem[_791] < mem[ceil32(return_data.size) + 288]:
        revert with 0, 17
    _1527 = mem[ceil32(return_data.size) + 320]
    _1535 = mem[_1192]
    if mem[_1192] > test266151307():
        revert with 0, 65
    _1543 = mem[64]
    mem[mem[64]] = mem[_1192]
    mem[64] = mem[64] + (32 * _1535) + 32
    if not _1535:
        _1805 = mem[_1192]
        idx = 0
        while idx < _1805:
            if idx >= mem[_1527]:
                revert with 0, 50
            if idx >= mem[_1192]:
                revert with 0, 50
            if mem[(32 * idx) + _1192 + 32] < mem[(32 * idx) + _1527 + 32]:
                revert with 0, 17
            if idx >= mem[_1543]:
                revert with 0, 50
            mem[(32 * idx) + _1543 + 32] = mem[(32 * idx) + _1192 + 32] - mem[(32 * idx) + _1527 + 32]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = _1511 - _1510
        mem[mem[64] + 32] = 128
        _1957 = mem[_1543]
        mem[mem[64] + 128] = mem[_1543]
        mem[mem[64] + 160 len 32 * _1957] = mem[_1543 + 32 len 32 * _1957]
        mem[mem[64] + 64] = 0
        mem[mem[64] + 96] = ext_call.return_data[0]
        return _1511 - _1510, 128, 0, ext_call.return_data[0], mem[mem[64] + 128 len (32 * _1957) + 32]
    mem[_1543 + 32 len 32 * _1535] = call.data[calldata.size len 32 * _1535]
    _1806 = mem[_1192]
    idx = 0
    while idx < _1806:
        if idx >= mem[_1527]:
            revert with 0, 50
        if idx >= mem[_1192]:
            revert with 0, 50
        if mem[(32 * idx) + _1192 + 32] < mem[(32 * idx) + _1527 + 32]:
            revert with 0, 17
        if idx >= mem[_1543]:
            revert with 0, 50
        mem[(32 * idx) + _1543 + 32] = mem[(32 * idx) + _1192 + 32] - mem[(32 * idx) + _1527 + 32]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[mem[64]] = _1511 - _1510
    mem[mem[64] + 32] = 128
    _1958 = mem[_1543]
    mem[mem[64] + 128] = mem[_1543]
    mem[mem[64] + 160 len 32 * _1958] = mem[_1543 + 32 len 32 * _1958]
    mem[mem[64] + 64] = 0
    mem[mem[64] + 96] = ext_call.return_data[0]
    return _1511 - _1510, 128, 0, ext_call.return_data[0], mem[mem[64] + 128 len (32 * _1958) + 32]
}

function sub_8d98841b(?) {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    mem[96] = 3
    mem[128 len 96] = call.data[calldata.size len 96]
    mem[128] = this.address
    if msg.sender == this.address:
        mem[224] = 0
        mem[256] = 96
        idx = 0
        s = 0
        while idx < 3:
            if idx >= 3:
                revert with 0, 50
            if not mem[(32 * idx) + 140 len 20]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= 3:
                revert with 0, 50
            if s > !eth.balance(mem[(32 * idx) + 128]):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + eth.balance(mem[(32 * idx) + 128])
            continue 
        mem[288] = s
        if ('cd', 36).length > test266151307():
            revert with 0, 65
        mem[352] = ('cd', 36).length
        mem[64] = (32 * ('cd', 36).length) + 384
        if not ('cd', 36).length:
            idx = 0
            while idx < ('cd', 36).length:
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                _2134 = mem[96]
                s = 0
                t = 0
                while s < _2134:
                    if s >= mem[96]:
                        revert with 0, 50
                    if not mem[(32 * s) + 140 len 20]:
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = t
                        continue 
                    if s >= mem[96]:
                        revert with 0, 50
                    _2188 = mem[(32 * s) + 128]
                    mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_2188)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2212 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if t > !mem[_2212]:
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t + mem[_2212]
                    continue 
                if idx >= mem[352]:
                    revert with 0, 50
                mem[(32 * idx) + 384] = t
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[320] = 352
            mem[mem[64] len 259] = code.data[7529 len 259]
            mem[mem[64] + 259] = address(cd[4])
            create contract with 0 wei
                            code: code.data[7529 len 259], address(cd[4])
            if create.new_address:
                if gas_remaining < 45000:
                    revert with 0, 17
                if 2 >= mem[96]:
                    revert with 0, 50
                mem[192] = address(create.new_address)
                if gas_remaining - 45000 < gas_remaining:
                    revert with 0, 17
                _1497 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1497] = 0
                mem[_1497 + 32] = 96
                _1498 = mem[64]
                mem[64] = mem[64] + 64
                idx = 0
                s = 0
                while idx < mem[96]:
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
                    if s > !eth.balance(mem[(32 * idx) + 128]):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + eth.balance(mem[(32 * idx) + 128])
                    continue 
                mem[_1498] = s
                if ('cd', 36).length > test266151307():
                    revert with 0, 65
                _2186 = mem[64]
                mem[mem[64]] = ('cd', 36).length
                mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
                if not ('cd', 36).length:
                    idx = 0
                    while idx < ('cd', 36).length:
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        _3380 = mem[96]
                        s = 0
                        t = 0
                        while s < _3380:
                            if s >= mem[96]:
                                revert with 0, 50
                            if not mem[(32 * s) + 140 len 20]:
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                t = t
                                continue 
                            if s >= mem[96]:
                                revert with 0, 50
                            _3648 = mem[(32 * s) + 128]
                            mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_3648)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3764 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if t > !mem[_3764]:
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t + mem[_3764]
                            continue 
                        if idx >= mem[_2186]:
                            revert with 0, 50
                        mem[(32 * idx) + _2186 + 32] = t
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[_1498 + 32] = _2186
                    _2800 = mem[288]
                    _2801 = mem[_1498]
                    if mem[_1498] < mem[288]:
                        revert with 0, 17
                    _2833 = mem[320]
                    _2862 = mem[_2186]
                    if mem[_2186] > test266151307():
                        revert with 0, 65
                    _2878 = mem[64]
                    mem[mem[64]] = mem[_2186]
                    mem[64] = mem[64] + (32 * _2862) + 32
                    if not _2862:
                        _3378 = mem[_2186]
                        idx = 0
                        while idx < _3378:
                            if idx >= mem[_2833]:
                                revert with 0, 50
                            if idx >= mem[_2186]:
                                revert with 0, 50
                            if mem[(32 * idx) + _2186 + 32] < mem[(32 * idx) + _2833 + 32]:
                                revert with 0, 17
                            if idx >= mem[_2878]:
                                revert with 0, 50
                            mem[(32 * idx) + _2878 + 32] = mem[(32 * idx) + _2186 + 32] - mem[(32 * idx) + _2833 + 32]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        _3574 = mem[64]
                        mem[mem[64]] = _2801 - _2800
                        mem[mem[64] + 32] = 96
                        _3682 = mem[_2878]
                        mem[mem[64] + 96] = mem[_2878]
                        mem[mem[64] + 128 len 32 * _3682] = mem[_2878 + 32 len 32 * _3682]
                        mem[mem[64] + 64] = -45000
                        return memory
                          from mem[64]
                           len _3574 + (32 * _3682) + -mem[64] + 128
                    mem[_2878 + 32 len 32 * _2862] = call.data[calldata.size len 32 * _2862]
                    _3379 = mem[_2186]
                    idx = 0
                    while idx < _3379:
                        if idx >= mem[_2833]:
                            revert with 0, 50
                        if idx >= mem[_2186]:
                            revert with 0, 50
                        if mem[(32 * idx) + _2186 + 32] < mem[(32 * idx) + _2833 + 32]:
                            revert with 0, 17
                        if idx >= mem[_2878]:
                            revert with 0, 50
                        mem[(32 * idx) + _2878 + 32] = mem[(32 * idx) + _2186 + 32] - mem[(32 * idx) + _2833 + 32]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _3576 = mem[64]
                    mem[mem[64]] = _2801 - _2800
                    mem[mem[64] + 32] = 96
                    _3683 = mem[_2878]
                    mem[mem[64] + 96] = mem[_2878]
                    mem[mem[64] + 128 len 32 * _3683] = mem[_2878 + 32 len 32 * _3683]
                    mem[mem[64] + 64] = -45000
                    return memory
                      from mem[64]
                       len _3576 + (32 * _3683) + -mem[64] + 128
                mem[_2186 + 32 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
                idx = 0
                while idx < ('cd', 36).length:
                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                    _3383 = mem[96]
                    s = 0
                    t = 0
                    while s < _3383:
                        if s >= mem[96]:
                            revert with 0, 50
                        if not mem[(32 * s) + 140 len 20]:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t
                            continue 
                        if s >= mem[96]:
                            revert with 0, 50
                        _3650 = mem[(32 * s) + 128]
                        mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_3650)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3767 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t > !mem[_3767]:
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = t + mem[_3767]
                        continue 
                    if idx >= mem[_2186]:
                        revert with 0, 50
                    mem[(32 * idx) + _2186 + 32] = t
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[_1498 + 32] = _2186
                _2802 = mem[288]
                _2803 = mem[_1498]
                if mem[_1498] < mem[288]:
                    revert with 0, 17
                _2835 = mem[320]
                _2863 = mem[_2186]
                if mem[_2186] > test266151307():
                    revert with 0, 65
                _2879 = mem[64]
                mem[mem[64]] = mem[_2186]
                mem[64] = mem[64] + (32 * _2863) + 32
                if not _2863:
                    _3381 = mem[_2186]
                    idx = 0
                    while idx < _3381:
                        if idx >= mem[_2835]:
                            revert with 0, 50
                        if idx >= mem[_2186]:
                            revert with 0, 50
                        if mem[(32 * idx) + _2186 + 32] < mem[(32 * idx) + _2835 + 32]:
                            revert with 0, 17
                        if idx >= mem[_2879]:
                            revert with 0, 50
                        mem[(32 * idx) + _2879 + 32] = mem[(32 * idx) + _2186 + 32] - mem[(32 * idx) + _2835 + 32]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _3579 = mem[64]
                    mem[mem[64]] = _2803 - _2802
                    mem[mem[64] + 32] = 96
                    _3685 = mem[_2879]
                    mem[mem[64] + 96] = mem[_2879]
                    mem[mem[64] + 128 len 32 * _3685] = mem[_2879 + 32 len 32 * _3685]
                    mem[mem[64] + 64] = -45000
                    return memory
                      from mem[64]
                       len _3579 + (32 * _3685) + -mem[64] + 128
                mem[_2879 + 32 len 32 * _2863] = call.data[calldata.size len 32 * _2863]
                _3382 = mem[_2186]
                idx = 0
                while idx < _3382:
                    if idx >= mem[_2835]:
                        revert with 0, 50
                    if idx >= mem[_2186]:
                        revert with 0, 50
                    if mem[(32 * idx) + _2186 + 32] < mem[(32 * idx) + _2835 + 32]:
                        revert with 0, 17
                    if idx >= mem[_2879]:
                        revert with 0, 50
                    mem[(32 * idx) + _2879 + 32] = mem[(32 * idx) + _2186 + 32] - mem[(32 * idx) + _2835 + 32]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _3581 = mem[64]
                mem[mem[64]] = _2803 - _2802
                mem[mem[64] + 32] = 96
                _3686 = mem[_2879]
                mem[mem[64] + 96] = mem[_2879]
                mem[mem[64] + 128 len 32 * _3686] = mem[_2879 + 32 len 32 * _3686]
                mem[mem[64] + 64] = -45000
                return memory
                  from mem[64]
                   len _3581 + (32 * _3686) + -mem[64] + 128
            mem[mem[64]] = 0xfdb5a03e00000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(cd[4]))
            call address(cd[4]).reinvest() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if gas_remaining < gas_remaining:
                revert with 0, 17
            _1472 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1472] = 0
            mem[_1472 + 32] = 96
            _1473 = mem[64]
            mem[64] = mem[64] + 64
            idx = 0
            s = 0
            while idx < mem[96]:
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
                if s > !eth.balance(mem[(32 * idx) + 128]):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + eth.balance(mem[(32 * idx) + 128])
                continue 
            mem[_1473] = s
            if ('cd', 36).length > test266151307():
                revert with 0, 65
            _2184 = mem[64]
            mem[mem[64]] = ('cd', 36).length
            mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
            if not ('cd', 36).length:
                idx = 0
                while idx < ('cd', 36).length:
                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                    _3374 = mem[96]
                    s = 0
                    t = 0
                    while s < _3374:
                        if s >= mem[96]:
                            revert with 0, 50
                        if not mem[(32 * s) + 140 len 20]:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t
                            continue 
                        if s >= mem[96]:
                            revert with 0, 50
                        _3644 = mem[(32 * s) + 128]
                        mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_3644)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3758 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t > !mem[_3758]:
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = t + mem[_3758]
                        continue 
                    if idx >= mem[_2184]:
                        revert with 0, 50
                    mem[(32 * idx) + _2184 + 32] = t
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[_1473 + 32] = _2184
                _2796 = mem[288]
                _2797 = mem[_1473]
                if mem[_1473] < mem[288]:
                    revert with 0, 17
                _2829 = mem[320]
                _2860 = mem[_2184]
                if mem[_2184] > test266151307():
                    revert with 0, 65
                _2876 = mem[64]
                mem[mem[64]] = mem[_2184]
                mem[64] = mem[64] + (32 * _2860) + 32
                if not _2860:
                    _3372 = mem[_2184]
                    idx = 0
                    while idx < _3372:
                        if idx >= mem[_2829]:
                            revert with 0, 50
                        if idx >= mem[_2184]:
                            revert with 0, 50
                        if mem[(32 * idx) + _2184 + 32] < mem[(32 * idx) + _2829 + 32]:
                            revert with 0, 17
                        if idx >= mem[_2876]:
                            revert with 0, 50
                        mem[(32 * idx) + _2876 + 32] = mem[(32 * idx) + _2184 + 32] - mem[(32 * idx) + _2829 + 32]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _3564 = mem[64]
                    mem[mem[64]] = _2797 - _2796
                    mem[mem[64] + 32] = 96
                    _3676 = mem[_2876]
                    mem[mem[64] + 96] = mem[_2876]
                    mem[mem[64] + 128 len 32 * _3676] = mem[_2876 + 32 len 32 * _3676]
                    mem[mem[64] + 64] = 0
                    return memory
                      from mem[64]
                       len _3564 + (32 * _3676) + -mem[64] + 128
                mem[_2876 + 32 len 32 * _2860] = call.data[calldata.size len 32 * _2860]
                _3373 = mem[_2184]
                idx = 0
                while idx < _3373:
                    if idx >= mem[_2829]:
                        revert with 0, 50
                    if idx >= mem[_2184]:
                        revert with 0, 50
                    if mem[(32 * idx) + _2184 + 32] < mem[(32 * idx) + _2829 + 32]:
                        revert with 0, 17
                    if idx >= mem[_2876]:
                        revert with 0, 50
                    mem[(32 * idx) + _2876 + 32] = mem[(32 * idx) + _2184 + 32] - mem[(32 * idx) + _2829 + 32]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _3566 = mem[64]
                mem[mem[64]] = _2797 - _2796
                mem[mem[64] + 32] = 96
                _3677 = mem[_2876]
                mem[mem[64] + 96] = mem[_2876]
                mem[mem[64] + 128 len 32 * _3677] = mem[_2876 + 32 len 32 * _3677]
                mem[mem[64] + 64] = 0
                return memory
                  from mem[64]
                   len _3566 + (32 * _3677) + -mem[64] + 128
            mem[_2184 + 32 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
            idx = 0
            while idx < ('cd', 36).length:
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                _3377 = mem[96]
                s = 0
                t = 0
                while s < _3377:
                    if s >= mem[96]:
                        revert with 0, 50
                    if not mem[(32 * s) + 140 len 20]:
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = t
                        continue 
                    if s >= mem[96]:
                        revert with 0, 50
                    _3646 = mem[(32 * s) + 128]
                    mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_3646)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3761 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if t > !mem[_3761]:
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t + mem[_3761]
                    continue 
                if idx >= mem[_2184]:
                    revert with 0, 50
                mem[(32 * idx) + _2184 + 32] = t
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[_1473 + 32] = _2184
            _2798 = mem[288]
            _2799 = mem[_1473]
            if mem[_1473] < mem[288]:
                revert with 0, 17
            _2831 = mem[320]
            _2861 = mem[_2184]
            if mem[_2184] > test266151307():
                revert with 0, 65
            _2877 = mem[64]
            mem[mem[64]] = mem[_2184]
            mem[64] = mem[64] + (32 * _2861) + 32
            if not _2861:
                _3375 = mem[_2184]
                idx = 0
                while idx < _3375:
                    if idx >= mem[_2831]:
                        revert with 0, 50
                    if idx >= mem[_2184]:
                        revert with 0, 50
                    if mem[(32 * idx) + _2184 + 32] < mem[(32 * idx) + _2831 + 32]:
                        revert with 0, 17
                    if idx >= mem[_2877]:
                        revert with 0, 50
                    mem[(32 * idx) + _2877 + 32] = mem[(32 * idx) + _2184 + 32] - mem[(32 * idx) + _2831 + 32]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _3569 = mem[64]
                mem[mem[64]] = _2799 - _2798
                mem[mem[64] + 32] = 96
                _3679 = mem[_2877]
                mem[mem[64] + 96] = mem[_2877]
                mem[mem[64] + 128 len 32 * _3679] = mem[_2877 + 32 len 32 * _3679]
                mem[mem[64] + 64] = 0
                return memory
                  from mem[64]
                   len _3569 + (32 * _3679) + -mem[64] + 128
            mem[_2877 + 32 len 32 * _2861] = call.data[calldata.size len 32 * _2861]
            _3376 = mem[_2184]
            idx = 0
            while idx < _3376:
                if idx >= mem[_2831]:
                    revert with 0, 50
                if idx >= mem[_2184]:
                    revert with 0, 50
                if mem[(32 * idx) + _2184 + 32] < mem[(32 * idx) + _2831 + 32]:
                    revert with 0, 17
                if idx >= mem[_2877]:
                    revert with 0, 50
                mem[(32 * idx) + _2877 + 32] = mem[(32 * idx) + _2184 + 32] - mem[(32 * idx) + _2831 + 32]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _3571 = mem[64]
            mem[mem[64]] = _2799 - _2798
            mem[mem[64] + 32] = 96
            _3680 = mem[_2877]
            mem[mem[64] + 96] = mem[_2877]
            mem[mem[64] + 128 len 32 * _3680] = mem[_2877 + 32 len 32 * _3680]
            mem[mem[64] + 64] = 0
            return memory
              from mem[64]
               len _3571 + (32 * _3680) + -mem[64] + 128
        mem[384 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            _2137 = mem[96]
            s = 0
            t = 0
            while s < _2137:
                if s >= mem[96]:
                    revert with 0, 50
                if not mem[(32 * s) + 140 len 20]:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t
                    continue 
                if s >= mem[96]:
                    revert with 0, 50
                _2194 = mem[(32 * s) + 128]
                mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_2194)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2213 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if t > !mem[_2213]:
                    revert with 0, 17
                if s == -1:
                    revert with 0, 17
                s = s + 1
                t = t + mem[_2213]
                continue 
            if idx >= mem[352]:
                revert with 0, 50
            mem[(32 * idx) + 384] = t
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[320] = 352
        mem[mem[64] len 259] = code.data[7529 len 259]
        mem[mem[64] + 259] = address(cd[4])
        create contract with 0 wei
                        code: code.data[7529 len 259], address(cd[4])
        if create.new_address:
            if gas_remaining < 45000:
                revert with 0, 17
            if 2 >= mem[96]:
                revert with 0, 50
            mem[192] = address(create.new_address)
            if gas_remaining - 45000 < gas_remaining:
                revert with 0, 17
            _1501 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1501] = 0
            mem[_1501 + 32] = 96
            _1502 = mem[64]
            mem[64] = mem[64] + 64
            idx = 0
            s = 0
            while idx < mem[96]:
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
                if s > !eth.balance(mem[(32 * idx) + 128]):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + eth.balance(mem[(32 * idx) + 128])
                continue 
            mem[_1502] = s
            if ('cd', 36).length > test266151307():
                revert with 0, 65
            _2192 = mem[64]
            mem[mem[64]] = ('cd', 36).length
            mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
            if not ('cd', 36).length:
                idx = 0
                while idx < ('cd', 36).length:
                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                    _3392 = mem[96]
                    s = 0
                    t = 0
                    while s < _3392:
                        if s >= mem[96]:
                            revert with 0, 50
                        if not mem[(32 * s) + 140 len 20]:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t
                            continue 
                        if s >= mem[96]:
                            revert with 0, 50
                        _3656 = mem[(32 * s) + 128]
                        mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_3656)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3776 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t > !mem[_3776]:
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = t + mem[_3776]
                        continue 
                    if idx >= mem[_2192]:
                        revert with 0, 50
                    mem[(32 * idx) + _2192 + 32] = t
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[_1502 + 32] = _2192
                _2808 = mem[288]
                _2809 = mem[_1502]
                if mem[_1502] < mem[288]:
                    revert with 0, 17
                _2841 = mem[320]
                _2866 = mem[_2192]
                if mem[_2192] > test266151307():
                    revert with 0, 65
                _2882 = mem[64]
                mem[mem[64]] = mem[_2192]
                mem[64] = mem[64] + (32 * _2866) + 32
                if not _2866:
                    _3390 = mem[_2192]
                    idx = 0
                    while idx < _3390:
                        if idx >= mem[_2841]:
                            revert with 0, 50
                        if idx >= mem[_2192]:
                            revert with 0, 50
                        if mem[(32 * idx) + _2192 + 32] < mem[(32 * idx) + _2841 + 32]:
                            revert with 0, 17
                        if idx >= mem[_2882]:
                            revert with 0, 50
                        mem[(32 * idx) + _2882 + 32] = mem[(32 * idx) + _2192 + 32] - mem[(32 * idx) + _2841 + 32]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _3594 = mem[64]
                    mem[mem[64]] = _2809 - _2808
                    mem[mem[64] + 32] = 96
                    _3694 = mem[_2882]
                    mem[mem[64] + 96] = mem[_2882]
                    mem[mem[64] + 128 len 32 * _3694] = mem[_2882 + 32 len 32 * _3694]
                    mem[mem[64] + 64] = -45000
                    return memory
                      from mem[64]
                       len _3594 + (32 * _3694) + -mem[64] + 128
                mem[_2882 + 32 len 32 * _2866] = call.data[calldata.size len 32 * _2866]
                _3391 = mem[_2192]
                idx = 0
                while idx < _3391:
                    if idx >= mem[_2841]:
                        revert with 0, 50
                    if idx >= mem[_2192]:
                        revert with 0, 50
                    if mem[(32 * idx) + _2192 + 32] < mem[(32 * idx) + _2841 + 32]:
                        revert with 0, 17
                    if idx >= mem[_2882]:
                        revert with 0, 50
                    mem[(32 * idx) + _2882 + 32] = mem[(32 * idx) + _2192 + 32] - mem[(32 * idx) + _2841 + 32]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _3596 = mem[64]
                mem[mem[64]] = _2809 - _2808
                mem[mem[64] + 32] = 96
                _3695 = mem[_2882]
                mem[mem[64] + 96] = mem[_2882]
                mem[mem[64] + 128 len 32 * _3695] = mem[_2882 + 32 len 32 * _3695]
                mem[mem[64] + 64] = -45000
                return memory
                  from mem[64]
                   len _3596 + (32 * _3695) + -mem[64] + 128
            mem[_2192 + 32 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
            idx = 0
            while idx < ('cd', 36).length:
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                _3395 = mem[96]
                s = 0
                t = 0
                while s < _3395:
                    if s >= mem[96]:
                        revert with 0, 50
                    if not mem[(32 * s) + 140 len 20]:
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = t
                        continue 
                    if s >= mem[96]:
                        revert with 0, 50
                    _3658 = mem[(32 * s) + 128]
                    mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_3658)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3779 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if t > !mem[_3779]:
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t + mem[_3779]
                    continue 
                if idx >= mem[_2192]:
                    revert with 0, 50
                mem[(32 * idx) + _2192 + 32] = t
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[_1502 + 32] = _2192
            _2810 = mem[288]
            _2811 = mem[_1502]
            if mem[_1502] < mem[288]:
                revert with 0, 17
            _2843 = mem[320]
            _2867 = mem[_2192]
            if mem[_2192] > test266151307():
                revert with 0, 65
            _2883 = mem[64]
            mem[mem[64]] = mem[_2192]
            mem[64] = mem[64] + (32 * _2867) + 32
            if not _2867:
                _3393 = mem[_2192]
                idx = 0
                while idx < _3393:
                    if idx >= mem[_2843]:
                        revert with 0, 50
                    if idx >= mem[_2192]:
                        revert with 0, 50
                    if mem[(32 * idx) + _2192 + 32] < mem[(32 * idx) + _2843 + 32]:
                        revert with 0, 17
                    if idx >= mem[_2883]:
                        revert with 0, 50
                    mem[(32 * idx) + _2883 + 32] = mem[(32 * idx) + _2192 + 32] - mem[(32 * idx) + _2843 + 32]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _3599 = mem[64]
                mem[mem[64]] = _2811 - _2810
                mem[mem[64] + 32] = 96
                _3697 = mem[_2883]
                mem[mem[64] + 96] = mem[_2883]
                mem[mem[64] + 128 len 32 * _3697] = mem[_2883 + 32 len 32 * _3697]
                mem[mem[64] + 64] = -45000
                return memory
                  from mem[64]
                   len _3599 + (32 * _3697) + -mem[64] + 128
            mem[_2883 + 32 len 32 * _2867] = call.data[calldata.size len 32 * _2867]
            _3394 = mem[_2192]
            idx = 0
            while idx < _3394:
                if idx >= mem[_2843]:
                    revert with 0, 50
                if idx >= mem[_2192]:
                    revert with 0, 50
                if mem[(32 * idx) + _2192 + 32] < mem[(32 * idx) + _2843 + 32]:
                    revert with 0, 17
                if idx >= mem[_2883]:
                    revert with 0, 50
                mem[(32 * idx) + _2883 + 32] = mem[(32 * idx) + _2192 + 32] - mem[(32 * idx) + _2843 + 32]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _3601 = mem[64]
            mem[mem[64]] = _2811 - _2810
            mem[mem[64] + 32] = 96
            _3698 = mem[_2883]
            mem[mem[64] + 96] = mem[_2883]
            mem[mem[64] + 128 len 32 * _3698] = mem[_2883 + 32 len 32 * _3698]
            mem[mem[64] + 64] = -45000
            return memory
              from mem[64]
               len _3601 + (32 * _3698) + -mem[64] + 128
        mem[mem[64]] = 0xfdb5a03e00000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(cd[4]))
        call address(cd[4]).reinvest() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if gas_remaining < gas_remaining:
            revert with 0, 17
        _1476 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1476] = 0
        mem[_1476 + 32] = 96
        _1477 = mem[64]
        mem[64] = mem[64] + 64
        idx = 0
        s = 0
        while idx < mem[96]:
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
            if s > !eth.balance(mem[(32 * idx) + 128]):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + eth.balance(mem[(32 * idx) + 128])
            continue 
        mem[_1477] = s
        if ('cd', 36).length > test266151307():
            revert with 0, 65
        _2190 = mem[64]
        mem[mem[64]] = ('cd', 36).length
        mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
        if not ('cd', 36).length:
            idx = 0
            while idx < ('cd', 36).length:
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                _3386 = mem[96]
                s = 0
                t = 0
                while s < _3386:
                    if s >= mem[96]:
                        revert with 0, 50
                    if not mem[(32 * s) + 140 len 20]:
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = t
                        continue 
                    if s >= mem[96]:
                        revert with 0, 50
                    _3652 = mem[(32 * s) + 128]
                    mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_3652)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3770 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if t > !mem[_3770]:
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t + mem[_3770]
                    continue 
                if idx >= mem[_2190]:
                    revert with 0, 50
                mem[(32 * idx) + _2190 + 32] = t
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[_1477 + 32] = _2190
            _2804 = mem[288]
            _2805 = mem[_1477]
            if mem[_1477] < mem[288]:
                revert with 0, 17
            _2837 = mem[320]
            _2864 = mem[_2190]
            if mem[_2190] > test266151307():
                revert with 0, 65
            _2880 = mem[64]
            mem[mem[64]] = mem[_2190]
            mem[64] = mem[64] + (32 * _2864) + 32
            if not _2864:
                _3384 = mem[_2190]
                idx = 0
                while idx < _3384:
                    if idx >= mem[_2837]:
                        revert with 0, 50
                    if idx >= mem[_2190]:
                        revert with 0, 50
                    if mem[(32 * idx) + _2190 + 32] < mem[(32 * idx) + _2837 + 32]:
                        revert with 0, 17
                    if idx >= mem[_2880]:
                        revert with 0, 50
                    mem[(32 * idx) + _2880 + 32] = mem[(32 * idx) + _2190 + 32] - mem[(32 * idx) + _2837 + 32]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _3584 = mem[64]
                mem[mem[64]] = _2805 - _2804
                mem[mem[64] + 32] = 96
                _3688 = mem[_2880]
                mem[mem[64] + 96] = mem[_2880]
                mem[mem[64] + 128 len 32 * _3688] = mem[_2880 + 32 len 32 * _3688]
                mem[mem[64] + 64] = 0
                return memory
                  from mem[64]
                   len _3584 + (32 * _3688) + -mem[64] + 128
            mem[_2880 + 32 len 32 * _2864] = call.data[calldata.size len 32 * _2864]
            _3385 = mem[_2190]
            idx = 0
            while idx < _3385:
                if idx >= mem[_2837]:
                    revert with 0, 50
                if idx >= mem[_2190]:
                    revert with 0, 50
                if mem[(32 * idx) + _2190 + 32] < mem[(32 * idx) + _2837 + 32]:
                    revert with 0, 17
                if idx >= mem[_2880]:
                    revert with 0, 50
                mem[(32 * idx) + _2880 + 32] = mem[(32 * idx) + _2190 + 32] - mem[(32 * idx) + _2837 + 32]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _3586 = mem[64]
            mem[mem[64]] = _2805 - _2804
            mem[mem[64] + 32] = 96
            _3689 = mem[_2880]
            mem[mem[64] + 96] = mem[_2880]
            mem[mem[64] + 128 len 32 * _3689] = mem[_2880 + 32 len 32 * _3689]
            mem[mem[64] + 64] = 0
            return memory
              from mem[64]
               len _3586 + (32 * _3689) + -mem[64] + 128
        mem[_2190 + 32 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            _3389 = mem[96]
            s = 0
            t = 0
            while s < _3389:
                if s >= mem[96]:
                    revert with 0, 50
                if not mem[(32 * s) + 140 len 20]:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t
                    continue 
                if s >= mem[96]:
                    revert with 0, 50
                _3654 = mem[(32 * s) + 128]
                mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_3654)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3773 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if t > !mem[_3773]:
                    revert with 0, 17
                if s == -1:
                    revert with 0, 17
                s = s + 1
                t = t + mem[_3773]
                continue 
            if idx >= mem[_2190]:
                revert with 0, 50
            mem[(32 * idx) + _2190 + 32] = t
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[_1477 + 32] = _2190
        _2806 = mem[288]
        _2807 = mem[_1477]
        if mem[_1477] < mem[288]:
            revert with 0, 17
        _2839 = mem[320]
        _2865 = mem[_2190]
        if mem[_2190] > test266151307():
            revert with 0, 65
        _2881 = mem[64]
        mem[mem[64]] = mem[_2190]
        mem[64] = mem[64] + (32 * _2865) + 32
        if not _2865:
            _3387 = mem[_2190]
            idx = 0
            while idx < _3387:
                if idx >= mem[_2839]:
                    revert with 0, 50
                if idx >= mem[_2190]:
                    revert with 0, 50
                if mem[(32 * idx) + _2190 + 32] < mem[(32 * idx) + _2839 + 32]:
                    revert with 0, 17
                if idx >= mem[_2881]:
                    revert with 0, 50
                mem[(32 * idx) + _2881 + 32] = mem[(32 * idx) + _2190 + 32] - mem[(32 * idx) + _2839 + 32]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _3589 = mem[64]
            mem[mem[64]] = _2807 - _2806
            mem[mem[64] + 32] = 96
            _3691 = mem[_2881]
            mem[mem[64] + 96] = mem[_2881]
            mem[mem[64] + 128 len 32 * _3691] = mem[_2881 + 32 len 32 * _3691]
            mem[mem[64] + 64] = 0
            return memory
              from mem[64]
               len _3589 + (32 * _3691) + -mem[64] + 128
        mem[_2881 + 32 len 32 * _2865] = call.data[calldata.size len 32 * _2865]
        _3388 = mem[_2190]
        idx = 0
        while idx < _3388:
            if idx >= mem[_2839]:
                revert with 0, 50
            if idx >= mem[_2190]:
                revert with 0, 50
            if mem[(32 * idx) + _2190 + 32] < mem[(32 * idx) + _2839 + 32]:
                revert with 0, 17
            if idx >= mem[_2881]:
                revert with 0, 50
            mem[(32 * idx) + _2881 + 32] = mem[(32 * idx) + _2190 + 32] - mem[(32 * idx) + _2839 + 32]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _3591 = mem[64]
        mem[mem[64]] = _2807 - _2806
        mem[mem[64] + 32] = 96
        _3692 = mem[_2881]
        mem[mem[64] + 96] = mem[_2881]
        mem[mem[64] + 128 len 32 * _3692] = mem[_2881 + 32 len 32 * _3692]
        mem[mem[64] + 64] = 0
        return memory
          from mem[64]
           len _3591 + (32 * _3692) + -mem[64] + 128
    mem[160] = msg.sender
    mem[224] = 0
    mem[256] = 96
    idx = 0
    s = 0
    while idx < 3:
        if idx >= 3:
            revert with 0, 50
        if not mem[(32 * idx) + 140 len 20]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if idx >= 3:
            revert with 0, 50
        if s > !eth.balance(mem[(32 * idx) + 128]):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + eth.balance(mem[(32 * idx) + 128])
        continue 
    mem[288] = s
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    mem[352] = ('cd', 36).length
    mem[64] = (32 * ('cd', 36).length) + 384
    if not ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            _2140 = mem[96]
            s = 0
            t = 0
            while s < _2140:
                if s >= mem[96]:
                    revert with 0, 50
                if not mem[(32 * s) + 140 len 20]:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t
                    continue 
                if s >= mem[96]:
                    revert with 0, 50
                _2200 = mem[(32 * s) + 128]
                mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_2200)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2214 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if t > !mem[_2214]:
                    revert with 0, 17
                if s == -1:
                    revert with 0, 17
                s = s + 1
                t = t + mem[_2214]
                continue 
            if idx >= mem[352]:
                revert with 0, 50
            mem[(32 * idx) + 384] = t
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[320] = 352
        mem[mem[64] len 259] = code.data[7529 len 259]
        mem[mem[64] + 259] = address(cd[4])
        create contract with 0 wei
                        code: code.data[7529 len 259], address(cd[4])
        if create.new_address:
            if gas_remaining < 45000:
                revert with 0, 17
            if 2 >= mem[96]:
                revert with 0, 50
            mem[192] = address(create.new_address)
            if gas_remaining - 45000 < gas_remaining:
                revert with 0, 17
            _1505 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1505] = 0
            mem[_1505 + 32] = 96
            _1506 = mem[64]
            mem[64] = mem[64] + 64
            idx = 0
            s = 0
            while idx < mem[96]:
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
                if s > !eth.balance(mem[(32 * idx) + 128]):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + eth.balance(mem[(32 * idx) + 128])
                continue 
            mem[_1506] = s
            if ('cd', 36).length > test266151307():
                revert with 0, 65
            _2198 = mem[64]
            mem[mem[64]] = ('cd', 36).length
            mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
            if not ('cd', 36).length:
                idx = 0
                while idx < ('cd', 36).length:
                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                    _3404 = mem[96]
                    s = 0
                    t = 0
                    while s < _3404:
                        if s >= mem[96]:
                            revert with 0, 50
                        if not mem[(32 * s) + 140 len 20]:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t
                            continue 
                        if s >= mem[96]:
                            revert with 0, 50
                        _3664 = mem[(32 * s) + 128]
                        mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_3664)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3788 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t > !mem[_3788]:
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = t + mem[_3788]
                        continue 
                    if idx >= mem[_2198]:
                        revert with 0, 50
                    mem[(32 * idx) + _2198 + 32] = t
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[_1506 + 32] = _2198
                _2816 = mem[288]
                _2817 = mem[_1506]
                if mem[_1506] < mem[288]:
                    revert with 0, 17
                _2849 = mem[320]
                _2870 = mem[_2198]
                if mem[_2198] > test266151307():
                    revert with 0, 65
                _2886 = mem[64]
                mem[mem[64]] = mem[_2198]
                mem[64] = mem[64] + (32 * _2870) + 32
                if not _2870:
                    _3402 = mem[_2198]
                    idx = 0
                    while idx < _3402:
                        if idx >= mem[_2849]:
                            revert with 0, 50
                        if idx >= mem[_2198]:
                            revert with 0, 50
                        if mem[(32 * idx) + _2198 + 32] < mem[(32 * idx) + _2849 + 32]:
                            revert with 0, 17
                        if idx >= mem[_2886]:
                            revert with 0, 50
                        mem[(32 * idx) + _2886 + 32] = mem[(32 * idx) + _2198 + 32] - mem[(32 * idx) + _2849 + 32]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _3614 = mem[64]
                    mem[mem[64]] = _2817 - _2816
                    mem[mem[64] + 32] = 96
                    _3706 = mem[_2886]
                    mem[mem[64] + 96] = mem[_2886]
                    mem[mem[64] + 128 len 32 * _3706] = mem[_2886 + 32 len 32 * _3706]
                    mem[mem[64] + 64] = -45000
                    return memory
                      from mem[64]
                       len _3614 + (32 * _3706) + -mem[64] + 128
                mem[_2886 + 32 len 32 * _2870] = call.data[calldata.size len 32 * _2870]
                _3403 = mem[_2198]
                idx = 0
                while idx < _3403:
                    if idx >= mem[_2849]:
                        revert with 0, 50
                    if idx >= mem[_2198]:
                        revert with 0, 50
                    if mem[(32 * idx) + _2198 + 32] < mem[(32 * idx) + _2849 + 32]:
                        revert with 0, 17
                    if idx >= mem[_2886]:
                        revert with 0, 50
                    mem[(32 * idx) + _2886 + 32] = mem[(32 * idx) + _2198 + 32] - mem[(32 * idx) + _2849 + 32]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _3616 = mem[64]
                mem[mem[64]] = _2817 - _2816
                mem[mem[64] + 32] = 96
                _3707 = mem[_2886]
                mem[mem[64] + 96] = mem[_2886]
                mem[mem[64] + 128 len 32 * _3707] = mem[_2886 + 32 len 32 * _3707]
                mem[mem[64] + 64] = -45000
                return memory
                  from mem[64]
                   len _3616 + (32 * _3707) + -mem[64] + 128
            mem[_2198 + 32 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
            idx = 0
            while idx < ('cd', 36).length:
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                _3407 = mem[96]
                s = 0
                t = 0
                while s < _3407:
                    if s >= mem[96]:
                        revert with 0, 50
                    if not mem[(32 * s) + 140 len 20]:
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = t
                        continue 
                    if s >= mem[96]:
                        revert with 0, 50
                    _3666 = mem[(32 * s) + 128]
                    mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_3666)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3791 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if t > !mem[_3791]:
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t + mem[_3791]
                    continue 
                if idx >= mem[_2198]:
                    revert with 0, 50
                mem[(32 * idx) + _2198 + 32] = t
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[_1506 + 32] = _2198
            _2818 = mem[288]
            _2819 = mem[_1506]
            if mem[_1506] < mem[288]:
                revert with 0, 17
            _2851 = mem[320]
            _2871 = mem[_2198]
            if mem[_2198] > test266151307():
                revert with 0, 65
            _2887 = mem[64]
            mem[mem[64]] = mem[_2198]
            mem[64] = mem[64] + (32 * _2871) + 32
            if not _2871:
                _3405 = mem[_2198]
                idx = 0
                while idx < _3405:
                    if idx >= mem[_2851]:
                        revert with 0, 50
                    if idx >= mem[_2198]:
                        revert with 0, 50
                    if mem[(32 * idx) + _2198 + 32] < mem[(32 * idx) + _2851 + 32]:
                        revert with 0, 17
                    if idx >= mem[_2887]:
                        revert with 0, 50
                    mem[(32 * idx) + _2887 + 32] = mem[(32 * idx) + _2198 + 32] - mem[(32 * idx) + _2851 + 32]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _3619 = mem[64]
                mem[mem[64]] = _2819 - _2818
                mem[mem[64] + 32] = 96
                _3709 = mem[_2887]
                mem[mem[64] + 96] = mem[_2887]
                mem[mem[64] + 128 len 32 * _3709] = mem[_2887 + 32 len 32 * _3709]
                mem[mem[64] + 64] = -45000
                return memory
                  from mem[64]
                   len _3619 + (32 * _3709) + -mem[64] + 128
            mem[_2887 + 32 len 32 * _2871] = call.data[calldata.size len 32 * _2871]
            _3406 = mem[_2198]
            idx = 0
            while idx < _3406:
                if idx >= mem[_2851]:
                    revert with 0, 50
                if idx >= mem[_2198]:
                    revert with 0, 50
                if mem[(32 * idx) + _2198 + 32] < mem[(32 * idx) + _2851 + 32]:
                    revert with 0, 17
                if idx >= mem[_2887]:
                    revert with 0, 50
                mem[(32 * idx) + _2887 + 32] = mem[(32 * idx) + _2198 + 32] - mem[(32 * idx) + _2851 + 32]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _3621 = mem[64]
            mem[mem[64]] = _2819 - _2818
            mem[mem[64] + 32] = 96
            _3710 = mem[_2887]
            mem[mem[64] + 96] = mem[_2887]
            mem[mem[64] + 128 len 32 * _3710] = mem[_2887 + 32 len 32 * _3710]
            mem[mem[64] + 64] = -45000
            return memory
              from mem[64]
               len _3621 + (32 * _3710) + -mem[64] + 128
        mem[mem[64]] = 0xfdb5a03e00000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(cd[4]))
        call address(cd[4]).reinvest() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if gas_remaining < gas_remaining:
            revert with 0, 17
        _1480 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1480] = 0
        mem[_1480 + 32] = 96
        _1481 = mem[64]
        mem[64] = mem[64] + 64
        idx = 0
        s = 0
        while idx < mem[96]:
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
            if s > !eth.balance(mem[(32 * idx) + 128]):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + eth.balance(mem[(32 * idx) + 128])
            continue 
        mem[_1481] = s
        if ('cd', 36).length > test266151307():
            revert with 0, 65
        _2196 = mem[64]
        mem[mem[64]] = ('cd', 36).length
        mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
        if not ('cd', 36).length:
            idx = 0
            while idx < ('cd', 36).length:
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                _3398 = mem[96]
                s = 0
                t = 0
                while s < _3398:
                    if s >= mem[96]:
                        revert with 0, 50
                    if not mem[(32 * s) + 140 len 20]:
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = t
                        continue 
                    if s >= mem[96]:
                        revert with 0, 50
                    _3660 = mem[(32 * s) + 128]
                    mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_3660)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3782 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if t > !mem[_3782]:
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t + mem[_3782]
                    continue 
                if idx >= mem[_2196]:
                    revert with 0, 50
                mem[(32 * idx) + _2196 + 32] = t
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[_1481 + 32] = _2196
            _2812 = mem[288]
            _2813 = mem[_1481]
            if mem[_1481] < mem[288]:
                revert with 0, 17
            _2845 = mem[320]
            _2868 = mem[_2196]
            if mem[_2196] > test266151307():
                revert with 0, 65
            _2884 = mem[64]
            mem[mem[64]] = mem[_2196]
            mem[64] = mem[64] + (32 * _2868) + 32
            if not _2868:
                _3396 = mem[_2196]
                idx = 0
                while idx < _3396:
                    if idx >= mem[_2845]:
                        revert with 0, 50
                    if idx >= mem[_2196]:
                        revert with 0, 50
                    if mem[(32 * idx) + _2196 + 32] < mem[(32 * idx) + _2845 + 32]:
                        revert with 0, 17
                    if idx >= mem[_2884]:
                        revert with 0, 50
                    mem[(32 * idx) + _2884 + 32] = mem[(32 * idx) + _2196 + 32] - mem[(32 * idx) + _2845 + 32]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _3604 = mem[64]
                mem[mem[64]] = _2813 - _2812
                mem[mem[64] + 32] = 96
                _3700 = mem[_2884]
                mem[mem[64] + 96] = mem[_2884]
                mem[mem[64] + 128 len 32 * _3700] = mem[_2884 + 32 len 32 * _3700]
                mem[mem[64] + 64] = 0
                return memory
                  from mem[64]
                   len _3604 + (32 * _3700) + -mem[64] + 128
            mem[_2884 + 32 len 32 * _2868] = call.data[calldata.size len 32 * _2868]
            _3397 = mem[_2196]
            idx = 0
            while idx < _3397:
                if idx >= mem[_2845]:
                    revert with 0, 50
                if idx >= mem[_2196]:
                    revert with 0, 50
                if mem[(32 * idx) + _2196 + 32] < mem[(32 * idx) + _2845 + 32]:
                    revert with 0, 17
                if idx >= mem[_2884]:
                    revert with 0, 50
                mem[(32 * idx) + _2884 + 32] = mem[(32 * idx) + _2196 + 32] - mem[(32 * idx) + _2845 + 32]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _3606 = mem[64]
            mem[mem[64]] = _2813 - _2812
            mem[mem[64] + 32] = 96
            _3701 = mem[_2884]
            mem[mem[64] + 96] = mem[_2884]
            mem[mem[64] + 128 len 32 * _3701] = mem[_2884 + 32 len 32 * _3701]
            mem[mem[64] + 64] = 0
            return memory
              from mem[64]
               len _3606 + (32 * _3701) + -mem[64] + 128
        mem[_2196 + 32 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            _3401 = mem[96]
            s = 0
            t = 0
            while s < _3401:
                if s >= mem[96]:
                    revert with 0, 50
                if not mem[(32 * s) + 140 len 20]:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t
                    continue 
                if s >= mem[96]:
                    revert with 0, 50
                _3662 = mem[(32 * s) + 128]
                mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_3662)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3785 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if t > !mem[_3785]:
                    revert with 0, 17
                if s == -1:
                    revert with 0, 17
                s = s + 1
                t = t + mem[_3785]
                continue 
            if idx >= mem[_2196]:
                revert with 0, 50
            mem[(32 * idx) + _2196 + 32] = t
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[_1481 + 32] = _2196
        _2814 = mem[288]
        _2815 = mem[_1481]
        if mem[_1481] < mem[288]:
            revert with 0, 17
        _2847 = mem[320]
        _2869 = mem[_2196]
        if mem[_2196] > test266151307():
            revert with 0, 65
        _2885 = mem[64]
        mem[mem[64]] = mem[_2196]
        mem[64] = mem[64] + (32 * _2869) + 32
        if not _2869:
            _3399 = mem[_2196]
            idx = 0
            while idx < _3399:
                if idx >= mem[_2847]:
                    revert with 0, 50
                if idx >= mem[_2196]:
                    revert with 0, 50
                if mem[(32 * idx) + _2196 + 32] < mem[(32 * idx) + _2847 + 32]:
                    revert with 0, 17
                if idx >= mem[_2885]:
                    revert with 0, 50
                mem[(32 * idx) + _2885 + 32] = mem[(32 * idx) + _2196 + 32] - mem[(32 * idx) + _2847 + 32]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _3609 = mem[64]
            mem[mem[64]] = _2815 - _2814
            mem[mem[64] + 32] = 96
            _3703 = mem[_2885]
            mem[mem[64] + 96] = mem[_2885]
            mem[mem[64] + 128 len 32 * _3703] = mem[_2885 + 32 len 32 * _3703]
            mem[mem[64] + 64] = 0
            return memory
              from mem[64]
               len _3609 + (32 * _3703) + -mem[64] + 128
        mem[_2885 + 32 len 32 * _2869] = call.data[calldata.size len 32 * _2869]
        _3400 = mem[_2196]
        idx = 0
        while idx < _3400:
            if idx >= mem[_2847]:
                revert with 0, 50
            if idx >= mem[_2196]:
                revert with 0, 50
            if mem[(32 * idx) + _2196 + 32] < mem[(32 * idx) + _2847 + 32]:
                revert with 0, 17
            if idx >= mem[_2885]:
                revert with 0, 50
            mem[(32 * idx) + _2885 + 32] = mem[(32 * idx) + _2196 + 32] - mem[(32 * idx) + _2847 + 32]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _3611 = mem[64]
        mem[mem[64]] = _2815 - _2814
        mem[mem[64] + 32] = 96
        _3704 = mem[_2885]
        mem[mem[64] + 96] = mem[_2885]
        mem[mem[64] + 128 len 32 * _3704] = mem[_2885 + 32 len 32 * _3704]
        mem[mem[64] + 64] = 0
        return memory
          from mem[64]
           len _3611 + (32 * _3704) + -mem[64] + 128
    mem[384 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
    idx = 0
    while idx < ('cd', 36).length:
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        _2143 = mem[96]
        s = 0
        t = 0
        while s < _2143:
            if s >= mem[96]:
                revert with 0, 50
            if not mem[(32 * s) + 140 len 20]:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                t = t
                continue 
            if s >= mem[96]:
                revert with 0, 50
            _2206 = mem[(32 * s) + 128]
            mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(_2206)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2215 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if t > !mem[_2215]:
                revert with 0, 17
            if s == -1:
                revert with 0, 17
            s = s + 1
            t = t + mem[_2215]
            continue 
        if idx >= mem[352]:
            revert with 0, 50
        mem[(32 * idx) + 384] = t
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[320] = 352
    mem[mem[64] len 259] = code.data[7529 len 259]
    mem[mem[64] + 259] = address(cd[4])
    create contract with 0 wei
                    code: code.data[7529 len 259], address(cd[4])
    if create.new_address:
        if gas_remaining < 45000:
            revert with 0, 17
        if 2 >= mem[96]:
            revert with 0, 50
        mem[192] = address(create.new_address)
        if gas_remaining - 45000 < gas_remaining:
            revert with 0, 17
        _1509 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1509] = 0
        mem[_1509 + 32] = 96
        _1510 = mem[64]
        mem[64] = mem[64] + 64
        idx = 0
        s = 0
        while idx < mem[96]:
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
            if s > !eth.balance(mem[(32 * idx) + 128]):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + eth.balance(mem[(32 * idx) + 128])
            continue 
        mem[_1510] = s
        if ('cd', 36).length > test266151307():
            revert with 0, 65
        _2204 = mem[64]
        mem[mem[64]] = ('cd', 36).length
        mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
        if not ('cd', 36).length:
            idx = 0
            while idx < ('cd', 36).length:
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                _3416 = mem[96]
                s = 0
                t = 0
                while s < _3416:
                    if s >= mem[96]:
                        revert with 0, 50
                    if not mem[(32 * s) + 140 len 20]:
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = t
                        continue 
                    if s >= mem[96]:
                        revert with 0, 50
                    _3672 = mem[(32 * s) + 128]
                    mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_3672)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3800 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if t > !mem[_3800]:
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t + mem[_3800]
                    continue 
                if idx >= mem[_2204]:
                    revert with 0, 50
                mem[(32 * idx) + _2204 + 32] = t
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[_1510 + 32] = _2204
            _2824 = mem[288]
            _2825 = mem[_1510]
            if mem[_1510] < mem[288]:
                revert with 0, 17
            _2857 = mem[320]
            _2874 = mem[_2204]
            if mem[_2204] > test266151307():
                revert with 0, 65
            _2890 = mem[64]
            mem[mem[64]] = mem[_2204]
            mem[64] = mem[64] + (32 * _2874) + 32
            if not _2874:
                _3414 = mem[_2204]
                idx = 0
                while idx < _3414:
                    if idx >= mem[_2857]:
                        revert with 0, 50
                    if idx >= mem[_2204]:
                        revert with 0, 50
                    if mem[(32 * idx) + _2204 + 32] < mem[(32 * idx) + _2857 + 32]:
                        revert with 0, 17
                    if idx >= mem[_2890]:
                        revert with 0, 50
                    mem[(32 * idx) + _2890 + 32] = mem[(32 * idx) + _2204 + 32] - mem[(32 * idx) + _2857 + 32]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _3634 = mem[64]
                mem[mem[64]] = _2825 - _2824
                mem[mem[64] + 32] = 96
                _3718 = mem[_2890]
                mem[mem[64] + 96] = mem[_2890]
                mem[mem[64] + 128 len 32 * _3718] = mem[_2890 + 32 len 32 * _3718]
                mem[mem[64] + 64] = -45000
                return memory
                  from mem[64]
                   len _3634 + (32 * _3718) + -mem[64] + 128
            mem[_2890 + 32 len 32 * _2874] = call.data[calldata.size len 32 * _2874]
            _3415 = mem[_2204]
            idx = 0
            while idx < _3415:
                if idx >= mem[_2857]:
                    revert with 0, 50
                if idx >= mem[_2204]:
                    revert with 0, 50
                if mem[(32 * idx) + _2204 + 32] < mem[(32 * idx) + _2857 + 32]:
                    revert with 0, 17
                if idx >= mem[_2890]:
                    revert with 0, 50
                mem[(32 * idx) + _2890 + 32] = mem[(32 * idx) + _2204 + 32] - mem[(32 * idx) + _2857 + 32]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _3636 = mem[64]
            mem[mem[64]] = _2825 - _2824
            mem[mem[64] + 32] = 96
            _3719 = mem[_2890]
            mem[mem[64] + 96] = mem[_2890]
            mem[mem[64] + 128 len 32 * _3719] = mem[_2890 + 32 len 32 * _3719]
            mem[mem[64] + 64] = -45000
            return memory
              from mem[64]
               len _3636 + (32 * _3719) + -mem[64] + 128
        mem[_2204 + 32 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            _3419 = mem[96]
            s = 0
            t = 0
            while s < _3419:
                if s >= mem[96]:
                    revert with 0, 50
                if not mem[(32 * s) + 140 len 20]:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t
                    continue 
                if s >= mem[96]:
                    revert with 0, 50
                _3674 = mem[(32 * s) + 128]
                mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_3674)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3803 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if t > !mem[_3803]:
                    revert with 0, 17
                if s == -1:
                    revert with 0, 17
                s = s + 1
                t = t + mem[_3803]
                continue 
            if idx >= mem[_2204]:
                revert with 0, 50
            mem[(32 * idx) + _2204 + 32] = t
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[_1510 + 32] = _2204
        _2826 = mem[288]
        _2827 = mem[_1510]
        if mem[_1510] < mem[288]:
            revert with 0, 17
        _2859 = mem[320]
        _2875 = mem[_2204]
        if mem[_2204] > test266151307():
            revert with 0, 65
        _2891 = mem[64]
        mem[mem[64]] = mem[_2204]
        mem[64] = mem[64] + (32 * _2875) + 32
        if not _2875:
            _3417 = mem[_2204]
            idx = 0
            while idx < _3417:
                if idx >= mem[_2859]:
                    revert with 0, 50
                if idx >= mem[_2204]:
                    revert with 0, 50
                if mem[(32 * idx) + _2204 + 32] < mem[(32 * idx) + _2859 + 32]:
                    revert with 0, 17
                if idx >= mem[_2891]:
                    revert with 0, 50
                mem[(32 * idx) + _2891 + 32] = mem[(32 * idx) + _2204 + 32] - mem[(32 * idx) + _2859 + 32]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _3639 = mem[64]
            mem[mem[64]] = _2827 - _2826
            mem[mem[64] + 32] = 96
            _3721 = mem[_2891]
            mem[mem[64] + 96] = mem[_2891]
            mem[mem[64] + 128 len 32 * _3721] = mem[_2891 + 32 len 32 * _3721]
            mem[mem[64] + 64] = -45000
            return memory
              from mem[64]
               len _3639 + (32 * _3721) + -mem[64] + 128
        mem[_2891 + 32 len 32 * _2875] = call.data[calldata.size len 32 * _2875]
        _3418 = mem[_2204]
        idx = 0
        while idx < _3418:
            if idx >= mem[_2859]:
                revert with 0, 50
            if idx >= mem[_2204]:
                revert with 0, 50
            if mem[(32 * idx) + _2204 + 32] < mem[(32 * idx) + _2859 + 32]:
                revert with 0, 17
            if idx >= mem[_2891]:
                revert with 0, 50
            mem[(32 * idx) + _2891 + 32] = mem[(32 * idx) + _2204 + 32] - mem[(32 * idx) + _2859 + 32]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _3641 = mem[64]
        mem[mem[64]] = _2827 - _2826
        mem[mem[64] + 32] = 96
        _3722 = mem[_2891]
        mem[mem[64] + 96] = mem[_2891]
        mem[mem[64] + 128 len 32 * _3722] = mem[_2891 + 32 len 32 * _3722]
        mem[mem[64] + 64] = -45000
        return memory
          from mem[64]
           len _3641 + (32 * _3722) + -mem[64] + 128
    mem[mem[64]] = 0xfdb5a03e00000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(cd[4]))
    call address(cd[4]).reinvest() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if gas_remaining < gas_remaining:
        revert with 0, 17
    _1484 = mem[64]
    mem[64] = mem[64] + 64
    mem[_1484] = 0
    mem[_1484 + 32] = 96
    _1485 = mem[64]
    mem[64] = mem[64] + 64
    idx = 0
    s = 0
    while idx < mem[96]:
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
        if s > !eth.balance(mem[(32 * idx) + 128]):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + eth.balance(mem[(32 * idx) + 128])
        continue 
    mem[_1485] = s
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    _2202 = mem[64]
    mem[mem[64]] = ('cd', 36).length
    mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
    if not ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            _3410 = mem[96]
            s = 0
            t = 0
            while s < _3410:
                if s >= mem[96]:
                    revert with 0, 50
                if not mem[(32 * s) + 140 len 20]:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t
                    continue 
                if s >= mem[96]:
                    revert with 0, 50
                _3668 = mem[(32 * s) + 128]
                mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_3668)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3794 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if t > !mem[_3794]:
                    revert with 0, 17
                if s == -1:
                    revert with 0, 17
                s = s + 1
                t = t + mem[_3794]
                continue 
            if idx >= mem[_2202]:
                revert with 0, 50
            mem[(32 * idx) + _2202 + 32] = t
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[_1485 + 32] = _2202
        _2820 = mem[288]
        _2821 = mem[_1485]
        if mem[_1485] < mem[288]:
            revert with 0, 17
        _2853 = mem[320]
        _2872 = mem[_2202]
        if mem[_2202] > test266151307():
            revert with 0, 65
        _2888 = mem[64]
        mem[mem[64]] = mem[_2202]
        mem[64] = mem[64] + (32 * _2872) + 32
        if not _2872:
            _3408 = mem[_2202]
            idx = 0
            while idx < _3408:
                if idx >= mem[_2853]:
                    revert with 0, 50
                if idx >= mem[_2202]:
                    revert with 0, 50
                if mem[(32 * idx) + _2202 + 32] < mem[(32 * idx) + _2853 + 32]:
                    revert with 0, 17
                if idx >= mem[_2888]:
                    revert with 0, 50
                mem[(32 * idx) + _2888 + 32] = mem[(32 * idx) + _2202 + 32] - mem[(32 * idx) + _2853 + 32]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _3624 = mem[64]
            mem[mem[64]] = _2821 - _2820
            mem[mem[64] + 32] = 96
            _3712 = mem[_2888]
            mem[mem[64] + 96] = mem[_2888]
            mem[mem[64] + 128 len 32 * _3712] = mem[_2888 + 32 len 32 * _3712]
            mem[mem[64] + 64] = 0
            return memory
              from mem[64]
               len _3624 + (32 * _3712) + -mem[64] + 128
        mem[_2888 + 32 len 32 * _2872] = call.data[calldata.size len 32 * _2872]
        _3409 = mem[_2202]
        idx = 0
        while idx < _3409:
            if idx >= mem[_2853]:
                revert with 0, 50
            if idx >= mem[_2202]:
                revert with 0, 50
            if mem[(32 * idx) + _2202 + 32] < mem[(32 * idx) + _2853 + 32]:
                revert with 0, 17
            if idx >= mem[_2888]:
                revert with 0, 50
            mem[(32 * idx) + _2888 + 32] = mem[(32 * idx) + _2202 + 32] - mem[(32 * idx) + _2853 + 32]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _3626 = mem[64]
        mem[mem[64]] = _2821 - _2820
        mem[mem[64] + 32] = 96
        _3713 = mem[_2888]
        mem[mem[64] + 96] = mem[_2888]
        mem[mem[64] + 128 len 32 * _3713] = mem[_2888 + 32 len 32 * _3713]
        mem[mem[64] + 64] = 0
        return memory
          from mem[64]
           len _3626 + (32 * _3713) + -mem[64] + 128
    mem[_2202 + 32 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
    idx = 0
    while idx < ('cd', 36).length:
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        _3413 = mem[96]
        s = 0
        t = 0
        while s < _3413:
            if s >= mem[96]:
                revert with 0, 50
            if not mem[(32 * s) + 140 len 20]:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                t = t
                continue 
            if s >= mem[96]:
                revert with 0, 50
            _3670 = mem[(32 * s) + 128]
            mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(_3670)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3797 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if t > !mem[_3797]:
                revert with 0, 17
            if s == -1:
                revert with 0, 17
            s = s + 1
            t = t + mem[_3797]
            continue 
        if idx >= mem[_2202]:
            revert with 0, 50
        mem[(32 * idx) + _2202 + 32] = t
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[_1485 + 32] = _2202
    _2822 = mem[288]
    _2823 = mem[_1485]
    if mem[_1485] < mem[288]:
        revert with 0, 17
    _2855 = mem[320]
    _2873 = mem[_2202]
    if mem[_2202] > test266151307():
        revert with 0, 65
    _2889 = mem[64]
    mem[mem[64]] = mem[_2202]
    mem[64] = mem[64] + (32 * _2873) + 32
    if not _2873:
        _3411 = mem[_2202]
        idx = 0
        while idx < _3411:
            if idx >= mem[_2855]:
                revert with 0, 50
            if idx >= mem[_2202]:
                revert with 0, 50
            if mem[(32 * idx) + _2202 + 32] < mem[(32 * idx) + _2855 + 32]:
                revert with 0, 17
            if idx >= mem[_2889]:
                revert with 0, 50
            mem[(32 * idx) + _2889 + 32] = mem[(32 * idx) + _2202 + 32] - mem[(32 * idx) + _2855 + 32]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _3629 = mem[64]
        mem[mem[64]] = _2823 - _2822
        mem[mem[64] + 32] = 96
        _3715 = mem[_2889]
        mem[mem[64] + 96] = mem[_2889]
        mem[mem[64] + 128 len 32 * _3715] = mem[_2889 + 32 len 32 * _3715]
        mem[mem[64] + 64] = 0
        return memory
          from mem[64]
           len _3629 + (32 * _3715) + -mem[64] + 128
    mem[_2889 + 32 len 32 * _2873] = call.data[calldata.size len 32 * _2873]
    _3412 = mem[_2202]
    idx = 0
    while idx < _3412:
        if idx >= mem[_2855]:
            revert with 0, 50
        if idx >= mem[_2202]:
            revert with 0, 50
        if mem[(32 * idx) + _2202 + 32] < mem[(32 * idx) + _2855 + 32]:
            revert with 0, 17
        if idx >= mem[_2889]:
            revert with 0, 50
        mem[(32 * idx) + _2889 + 32] = mem[(32 * idx) + _2202 + 32] - mem[(32 * idx) + _2855 + 32]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _3631 = mem[64]
    mem[mem[64]] = _2823 - _2822
    mem[mem[64] + 32] = 96
    _3716 = mem[_2889]
    mem[mem[64] + 96] = mem[_2889]
    mem[mem[64] + 128 len 32 * _3716] = mem[_2889 + 32 len 32 * _3716]
    mem[mem[64] + 64] = 0
    return memory
      from mem[64]
       len _3631 + (32 * _3716) + -mem[64] + 128
}

function sub_5029674d(?) {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    mem[96] = 3
    mem[128 len 96] = call.data[calldata.size len 96]
    mem[128] = this.address
    if msg.sender == this.address:
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).lastHarvest() with:
                gas gas_remaining wei
        mem[224] = ext_call.return_data[0]
        if not ext_call.success:
            mem[224] = 0
            mem[256] = 96
            idx = 0
            s = 0
            while idx < 3:
                if idx >= 3:
                    revert with 0, 50
                if not mem[(32 * idx) + 140 len 20]:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if idx >= 3:
                    revert with 0, 50
                if s > !eth.balance(mem[(32 * idx) + 128]):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + eth.balance(mem[(32 * idx) + 128])
                continue 
            mem[288] = s
            if ('cd', 36).length > test266151307():
                revert with 0, 65
            mem[352] = ('cd', 36).length
            mem[64] = (32 * ('cd', 36).length) + 384
            if not ('cd', 36).length:
                idx = 0
                while idx < ('cd', 36).length:
                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                    _4270 = mem[96]
                    s = 0
                    t = 0
                    while s < _4270:
                        if s >= mem[96]:
                            revert with 0, 50
                        if not mem[(32 * s) + 140 len 20]:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t
                            continue 
                        if s >= mem[96]:
                            revert with 0, 50
                        _4376 = mem[(32 * s) + 128]
                        mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_4376)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4428 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t > !mem[_4428]:
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = t + mem[_4428]
                        continue 
                    if idx >= mem[352]:
                        revert with 0, 50
                    mem[(32 * idx) + 384] = t
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[320] = 352
                mem[mem[64] len 259] = code.data[7270 len 259]
                mem[mem[64] + 259] = address(cd[4])
                create contract with 0 wei
                                code: code.data[7270 len 259], address(cd[4])
                if create.new_address:
                    if gas_remaining < 45000:
                        revert with 0, 17
                    if 2 >= mem[96]:
                        revert with 0, 50
                    mem[192] = address(create.new_address)
                    if gas_remaining - 45000 < gas_remaining:
                        revert with 0, 17
                    _2997 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2997] = 0
                    mem[_2997 + 32] = 96
                    _2998 = mem[64]
                    mem[64] = mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < mem[96]:
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
                        if s > !eth.balance(mem[(32 * idx) + 128]):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + eth.balance(mem[(32 * idx) + 128])
                        continue 
                    mem[_2998] = s
                    if ('cd', 36).length > test266151307():
                        revert with 0, 65
                    _4374 = mem[64]
                    mem[mem[64]] = ('cd', 36).length
                    mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
                    if not ('cd', 36).length:
                        idx = 0
                        while idx < ('cd', 36).length:
                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                            _6756 = mem[96]
                            s = 0
                            t = 0
                            while s < _6756:
                                if s >= mem[96]:
                                    revert with 0, 50
                                if not mem[(32 * s) + 140 len 20]:
                                    if s == -1:
                                        revert with 0, 17
                                    s = s + 1
                                    t = t
                                    continue 
                                if s >= mem[96]:
                                    revert with 0, 50
                                _7296 = mem[(32 * s) + 128]
                                mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(_7296)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7524 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if t > !mem[_7524]:
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                t = t + mem[_7524]
                                continue 
                            if idx >= mem[_4374]:
                                revert with 0, 50
                            mem[(32 * idx) + _4374 + 32] = t
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[_2998 + 32] = _4374
                        _5600 = mem[288]
                        _5601 = mem[_2998]
                        if mem[_2998] < mem[288]:
                            revert with 0, 17
                        _5665 = mem[320]
                        _5726 = mem[_4374]
                        if mem[_4374] > test266151307():
                            revert with 0, 65
                        _5758 = mem[64]
                        mem[mem[64]] = mem[_4374]
                        mem[64] = mem[64] + (32 * _5726) + 32
                        if not _5726:
                            _6754 = mem[_4374]
                            idx = 0
                            while idx < _6754:
                                if idx >= mem[_5665]:
                                    revert with 0, 50
                                if idx >= mem[_4374]:
                                    revert with 0, 50
                                if mem[(32 * idx) + _4374 + 32] < mem[(32 * idx) + _5665 + 32]:
                                    revert with 0, 17
                                if idx >= mem[_5758]:
                                    revert with 0, 50
                                mem[(32 * idx) + _5758 + 32] = mem[(32 * idx) + _4374 + 32] - mem[(32 * idx) + _5665 + 32]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = _5601 - _5600
                            mem[mem[64] + 32] = 128
                            _7362 = mem[_5758]
                            mem[mem[64] + 128] = mem[_5758]
                            mem[mem[64] + 160 len 32 * _7362] = mem[_5758 + 32 len 32 * _7362]
                            mem[mem[64] + 64] = -45000
                            mem[mem[64] + 96] = 0
                            return _5601 - _5600, 128, -45000, 0, mem[mem[64] + 128 len (32 * _7362) + 32]
                        mem[_5758 + 32 len 32 * _5726] = call.data[calldata.size len 32 * _5726]
                        _6755 = mem[_4374]
                        idx = 0
                        while idx < _6755:
                            if idx >= mem[_5665]:
                                revert with 0, 50
                            if idx >= mem[_4374]:
                                revert with 0, 50
                            if mem[(32 * idx) + _4374 + 32] < mem[(32 * idx) + _5665 + 32]:
                                revert with 0, 17
                            if idx >= mem[_5758]:
                                revert with 0, 50
                            mem[(32 * idx) + _5758 + 32] = mem[(32 * idx) + _4374 + 32] - mem[(32 * idx) + _5665 + 32]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = _5601 - _5600
                        mem[mem[64] + 32] = 128
                        _7363 = mem[_5758]
                        mem[mem[64] + 128] = mem[_5758]
                        mem[mem[64] + 160 len 32 * _7363] = mem[_5758 + 32 len 32 * _7363]
                        mem[mem[64] + 64] = -45000
                        mem[mem[64] + 96] = 0
                        return _5601 - _5600, 128, -45000, 0, mem[mem[64] + 128 len (32 * _7363) + 32]
                    mem[_4374 + 32 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
                    idx = 0
                    while idx < ('cd', 36).length:
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        _6759 = mem[96]
                        s = 0
                        t = 0
                        while s < _6759:
                            if s >= mem[96]:
                                revert with 0, 50
                            if not mem[(32 * s) + 140 len 20]:
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                t = t
                                continue 
                            if s >= mem[96]:
                                revert with 0, 50
                            _7298 = mem[(32 * s) + 128]
                            mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_7298)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7527 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if t > !mem[_7527]:
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t + mem[_7527]
                            continue 
                        if idx >= mem[_4374]:
                            revert with 0, 50
                        mem[(32 * idx) + _4374 + 32] = t
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[_2998 + 32] = _4374
                    _5602 = mem[288]
                    _5603 = mem[_2998]
                    if mem[_2998] < mem[288]:
                        revert with 0, 17
                    _5667 = mem[320]
                    _5727 = mem[_4374]
                    if mem[_4374] > test266151307():
                        revert with 0, 65
                    _5759 = mem[64]
                    mem[mem[64]] = mem[_4374]
                    mem[64] = mem[64] + (32 * _5727) + 32
                    if not _5727:
                        _6757 = mem[_4374]
                        idx = 0
                        while idx < _6757:
                            if idx >= mem[_5667]:
                                revert with 0, 50
                            if idx >= mem[_4374]:
                                revert with 0, 50
                            if mem[(32 * idx) + _4374 + 32] < mem[(32 * idx) + _5667 + 32]:
                                revert with 0, 17
                            if idx >= mem[_5759]:
                                revert with 0, 50
                            mem[(32 * idx) + _5759 + 32] = mem[(32 * idx) + _4374 + 32] - mem[(32 * idx) + _5667 + 32]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = _5603 - _5602
                        mem[mem[64] + 32] = 128
                        _7365 = mem[_5759]
                        mem[mem[64] + 128] = mem[_5759]
                        mem[mem[64] + 160 len 32 * _7365] = mem[_5759 + 32 len 32 * _7365]
                        mem[mem[64] + 64] = -45000
                        mem[mem[64] + 96] = 0
                        return _5603 - _5602, 128, -45000, 0, mem[mem[64] + 128 len (32 * _7365) + 32]
                    mem[_5759 + 32 len 32 * _5727] = call.data[calldata.size len 32 * _5727]
                    _6758 = mem[_4374]
                    idx = 0
                    while idx < _6758:
                        if idx >= mem[_5667]:
                            revert with 0, 50
                        if idx >= mem[_4374]:
                            revert with 0, 50
                        if mem[(32 * idx) + _4374 + 32] < mem[(32 * idx) + _5667 + 32]:
                            revert with 0, 17
                        if idx >= mem[_5759]:
                            revert with 0, 50
                        mem[(32 * idx) + _5759 + 32] = mem[(32 * idx) + _4374 + 32] - mem[(32 * idx) + _5667 + 32]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = _5603 - _5602
                    mem[mem[64] + 32] = 128
                    _7366 = mem[_5759]
                    mem[mem[64] + 128] = mem[_5759]
                    mem[mem[64] + 160 len 32 * _7366] = mem[_5759 + 32 len 32 * _7366]
                    mem[mem[64] + 64] = -45000
                    mem[mem[64] + 96] = 0
                    return _5603 - _5602, 128, -45000, 0, mem[mem[64] + 128 len (32 * _7366) + 32]
                mem[mem[64]] = 0x4641257d00000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(cd[4]))
                call address(cd[4]).harvest() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if gas_remaining < gas_remaining:
                    revert with 0, 17
                _2948 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2948] = 0
                mem[_2948 + 32] = 96
                _2949 = mem[64]
                mem[64] = mem[64] + 64
                idx = 0
                s = 0
                while idx < mem[96]:
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
                    if s > !eth.balance(mem[(32 * idx) + 128]):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + eth.balance(mem[(32 * idx) + 128])
                    continue 
                mem[_2949] = s
                if ('cd', 36).length > test266151307():
                    revert with 0, 65
                _4372 = mem[64]
                mem[mem[64]] = ('cd', 36).length
                mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
                if not ('cd', 36).length:
                    idx = 0
                    while idx < ('cd', 36).length:
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        _6750 = mem[96]
                        s = 0
                        t = 0
                        while s < _6750:
                            if s >= mem[96]:
                                revert with 0, 50
                            if not mem[(32 * s) + 140 len 20]:
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                t = t
                                continue 
                            if s >= mem[96]:
                                revert with 0, 50
                            _7292 = mem[(32 * s) + 128]
                            mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_7292)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7518 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if t > !mem[_7518]:
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t + mem[_7518]
                            continue 
                        if idx >= mem[_4372]:
                            revert with 0, 50
                        mem[(32 * idx) + _4372 + 32] = t
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[_2949 + 32] = _4372
                    _5596 = mem[288]
                    _5597 = mem[_2949]
                    if mem[_2949] < mem[288]:
                        revert with 0, 17
                    _5661 = mem[320]
                    _5724 = mem[_4372]
                    if mem[_4372] > test266151307():
                        revert with 0, 65
                    _5756 = mem[64]
                    mem[mem[64]] = mem[_4372]
                    mem[64] = mem[64] + (32 * _5724) + 32
                    if not _5724:
                        _6748 = mem[_4372]
                        idx = 0
                        while idx < _6748:
                            if idx >= mem[_5661]:
                                revert with 0, 50
                            if idx >= mem[_4372]:
                                revert with 0, 50
                            if mem[(32 * idx) + _4372 + 32] < mem[(32 * idx) + _5661 + 32]:
                                revert with 0, 17
                            if idx >= mem[_5756]:
                                revert with 0, 50
                            mem[(32 * idx) + _5756 + 32] = mem[(32 * idx) + _4372 + 32] - mem[(32 * idx) + _5661 + 32]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = _5597 - _5596
                        mem[mem[64] + 32] = 128
                        _7356 = mem[_5756]
                        mem[mem[64] + 128] = mem[_5756]
                        mem[mem[64] + 160 len 32 * _7356] = mem[_5756 + 32 len 32 * _7356]
                        mem[mem[64] + 64] = 0
                        mem[mem[64] + 96] = 0
                        return _5597 - _5596, 128, 0, 0, mem[mem[64] + 128 len (32 * _7356) + 32]
                    mem[_5756 + 32 len 32 * _5724] = call.data[calldata.size len 32 * _5724]
                    _6749 = mem[_4372]
                    idx = 0
                    while idx < _6749:
                        if idx >= mem[_5661]:
                            revert with 0, 50
                        if idx >= mem[_4372]:
                            revert with 0, 50
                        if mem[(32 * idx) + _4372 + 32] < mem[(32 * idx) + _5661 + 32]:
                            revert with 0, 17
                        if idx >= mem[_5756]:
                            revert with 0, 50
                        mem[(32 * idx) + _5756 + 32] = mem[(32 * idx) + _4372 + 32] - mem[(32 * idx) + _5661 + 32]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = _5597 - _5596
                    mem[mem[64] + 32] = 128
                    _7357 = mem[_5756]
                    mem[mem[64] + 128] = mem[_5756]
                    mem[mem[64] + 160 len 32 * _7357] = mem[_5756 + 32 len 32 * _7357]
                    mem[mem[64] + 64] = 0
                    mem[mem[64] + 96] = 0
                    return _5597 - _5596, 128, 0, 0, mem[mem[64] + 128 len (32 * _7357) + 32]
                mem[_4372 + 32 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
                idx = 0
                while idx < ('cd', 36).length:
                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                    _6753 = mem[96]
                    s = 0
                    t = 0
                    while s < _6753:
                        if s >= mem[96]:
                            revert with 0, 50
                        if not mem[(32 * s) + 140 len 20]:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t
                            continue 
                        if s >= mem[96]:
                            revert with 0, 50
                        _7294 = mem[(32 * s) + 128]
                        mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_7294)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7521 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t > !mem[_7521]:
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = t + mem[_7521]
                        continue 
                    if idx >= mem[_4372]:
                        revert with 0, 50
                    mem[(32 * idx) + _4372 + 32] = t
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[_2949 + 32] = _4372
                _5598 = mem[288]
                _5599 = mem[_2949]
                if mem[_2949] < mem[288]:
                    revert with 0, 17
                _5663 = mem[320]
                _5725 = mem[_4372]
                if mem[_4372] > test266151307():
                    revert with 0, 65
                _5757 = mem[64]
                mem[mem[64]] = mem[_4372]
                mem[64] = mem[64] + (32 * _5725) + 32
                if not _5725:
                    _6751 = mem[_4372]
                    idx = 0
                    while idx < _6751:
                        if idx >= mem[_5663]:
                            revert with 0, 50
                        if idx >= mem[_4372]:
                            revert with 0, 50
                        if mem[(32 * idx) + _4372 + 32] < mem[(32 * idx) + _5663 + 32]:
                            revert with 0, 17
                        if idx >= mem[_5757]:
                            revert with 0, 50
                        mem[(32 * idx) + _5757 + 32] = mem[(32 * idx) + _4372 + 32] - mem[(32 * idx) + _5663 + 32]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = _5599 - _5598
                    mem[mem[64] + 32] = 128
                    _7359 = mem[_5757]
                    mem[mem[64] + 128] = mem[_5757]
                    mem[mem[64] + 160 len 32 * _7359] = mem[_5757 + 32 len 32 * _7359]
                    mem[mem[64] + 64] = 0
                    mem[mem[64] + 96] = 0
                    return _5599 - _5598, 128, 0, 0, mem[mem[64] + 128 len (32 * _7359) + 32]
                mem[_5757 + 32 len 32 * _5725] = call.data[calldata.size len 32 * _5725]
                _6752 = mem[_4372]
                idx = 0
                while idx < _6752:
                    if idx >= mem[_5663]:
                        revert with 0, 50
                    if idx >= mem[_4372]:
                        revert with 0, 50
                    if mem[(32 * idx) + _4372 + 32] < mem[(32 * idx) + _5663 + 32]:
                        revert with 0, 17
                    if idx >= mem[_5757]:
                        revert with 0, 50
                    mem[(32 * idx) + _5757 + 32] = mem[(32 * idx) + _4372 + 32] - mem[(32 * idx) + _5663 + 32]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[mem[64]] = _5599 - _5598
                mem[mem[64] + 32] = 128
                _7360 = mem[_5757]
                mem[mem[64] + 128] = mem[_5757]
                mem[mem[64] + 160 len 32 * _7360] = mem[_5757 + 32 len 32 * _7360]
                mem[mem[64] + 64] = 0
                mem[mem[64] + 96] = 0
                return _5599 - _5598, 128, 0, 0, mem[mem[64] + 128 len (32 * _7360) + 32]
            mem[384 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
            idx = 0
            while idx < ('cd', 36).length:
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                _4273 = mem[96]
                s = 0
                t = 0
                while s < _4273:
                    if s >= mem[96]:
                        revert with 0, 50
                    if not mem[(32 * s) + 140 len 20]:
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = t
                        continue 
                    if s >= mem[96]:
                        revert with 0, 50
                    _4382 = mem[(32 * s) + 128]
                    mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_4382)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4429 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if t > !mem[_4429]:
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t + mem[_4429]
                    continue 
                if idx >= mem[352]:
                    revert with 0, 50
                mem[(32 * idx) + 384] = t
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[320] = 352
            mem[mem[64] len 259] = code.data[7270 len 259]
            mem[mem[64] + 259] = address(cd[4])
            create contract with 0 wei
                            code: code.data[7270 len 259], address(cd[4])
            if create.new_address:
                if gas_remaining < 45000:
                    revert with 0, 17
                if 2 >= mem[96]:
                    revert with 0, 50
                mem[192] = address(create.new_address)
                if gas_remaining - 45000 < gas_remaining:
                    revert with 0, 17
                _3001 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3001] = 0
                mem[_3001 + 32] = 96
                _3002 = mem[64]
                mem[64] = mem[64] + 64
                idx = 0
                s = 0
                while idx < mem[96]:
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
                    if s > !eth.balance(mem[(32 * idx) + 128]):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + eth.balance(mem[(32 * idx) + 128])
                    continue 
                mem[_3002] = s
                if ('cd', 36).length > test266151307():
                    revert with 0, 65
                _4380 = mem[64]
                mem[mem[64]] = ('cd', 36).length
                mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
                if not ('cd', 36).length:
                    idx = 0
                    while idx < ('cd', 36).length:
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        _6768 = mem[96]
                        s = 0
                        t = 0
                        while s < _6768:
                            if s >= mem[96]:
                                revert with 0, 50
                            if not mem[(32 * s) + 140 len 20]:
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                t = t
                                continue 
                            if s >= mem[96]:
                                revert with 0, 50
                            _7304 = mem[(32 * s) + 128]
                            mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_7304)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7536 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if t > !mem[_7536]:
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t + mem[_7536]
                            continue 
                        if idx >= mem[_4380]:
                            revert with 0, 50
                        mem[(32 * idx) + _4380 + 32] = t
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[_3002 + 32] = _4380
                    _5608 = mem[288]
                    _5609 = mem[_3002]
                    if mem[_3002] < mem[288]:
                        revert with 0, 17
                    _5673 = mem[320]
                    _5730 = mem[_4380]
                    if mem[_4380] > test266151307():
                        revert with 0, 65
                    _5762 = mem[64]
                    mem[mem[64]] = mem[_4380]
                    mem[64] = mem[64] + (32 * _5730) + 32
                    if not _5730:
                        _6766 = mem[_4380]
                        idx = 0
                        while idx < _6766:
                            if idx >= mem[_5673]:
                                revert with 0, 50
                            if idx >= mem[_4380]:
                                revert with 0, 50
                            if mem[(32 * idx) + _4380 + 32] < mem[(32 * idx) + _5673 + 32]:
                                revert with 0, 17
                            if idx >= mem[_5762]:
                                revert with 0, 50
                            mem[(32 * idx) + _5762 + 32] = mem[(32 * idx) + _4380 + 32] - mem[(32 * idx) + _5673 + 32]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = _5609 - _5608
                        mem[mem[64] + 32] = 128
                        _7374 = mem[_5762]
                        mem[mem[64] + 128] = mem[_5762]
                        mem[mem[64] + 160 len 32 * _7374] = mem[_5762 + 32 len 32 * _7374]
                        mem[mem[64] + 64] = -45000
                        mem[mem[64] + 96] = 0
                        return _5609 - _5608, 128, -45000, 0, mem[mem[64] + 128 len (32 * _7374) + 32]
                    mem[_5762 + 32 len 32 * _5730] = call.data[calldata.size len 32 * _5730]
                    _6767 = mem[_4380]
                    idx = 0
                    while idx < _6767:
                        if idx >= mem[_5673]:
                            revert with 0, 50
                        if idx >= mem[_4380]:
                            revert with 0, 50
                        if mem[(32 * idx) + _4380 + 32] < mem[(32 * idx) + _5673 + 32]:
                            revert with 0, 17
                        if idx >= mem[_5762]:
                            revert with 0, 50
                        mem[(32 * idx) + _5762 + 32] = mem[(32 * idx) + _4380 + 32] - mem[(32 * idx) + _5673 + 32]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = _5609 - _5608
                    mem[mem[64] + 32] = 128
                    _7375 = mem[_5762]
                    mem[mem[64] + 128] = mem[_5762]
                    mem[mem[64] + 160 len 32 * _7375] = mem[_5762 + 32 len 32 * _7375]
                    mem[mem[64] + 64] = -45000
                    mem[mem[64] + 96] = 0
                    return _5609 - _5608, 128, -45000, 0, mem[mem[64] + 128 len (32 * _7375) + 32]
                mem[_4380 + 32 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
                idx = 0
                while idx < ('cd', 36).length:
                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                    _6771 = mem[96]
                    s = 0
                    t = 0
                    while s < _6771:
                        if s >= mem[96]:
                            revert with 0, 50
                        if not mem[(32 * s) + 140 len 20]:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t
                            continue 
                        if s >= mem[96]:
                            revert with 0, 50
                        _7306 = mem[(32 * s) + 128]
                        mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_7306)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7539 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t > !mem[_7539]:
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = t + mem[_7539]
                        continue 
                    if idx >= mem[_4380]:
                        revert with 0, 50
                    mem[(32 * idx) + _4380 + 32] = t
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[_3002 + 32] = _4380
                _5610 = mem[288]
                _5611 = mem[_3002]
                if mem[_3002] < mem[288]:
                    revert with 0, 17
                _5675 = mem[320]
                _5731 = mem[_4380]
                if mem[_4380] > test266151307():
                    revert with 0, 65
                _5763 = mem[64]
                mem[mem[64]] = mem[_4380]
                mem[64] = mem[64] + (32 * _5731) + 32
                if not _5731:
                    _6769 = mem[_4380]
                    idx = 0
                    while idx < _6769:
                        if idx >= mem[_5675]:
                            revert with 0, 50
                        if idx >= mem[_4380]:
                            revert with 0, 50
                        if mem[(32 * idx) + _4380 + 32] < mem[(32 * idx) + _5675 + 32]:
                            revert with 0, 17
                        if idx >= mem[_5763]:
                            revert with 0, 50
                        mem[(32 * idx) + _5763 + 32] = mem[(32 * idx) + _4380 + 32] - mem[(32 * idx) + _5675 + 32]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = _5611 - _5610
                    mem[mem[64] + 32] = 128
                    _7377 = mem[_5763]
                    mem[mem[64] + 128] = mem[_5763]
                    mem[mem[64] + 160 len 32 * _7377] = mem[_5763 + 32 len 32 * _7377]
                    mem[mem[64] + 64] = -45000
                    mem[mem[64] + 96] = 0
                    return _5611 - _5610, 128, -45000, 0, mem[mem[64] + 128 len (32 * _7377) + 32]
                mem[_5763 + 32 len 32 * _5731] = call.data[calldata.size len 32 * _5731]
                _6770 = mem[_4380]
                idx = 0
                while idx < _6770:
                    if idx >= mem[_5675]:
                        revert with 0, 50
                    if idx >= mem[_4380]:
                        revert with 0, 50
                    if mem[(32 * idx) + _4380 + 32] < mem[(32 * idx) + _5675 + 32]:
                        revert with 0, 17
                    if idx >= mem[_5763]:
                        revert with 0, 50
                    mem[(32 * idx) + _5763 + 32] = mem[(32 * idx) + _4380 + 32] - mem[(32 * idx) + _5675 + 32]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[mem[64]] = _5611 - _5610
                mem[mem[64] + 32] = 128
                _7378 = mem[_5763]
                mem[mem[64] + 128] = mem[_5763]
                mem[mem[64] + 160 len 32 * _7378] = mem[_5763 + 32 len 32 * _7378]
                mem[mem[64] + 64] = -45000
                mem[mem[64] + 96] = 0
                return _5611 - _5610, 128, -45000, 0, mem[mem[64] + 128 len (32 * _7378) + 32]
            mem[mem[64]] = 0x4641257d00000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(cd[4]))
            call address(cd[4]).harvest() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if gas_remaining < gas_remaining:
                revert with 0, 17
            _2952 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2952] = 0
            mem[_2952 + 32] = 96
            _2953 = mem[64]
            mem[64] = mem[64] + 64
            idx = 0
            s = 0
            while idx < mem[96]:
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
                if s > !eth.balance(mem[(32 * idx) + 128]):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + eth.balance(mem[(32 * idx) + 128])
                continue 
            mem[_2953] = s
            if ('cd', 36).length > test266151307():
                revert with 0, 65
            _4378 = mem[64]
            mem[mem[64]] = ('cd', 36).length
            mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
            if not ('cd', 36).length:
                idx = 0
                while idx < ('cd', 36).length:
                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                    _6762 = mem[96]
                    s = 0
                    t = 0
                    while s < _6762:
                        if s >= mem[96]:
                            revert with 0, 50
                        if not mem[(32 * s) + 140 len 20]:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t
                            continue 
                        if s >= mem[96]:
                            revert with 0, 50
                        _7300 = mem[(32 * s) + 128]
                        mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_7300)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7530 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t > !mem[_7530]:
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = t + mem[_7530]
                        continue 
                    if idx >= mem[_4378]:
                        revert with 0, 50
                    mem[(32 * idx) + _4378 + 32] = t
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[_2953 + 32] = _4378
                _5604 = mem[288]
                _5605 = mem[_2953]
                if mem[_2953] < mem[288]:
                    revert with 0, 17
                _5669 = mem[320]
                _5728 = mem[_4378]
                if mem[_4378] > test266151307():
                    revert with 0, 65
                _5760 = mem[64]
                mem[mem[64]] = mem[_4378]
                mem[64] = mem[64] + (32 * _5728) + 32
                if not _5728:
                    _6760 = mem[_4378]
                    idx = 0
                    while idx < _6760:
                        if idx >= mem[_5669]:
                            revert with 0, 50
                        if idx >= mem[_4378]:
                            revert with 0, 50
                        if mem[(32 * idx) + _4378 + 32] < mem[(32 * idx) + _5669 + 32]:
                            revert with 0, 17
                        if idx >= mem[_5760]:
                            revert with 0, 50
                        mem[(32 * idx) + _5760 + 32] = mem[(32 * idx) + _4378 + 32] - mem[(32 * idx) + _5669 + 32]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = _5605 - _5604
                    mem[mem[64] + 32] = 128
                    _7368 = mem[_5760]
                    mem[mem[64] + 128] = mem[_5760]
                    mem[mem[64] + 160 len 32 * _7368] = mem[_5760 + 32 len 32 * _7368]
                    mem[mem[64] + 64] = 0
                    mem[mem[64] + 96] = 0
                    return _5605 - _5604, 128, 0, 0, mem[mem[64] + 128 len (32 * _7368) + 32]
                mem[_5760 + 32 len 32 * _5728] = call.data[calldata.size len 32 * _5728]
                _6761 = mem[_4378]
                idx = 0
                while idx < _6761:
                    if idx >= mem[_5669]:
                        revert with 0, 50
                    if idx >= mem[_4378]:
                        revert with 0, 50
                    if mem[(32 * idx) + _4378 + 32] < mem[(32 * idx) + _5669 + 32]:
                        revert with 0, 17
                    if idx >= mem[_5760]:
                        revert with 0, 50
                    mem[(32 * idx) + _5760 + 32] = mem[(32 * idx) + _4378 + 32] - mem[(32 * idx) + _5669 + 32]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[mem[64]] = _5605 - _5604
                mem[mem[64] + 32] = 128
                _7369 = mem[_5760]
                mem[mem[64] + 128] = mem[_5760]
                mem[mem[64] + 160 len 32 * _7369] = mem[_5760 + 32 len 32 * _7369]
                mem[mem[64] + 64] = 0
                mem[mem[64] + 96] = 0
                return _5605 - _5604, 128, 0, 0, mem[mem[64] + 128 len (32 * _7369) + 32]
            mem[_4378 + 32 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
            idx = 0
            while idx < ('cd', 36).length:
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                _6765 = mem[96]
                s = 0
                t = 0
                while s < _6765:
                    if s >= mem[96]:
                        revert with 0, 50
                    if not mem[(32 * s) + 140 len 20]:
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = t
                        continue 
                    if s >= mem[96]:
                        revert with 0, 50
                    _7302 = mem[(32 * s) + 128]
                    mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_7302)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7533 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if t > !mem[_7533]:
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t + mem[_7533]
                    continue 
                if idx >= mem[_4378]:
                    revert with 0, 50
                mem[(32 * idx) + _4378 + 32] = t
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[_2953 + 32] = _4378
            _5606 = mem[288]
            _5607 = mem[_2953]
            if mem[_2953] < mem[288]:
                revert with 0, 17
            _5671 = mem[320]
            _5729 = mem[_4378]
            if mem[_4378] > test266151307():
                revert with 0, 65
            _5761 = mem[64]
            mem[mem[64]] = mem[_4378]
            mem[64] = mem[64] + (32 * _5729) + 32
            if not _5729:
                _6763 = mem[_4378]
                idx = 0
                while idx < _6763:
                    if idx >= mem[_5671]:
                        revert with 0, 50
                    if idx >= mem[_4378]:
                        revert with 0, 50
                    if mem[(32 * idx) + _4378 + 32] < mem[(32 * idx) + _5671 + 32]:
                        revert with 0, 17
                    if idx >= mem[_5761]:
                        revert with 0, 50
                    mem[(32 * idx) + _5761 + 32] = mem[(32 * idx) + _4378 + 32] - mem[(32 * idx) + _5671 + 32]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[mem[64]] = _5607 - _5606
                mem[mem[64] + 32] = 128
                _7371 = mem[_5761]
                mem[mem[64] + 128] = mem[_5761]
                mem[mem[64] + 160 len 32 * _7371] = mem[_5761 + 32 len 32 * _7371]
                mem[mem[64] + 64] = 0
                mem[mem[64] + 96] = 0
                return _5607 - _5606, 128, 0, 0, mem[mem[64] + 128 len (32 * _7371) + 32]
            mem[_5761 + 32 len 32 * _5729] = call.data[calldata.size len 32 * _5729]
            _6764 = mem[_4378]
            idx = 0
            while idx < _6764:
                if idx >= mem[_5671]:
                    revert with 0, 50
                if idx >= mem[_4378]:
                    revert with 0, 50
                if mem[(32 * idx) + _4378 + 32] < mem[(32 * idx) + _5671 + 32]:
                    revert with 0, 17
                if idx >= mem[_5761]:
                    revert with 0, 50
                mem[(32 * idx) + _5761 + 32] = mem[(32 * idx) + _4378 + 32] - mem[(32 * idx) + _5671 + 32]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = _5607 - _5606
            mem[mem[64] + 32] = 128
            _7372 = mem[_5761]
            mem[mem[64] + 128] = mem[_5761]
            mem[mem[64] + 160 len 32 * _7372] = mem[_5761 + 32 len 32 * _7372]
            mem[mem[64] + 64] = 0
            mem[mem[64] + 96] = 0
            return _5607 - _5606, 128, 0, 0, mem[mem[64] + 128 len (32 * _7372) + 32]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 224] = 0
        mem[ceil32(return_data.size) + 256] = 96
        idx = 0
        s = 0
        while idx < 3:
            if idx >= 3:
                revert with 0, 50
            if not mem[(32 * idx) + 140 len 20]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= 3:
                revert with 0, 50
            if s > !eth.balance(mem[(32 * idx) + 128]):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + eth.balance(mem[(32 * idx) + 128])
            continue 
        mem[ceil32(return_data.size) + 288] = s
        if ('cd', 36).length > test266151307():
            revert with 0, 65
        mem[ceil32(return_data.size) + 352] = ('cd', 36).length
        mem[64] = ceil32(return_data.size) + (32 * ('cd', 36).length) + 384
        if not ('cd', 36).length:
            idx = 0
            while idx < ('cd', 36).length:
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                _4276 = mem[96]
                s = 0
                t = 0
                while s < _4276:
                    if s >= mem[96]:
                        revert with 0, 50
                    if not mem[(32 * s) + 140 len 20]:
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = t
                        continue 
                    if s >= mem[96]:
                        revert with 0, 50
                    _4388 = mem[(32 * s) + 128]
                    mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_4388)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4430 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if t > !mem[_4430]:
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t + mem[_4430]
                    continue 
                if idx >= mem[ceil32(return_data.size) + 352]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(return_data.size) + 384] = t
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[ceil32(return_data.size) + 320] = ceil32(return_data.size) + 352
            mem[mem[64] len 259] = code.data[7270 len 259]
            mem[mem[64] + 259] = address(cd[4])
            create contract with 0 wei
                            code: code.data[7270 len 259], address(cd[4])
            if create.new_address:
                if gas_remaining < 45000:
                    revert with 0, 17
                if 2 >= mem[96]:
                    revert with 0, 50
                mem[192] = address(create.new_address)
                if gas_remaining - 45000 < gas_remaining:
                    revert with 0, 17
                _3005 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3005] = 0
                mem[_3005 + 32] = 96
                _3006 = mem[64]
                mem[64] = mem[64] + 64
                idx = 0
                s = 0
                while idx < mem[96]:
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
                    if s > !eth.balance(mem[(32 * idx) + 128]):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + eth.balance(mem[(32 * idx) + 128])
                    continue 
                mem[_3006] = s
                if ('cd', 36).length > test266151307():
                    revert with 0, 65
                _4386 = mem[64]
                mem[mem[64]] = ('cd', 36).length
                mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
                if not ('cd', 36).length:
                    idx = 0
                    while idx < ('cd', 36).length:
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        _6780 = mem[96]
                        s = 0
                        t = 0
                        while s < _6780:
                            if s >= mem[96]:
                                revert with 0, 50
                            if not mem[(32 * s) + 140 len 20]:
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                t = t
                                continue 
                            if s >= mem[96]:
                                revert with 0, 50
                            _7312 = mem[(32 * s) + 128]
                            mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_7312)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7548 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if t > !mem[_7548]:
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t + mem[_7548]
                            continue 
                        if idx >= mem[_4386]:
                            revert with 0, 50
                        mem[(32 * idx) + _4386 + 32] = t
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[_3006 + 32] = _4386
                    _5616 = mem[ceil32(return_data.size) + 288]
                    _5617 = mem[_3006]
                    if mem[_3006] < mem[ceil32(return_data.size) + 288]:
                        revert with 0, 17
                    _5681 = mem[ceil32(return_data.size) + 320]
                    _5734 = mem[_4386]
                    if mem[_4386] > test266151307():
                        revert with 0, 65
                    _5766 = mem[64]
                    mem[mem[64]] = mem[_4386]
                    mem[64] = mem[64] + (32 * _5734) + 32
                    if not _5734:
                        _6778 = mem[_4386]
                        idx = 0
                        while idx < _6778:
                            if idx >= mem[_5681]:
                                revert with 0, 50
                            if idx >= mem[_4386]:
                                revert with 0, 50
                            if mem[(32 * idx) + _4386 + 32] < mem[(32 * idx) + _5681 + 32]:
                                revert with 0, 17
                            if idx >= mem[_5766]:
                                revert with 0, 50
                            mem[(32 * idx) + _5766 + 32] = mem[(32 * idx) + _4386 + 32] - mem[(32 * idx) + _5681 + 32]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = _5617 - _5616
                        mem[mem[64] + 32] = 128
                        _7386 = mem[_5766]
                        mem[mem[64] + 128] = mem[_5766]
                        mem[mem[64] + 160 len 32 * _7386] = mem[_5766 + 32 len 32 * _7386]
                        mem[mem[64] + 64] = -45000
                        mem[mem[64] + 96] = ext_call.return_data[0]
                        return _5617 - _5616, 128, -45000, ext_call.return_data[0], mem[mem[64] + 128 len (32 * _7386) + 32]
                    mem[_5766 + 32 len 32 * _5734] = call.data[calldata.size len 32 * _5734]
                    _6779 = mem[_4386]
                    idx = 0
                    while idx < _6779:
                        if idx >= mem[_5681]:
                            revert with 0, 50
                        if idx >= mem[_4386]:
                            revert with 0, 50
                        if mem[(32 * idx) + _4386 + 32] < mem[(32 * idx) + _5681 + 32]:
                            revert with 0, 17
                        if idx >= mem[_5766]:
                            revert with 0, 50
                        mem[(32 * idx) + _5766 + 32] = mem[(32 * idx) + _4386 + 32] - mem[(32 * idx) + _5681 + 32]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = _5617 - _5616
                    mem[mem[64] + 32] = 128
                    _7387 = mem[_5766]
                    mem[mem[64] + 128] = mem[_5766]
                    mem[mem[64] + 160 len 32 * _7387] = mem[_5766 + 32 len 32 * _7387]
                    mem[mem[64] + 64] = -45000
                    mem[mem[64] + 96] = ext_call.return_data[0]
                    return _5617 - _5616, 128, -45000, ext_call.return_data[0], mem[mem[64] + 128 len (32 * _7387) + 32]
                mem[_4386 + 32 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
                idx = 0
                while idx < ('cd', 36).length:
                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                    _6783 = mem[96]
                    s = 0
                    t = 0
                    while s < _6783:
                        if s >= mem[96]:
                            revert with 0, 50
                        if not mem[(32 * s) + 140 len 20]:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t
                            continue 
                        if s >= mem[96]:
                            revert with 0, 50
                        _7314 = mem[(32 * s) + 128]
                        mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_7314)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7551 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t > !mem[_7551]:
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = t + mem[_7551]
                        continue 
                    if idx >= mem[_4386]:
                        revert with 0, 50
                    mem[(32 * idx) + _4386 + 32] = t
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[_3006 + 32] = _4386
                _5618 = mem[ceil32(return_data.size) + 288]
                _5619 = mem[_3006]
                if mem[_3006] < mem[ceil32(return_data.size) + 288]:
                    revert with 0, 17
                _5683 = mem[ceil32(return_data.size) + 320]
                _5735 = mem[_4386]
                if mem[_4386] > test266151307():
                    revert with 0, 65
                _5767 = mem[64]
                mem[mem[64]] = mem[_4386]
                mem[64] = mem[64] + (32 * _5735) + 32
                if not _5735:
                    _6781 = mem[_4386]
                    idx = 0
                    while idx < _6781:
                        if idx >= mem[_5683]:
                            revert with 0, 50
                        if idx >= mem[_4386]:
                            revert with 0, 50
                        if mem[(32 * idx) + _4386 + 32] < mem[(32 * idx) + _5683 + 32]:
                            revert with 0, 17
                        if idx >= mem[_5767]:
                            revert with 0, 50
                        mem[(32 * idx) + _5767 + 32] = mem[(32 * idx) + _4386 + 32] - mem[(32 * idx) + _5683 + 32]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = _5619 - _5618
                    mem[mem[64] + 32] = 128
                    _7389 = mem[_5767]
                    mem[mem[64] + 128] = mem[_5767]
                    mem[mem[64] + 160 len 32 * _7389] = mem[_5767 + 32 len 32 * _7389]
                    mem[mem[64] + 64] = -45000
                    mem[mem[64] + 96] = ext_call.return_data[0]
                    return _5619 - _5618, 128, -45000, ext_call.return_data[0], mem[mem[64] + 128 len (32 * _7389) + 32]
                mem[_5767 + 32 len 32 * _5735] = call.data[calldata.size len 32 * _5735]
                _6782 = mem[_4386]
                idx = 0
                while idx < _6782:
                    if idx >= mem[_5683]:
                        revert with 0, 50
                    if idx >= mem[_4386]:
                        revert with 0, 50
                    if mem[(32 * idx) + _4386 + 32] < mem[(32 * idx) + _5683 + 32]:
                        revert with 0, 17
                    if idx >= mem[_5767]:
                        revert with 0, 50
                    mem[(32 * idx) + _5767 + 32] = mem[(32 * idx) + _4386 + 32] - mem[(32 * idx) + _5683 + 32]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[mem[64]] = _5619 - _5618
                mem[mem[64] + 32] = 128
                _7390 = mem[_5767]
                mem[mem[64] + 128] = mem[_5767]
                mem[mem[64] + 160 len 32 * _7390] = mem[_5767 + 32 len 32 * _7390]
                mem[mem[64] + 64] = -45000
                mem[mem[64] + 96] = ext_call.return_data[0]
                return _5619 - _5618, 128, -45000, ext_call.return_data[0], mem[mem[64] + 128 len (32 * _7390) + 32]
            mem[mem[64]] = 0x4641257d00000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(cd[4]))
            call address(cd[4]).harvest() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if gas_remaining < gas_remaining:
                revert with 0, 17
            _2956 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2956] = 0
            mem[_2956 + 32] = 96
            _2957 = mem[64]
            mem[64] = mem[64] + 64
            idx = 0
            s = 0
            while idx < mem[96]:
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
                if s > !eth.balance(mem[(32 * idx) + 128]):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + eth.balance(mem[(32 * idx) + 128])
                continue 
            mem[_2957] = s
            if ('cd', 36).length > test266151307():
                revert with 0, 65
            _4384 = mem[64]
            mem[mem[64]] = ('cd', 36).length
            mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
            if not ('cd', 36).length:
                idx = 0
                while idx < ('cd', 36).length:
                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                    _6774 = mem[96]
                    s = 0
                    t = 0
                    while s < _6774:
                        if s >= mem[96]:
                            revert with 0, 50
                        if not mem[(32 * s) + 140 len 20]:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t
                            continue 
                        if s >= mem[96]:
                            revert with 0, 50
                        _7308 = mem[(32 * s) + 128]
                        mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_7308)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7542 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t > !mem[_7542]:
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = t + mem[_7542]
                        continue 
                    if idx >= mem[_4384]:
                        revert with 0, 50
                    mem[(32 * idx) + _4384 + 32] = t
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[_2957 + 32] = _4384
                _5612 = mem[ceil32(return_data.size) + 288]
                _5613 = mem[_2957]
                if mem[_2957] < mem[ceil32(return_data.size) + 288]:
                    revert with 0, 17
                _5677 = mem[ceil32(return_data.size) + 320]
                _5732 = mem[_4384]
                if mem[_4384] > test266151307():
                    revert with 0, 65
                _5764 = mem[64]
                mem[mem[64]] = mem[_4384]
                mem[64] = mem[64] + (32 * _5732) + 32
                if not _5732:
                    _6772 = mem[_4384]
                    idx = 0
                    while idx < _6772:
                        if idx >= mem[_5677]:
                            revert with 0, 50
                        if idx >= mem[_4384]:
                            revert with 0, 50
                        if mem[(32 * idx) + _4384 + 32] < mem[(32 * idx) + _5677 + 32]:
                            revert with 0, 17
                        if idx >= mem[_5764]:
                            revert with 0, 50
                        mem[(32 * idx) + _5764 + 32] = mem[(32 * idx) + _4384 + 32] - mem[(32 * idx) + _5677 + 32]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = _5613 - _5612
                    mem[mem[64] + 32] = 128
                    _7380 = mem[_5764]
                    mem[mem[64] + 128] = mem[_5764]
                    mem[mem[64] + 160 len 32 * _7380] = mem[_5764 + 32 len 32 * _7380]
                    mem[mem[64] + 64] = 0
                    mem[mem[64] + 96] = ext_call.return_data[0]
                    return _5613 - _5612, 128, 0, ext_call.return_data[0], mem[mem[64] + 128 len (32 * _7380) + 32]
                mem[_5764 + 32 len 32 * _5732] = call.data[calldata.size len 32 * _5732]
                _6773 = mem[_4384]
                idx = 0
                while idx < _6773:
                    if idx >= mem[_5677]:
                        revert with 0, 50
                    if idx >= mem[_4384]:
                        revert with 0, 50
                    if mem[(32 * idx) + _4384 + 32] < mem[(32 * idx) + _5677 + 32]:
                        revert with 0, 17
                    if idx >= mem[_5764]:
                        revert with 0, 50
                    mem[(32 * idx) + _5764 + 32] = mem[(32 * idx) + _4384 + 32] - mem[(32 * idx) + _5677 + 32]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[mem[64]] = _5613 - _5612
                mem[mem[64] + 32] = 128
                _7381 = mem[_5764]
                mem[mem[64] + 128] = mem[_5764]
                mem[mem[64] + 160 len 32 * _7381] = mem[_5764 + 32 len 32 * _7381]
                mem[mem[64] + 64] = 0
                mem[mem[64] + 96] = ext_call.return_data[0]
                return _5613 - _5612, 128, 0, ext_call.return_data[0], mem[mem[64] + 128 len (32 * _7381) + 32]
            mem[_4384 + 32 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
            idx = 0
            while idx < ('cd', 36).length:
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                _6777 = mem[96]
                s = 0
                t = 0
                while s < _6777:
                    if s >= mem[96]:
                        revert with 0, 50
                    if not mem[(32 * s) + 140 len 20]:
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = t
                        continue 
                    if s >= mem[96]:
                        revert with 0, 50
                    _7310 = mem[(32 * s) + 128]
                    mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_7310)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7545 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if t > !mem[_7545]:
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t + mem[_7545]
                    continue 
                if idx >= mem[_4384]:
                    revert with 0, 50
                mem[(32 * idx) + _4384 + 32] = t
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[_2957 + 32] = _4384
            _5614 = mem[ceil32(return_data.size) + 288]
            _5615 = mem[_2957]
            if mem[_2957] < mem[ceil32(return_data.size) + 288]:
                revert with 0, 17
            _5679 = mem[ceil32(return_data.size) + 320]
            _5733 = mem[_4384]
            if mem[_4384] > test266151307():
                revert with 0, 65
            _5765 = mem[64]
            mem[mem[64]] = mem[_4384]
            mem[64] = mem[64] + (32 * _5733) + 32
            if not _5733:
                _6775 = mem[_4384]
                idx = 0
                while idx < _6775:
                    if idx >= mem[_5679]:
                        revert with 0, 50
                    if idx >= mem[_4384]:
                        revert with 0, 50
                    if mem[(32 * idx) + _4384 + 32] < mem[(32 * idx) + _5679 + 32]:
                        revert with 0, 17
                    if idx >= mem[_5765]:
                        revert with 0, 50
                    mem[(32 * idx) + _5765 + 32] = mem[(32 * idx) + _4384 + 32] - mem[(32 * idx) + _5679 + 32]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[mem[64]] = _5615 - _5614
                mem[mem[64] + 32] = 128
                _7383 = mem[_5765]
                mem[mem[64] + 128] = mem[_5765]
                mem[mem[64] + 160 len 32 * _7383] = mem[_5765 + 32 len 32 * _7383]
                mem[mem[64] + 64] = 0
                mem[mem[64] + 96] = ext_call.return_data[0]
                return _5615 - _5614, 128, 0, ext_call.return_data[0], mem[mem[64] + 128 len (32 * _7383) + 32]
            mem[_5765 + 32 len 32 * _5733] = call.data[calldata.size len 32 * _5733]
            _6776 = mem[_4384]
            idx = 0
            while idx < _6776:
                if idx >= mem[_5679]:
                    revert with 0, 50
                if idx >= mem[_4384]:
                    revert with 0, 50
                if mem[(32 * idx) + _4384 + 32] < mem[(32 * idx) + _5679 + 32]:
                    revert with 0, 17
                if idx >= mem[_5765]:
                    revert with 0, 50
                mem[(32 * idx) + _5765 + 32] = mem[(32 * idx) + _4384 + 32] - mem[(32 * idx) + _5679 + 32]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = _5615 - _5614
            mem[mem[64] + 32] = 128
            _7384 = mem[_5765]
            mem[mem[64] + 128] = mem[_5765]
            mem[mem[64] + 160 len 32 * _7384] = mem[_5765 + 32 len 32 * _7384]
            mem[mem[64] + 64] = 0
            mem[mem[64] + 96] = ext_call.return_data[0]
            return _5615 - _5614, 128, 0, ext_call.return_data[0], mem[mem[64] + 128 len (32 * _7384) + 32]
        mem[ceil32(return_data.size) + 384 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            _4279 = mem[96]
            s = 0
            t = 0
            while s < _4279:
                if s >= mem[96]:
                    revert with 0, 50
                if not mem[(32 * s) + 140 len 20]:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t
                    continue 
                if s >= mem[96]:
                    revert with 0, 50
                _4394 = mem[(32 * s) + 128]
                mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_4394)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4431 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if t > !mem[_4431]:
                    revert with 0, 17
                if s == -1:
                    revert with 0, 17
                s = s + 1
                t = t + mem[_4431]
                continue 
            if idx >= mem[ceil32(return_data.size) + 352]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(return_data.size) + 384] = t
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[ceil32(return_data.size) + 320] = ceil32(return_data.size) + 352
        mem[mem[64] len 259] = code.data[7270 len 259]
        mem[mem[64] + 259] = address(cd[4])
        create contract with 0 wei
                        code: code.data[7270 len 259], address(cd[4])
        if create.new_address:
            if gas_remaining < 45000:
                revert with 0, 17
            if 2 >= mem[96]:
                revert with 0, 50
            mem[192] = address(create.new_address)
            if gas_remaining - 45000 < gas_remaining:
                revert with 0, 17
            _3009 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3009] = 0
            mem[_3009 + 32] = 96
            _3010 = mem[64]
            mem[64] = mem[64] + 64
            idx = 0
            s = 0
            while idx < mem[96]:
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
                if s > !eth.balance(mem[(32 * idx) + 128]):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + eth.balance(mem[(32 * idx) + 128])
                continue 
            mem[_3010] = s
            if ('cd', 36).length > test266151307():
                revert with 0, 65
            _4392 = mem[64]
            mem[mem[64]] = ('cd', 36).length
            mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
            if not ('cd', 36).length:
                idx = 0
                while idx < ('cd', 36).length:
                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                    _6792 = mem[96]
                    s = 0
                    t = 0
                    while s < _6792:
                        if s >= mem[96]:
                            revert with 0, 50
                        if not mem[(32 * s) + 140 len 20]:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t
                            continue 
                        if s >= mem[96]:
                            revert with 0, 50
                        _7320 = mem[(32 * s) + 128]
                        mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_7320)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7560 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t > !mem[_7560]:
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = t + mem[_7560]
                        continue 
                    if idx >= mem[_4392]:
                        revert with 0, 50
                    mem[(32 * idx) + _4392 + 32] = t
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[_3010 + 32] = _4392
                _5624 = mem[ceil32(return_data.size) + 288]
                _5625 = mem[_3010]
                if mem[_3010] < mem[ceil32(return_data.size) + 288]:
                    revert with 0, 17
                _5689 = mem[ceil32(return_data.size) + 320]
                _5738 = mem[_4392]
                if mem[_4392] > test266151307():
                    revert with 0, 65
                _5770 = mem[64]
                mem[mem[64]] = mem[_4392]
                mem[64] = mem[64] + (32 * _5738) + 32
                if not _5738:
                    _6790 = mem[_4392]
                    idx = 0
                    while idx < _6790:
                        if idx >= mem[_5689]:
                            revert with 0, 50
                        if idx >= mem[_4392]:
                            revert with 0, 50
                        if mem[(32 * idx) + _4392 + 32] < mem[(32 * idx) + _5689 + 32]:
                            revert with 0, 17
                        if idx >= mem[_5770]:
                            revert with 0, 50
                        mem[(32 * idx) + _5770 + 32] = mem[(32 * idx) + _4392 + 32] - mem[(32 * idx) + _5689 + 32]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = _5625 - _5624
                    mem[mem[64] + 32] = 128
                    _7398 = mem[_5770]
                    mem[mem[64] + 128] = mem[_5770]
                    mem[mem[64] + 160 len 32 * _7398] = mem[_5770 + 32 len 32 * _7398]
                    mem[mem[64] + 64] = -45000
                    mem[mem[64] + 96] = ext_call.return_data[0]
                    return _5625 - _5624, 128, -45000, ext_call.return_data[0], mem[mem[64] + 128 len (32 * _7398) + 32]
                mem[_5770 + 32 len 32 * _5738] = call.data[calldata.size len 32 * _5738]
                _6791 = mem[_4392]
                idx = 0
                while idx < _6791:
                    if idx >= mem[_5689]:
                        revert with 0, 50
                    if idx >= mem[_4392]:
                        revert with 0, 50
                    if mem[(32 * idx) + _4392 + 32] < mem[(32 * idx) + _5689 + 32]:
                        revert with 0, 17
                    if idx >= mem[_5770]:
                        revert with 0, 50
                    mem[(32 * idx) + _5770 + 32] = mem[(32 * idx) + _4392 + 32] - mem[(32 * idx) + _5689 + 32]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[mem[64]] = _5625 - _5624
                mem[mem[64] + 32] = 128
                _7399 = mem[_5770]
                mem[mem[64] + 128] = mem[_5770]
                mem[mem[64] + 160 len 32 * _7399] = mem[_5770 + 32 len 32 * _7399]
                mem[mem[64] + 64] = -45000
                mem[mem[64] + 96] = ext_call.return_data[0]
                return _5625 - _5624, 128, -45000, ext_call.return_data[0], mem[mem[64] + 128 len (32 * _7399) + 32]
            mem[_4392 + 32 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
            idx = 0
            while idx < ('cd', 36).length:
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                _6795 = mem[96]
                s = 0
                t = 0
                while s < _6795:
                    if s >= mem[96]:
                        revert with 0, 50
                    if not mem[(32 * s) + 140 len 20]:
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = t
                        continue 
                    if s >= mem[96]:
                        revert with 0, 50
                    _7322 = mem[(32 * s) + 128]
                    mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_7322)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7563 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if t > !mem[_7563]:
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t + mem[_7563]
                    continue 
                if idx >= mem[_4392]:
                    revert with 0, 50
                mem[(32 * idx) + _4392 + 32] = t
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[_3010 + 32] = _4392
            _5626 = mem[ceil32(return_data.size) + 288]
            _5627 = mem[_3010]
            if mem[_3010] < mem[ceil32(return_data.size) + 288]:
                revert with 0, 17
            _5691 = mem[ceil32(return_data.size) + 320]
            _5739 = mem[_4392]
            if mem[_4392] > test266151307():
                revert with 0, 65
            _5771 = mem[64]
            mem[mem[64]] = mem[_4392]
            mem[64] = mem[64] + (32 * _5739) + 32
            if not _5739:
                _6793 = mem[_4392]
                idx = 0
                while idx < _6793:
                    if idx >= mem[_5691]:
                        revert with 0, 50
                    if idx >= mem[_4392]:
                        revert with 0, 50
                    if mem[(32 * idx) + _4392 + 32] < mem[(32 * idx) + _5691 + 32]:
                        revert with 0, 17
                    if idx >= mem[_5771]:
                        revert with 0, 50
                    mem[(32 * idx) + _5771 + 32] = mem[(32 * idx) + _4392 + 32] - mem[(32 * idx) + _5691 + 32]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[mem[64]] = _5627 - _5626
                mem[mem[64] + 32] = 128
                _7401 = mem[_5771]
                mem[mem[64] + 128] = mem[_5771]
                mem[mem[64] + 160 len 32 * _7401] = mem[_5771 + 32 len 32 * _7401]
                mem[mem[64] + 64] = -45000
                mem[mem[64] + 96] = ext_call.return_data[0]
                return _5627 - _5626, 128, -45000, ext_call.return_data[0], mem[mem[64] + 128 len (32 * _7401) + 32]
            mem[_5771 + 32 len 32 * _5739] = call.data[calldata.size len 32 * _5739]
            _6794 = mem[_4392]
            idx = 0
            while idx < _6794:
                if idx >= mem[_5691]:
                    revert with 0, 50
                if idx >= mem[_4392]:
                    revert with 0, 50
                if mem[(32 * idx) + _4392 + 32] < mem[(32 * idx) + _5691 + 32]:
                    revert with 0, 17
                if idx >= mem[_5771]:
                    revert with 0, 50
                mem[(32 * idx) + _5771 + 32] = mem[(32 * idx) + _4392 + 32] - mem[(32 * idx) + _5691 + 32]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = _5627 - _5626
            mem[mem[64] + 32] = 128
            _7402 = mem[_5771]
            mem[mem[64] + 128] = mem[_5771]
            mem[mem[64] + 160 len 32 * _7402] = mem[_5771 + 32 len 32 * _7402]
            mem[mem[64] + 64] = -45000
            mem[mem[64] + 96] = ext_call.return_data[0]
            return _5627 - _5626, 128, -45000, ext_call.return_data[0], mem[mem[64] + 128 len (32 * _7402) + 32]
        mem[mem[64]] = 0x4641257d00000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(cd[4]))
        call address(cd[4]).harvest() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if gas_remaining < gas_remaining:
            revert with 0, 17
        _2960 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2960] = 0
        mem[_2960 + 32] = 96
        _2961 = mem[64]
        mem[64] = mem[64] + 64
        idx = 0
        s = 0
        while idx < mem[96]:
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
            if s > !eth.balance(mem[(32 * idx) + 128]):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + eth.balance(mem[(32 * idx) + 128])
            continue 
        mem[_2961] = s
        if ('cd', 36).length > test266151307():
            revert with 0, 65
        _4390 = mem[64]
        mem[mem[64]] = ('cd', 36).length
        mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
        if not ('cd', 36).length:
            idx = 0
            while idx < ('cd', 36).length:
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                _6786 = mem[96]
                s = 0
                t = 0
                while s < _6786:
                    if s >= mem[96]:
                        revert with 0, 50
                    if not mem[(32 * s) + 140 len 20]:
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = t
                        continue 
                    if s >= mem[96]:
                        revert with 0, 50
                    _7316 = mem[(32 * s) + 128]
                    mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_7316)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7554 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if t > !mem[_7554]:
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t + mem[_7554]
                    continue 
                if idx >= mem[_4390]:
                    revert with 0, 50
                mem[(32 * idx) + _4390 + 32] = t
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[_2961 + 32] = _4390
            _5620 = mem[ceil32(return_data.size) + 288]
            _5621 = mem[_2961]
            if mem[_2961] < mem[ceil32(return_data.size) + 288]:
                revert with 0, 17
            _5685 = mem[ceil32(return_data.size) + 320]
            _5736 = mem[_4390]
            if mem[_4390] > test266151307():
                revert with 0, 65
            _5768 = mem[64]
            mem[mem[64]] = mem[_4390]
            mem[64] = mem[64] + (32 * _5736) + 32
            if not _5736:
                _6784 = mem[_4390]
                idx = 0
                while idx < _6784:
                    if idx >= mem[_5685]:
                        revert with 0, 50
                    if idx >= mem[_4390]:
                        revert with 0, 50
                    if mem[(32 * idx) + _4390 + 32] < mem[(32 * idx) + _5685 + 32]:
                        revert with 0, 17
                    if idx >= mem[_5768]:
                        revert with 0, 50
                    mem[(32 * idx) + _5768 + 32] = mem[(32 * idx) + _4390 + 32] - mem[(32 * idx) + _5685 + 32]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[mem[64]] = _5621 - _5620
                mem[mem[64] + 32] = 128
                _7392 = mem[_5768]
                mem[mem[64] + 128] = mem[_5768]
                mem[mem[64] + 160 len 32 * _7392] = mem[_5768 + 32 len 32 * _7392]
                mem[mem[64] + 64] = 0
                mem[mem[64] + 96] = ext_call.return_data[0]
                return _5621 - _5620, 128, 0, ext_call.return_data[0], mem[mem[64] + 128 len (32 * _7392) + 32]
            mem[_5768 + 32 len 32 * _5736] = call.data[calldata.size len 32 * _5736]
            _6785 = mem[_4390]
            idx = 0
            while idx < _6785:
                if idx >= mem[_5685]:
                    revert with 0, 50
                if idx >= mem[_4390]:
                    revert with 0, 50
                if mem[(32 * idx) + _4390 + 32] < mem[(32 * idx) + _5685 + 32]:
                    revert with 0, 17
                if idx >= mem[_5768]:
                    revert with 0, 50
                mem[(32 * idx) + _5768 + 32] = mem[(32 * idx) + _4390 + 32] - mem[(32 * idx) + _5685 + 32]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = _5621 - _5620
            mem[mem[64] + 32] = 128
            _7393 = mem[_5768]
            mem[mem[64] + 128] = mem[_5768]
            mem[mem[64] + 160 len 32 * _7393] = mem[_5768 + 32 len 32 * _7393]
            mem[mem[64] + 64] = 0
            mem[mem[64] + 96] = ext_call.return_data[0]
            return _5621 - _5620, 128, 0, ext_call.return_data[0], mem[mem[64] + 128 len (32 * _7393) + 32]
        mem[_4390 + 32 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            _6789 = mem[96]
            s = 0
            t = 0
            while s < _6789:
                if s >= mem[96]:
                    revert with 0, 50
                if not mem[(32 * s) + 140 len 20]:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t
                    continue 
                if s >= mem[96]:
                    revert with 0, 50
                _7318 = mem[(32 * s) + 128]
                mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_7318)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7557 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if t > !mem[_7557]:
                    revert with 0, 17
                if s == -1:
                    revert with 0, 17
                s = s + 1
                t = t + mem[_7557]
                continue 
            if idx >= mem[_4390]:
                revert with 0, 50
            mem[(32 * idx) + _4390 + 32] = t
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[_2961 + 32] = _4390
        _5622 = mem[ceil32(return_data.size) + 288]
        _5623 = mem[_2961]
        if mem[_2961] < mem[ceil32(return_data.size) + 288]:
            revert with 0, 17
        _5687 = mem[ceil32(return_data.size) + 320]
        _5737 = mem[_4390]
        if mem[_4390] > test266151307():
            revert with 0, 65
        _5769 = mem[64]
        mem[mem[64]] = mem[_4390]
        mem[64] = mem[64] + (32 * _5737) + 32
        if not _5737:
            _6787 = mem[_4390]
            idx = 0
            while idx < _6787:
                if idx >= mem[_5687]:
                    revert with 0, 50
                if idx >= mem[_4390]:
                    revert with 0, 50
                if mem[(32 * idx) + _4390 + 32] < mem[(32 * idx) + _5687 + 32]:
                    revert with 0, 17
                if idx >= mem[_5769]:
                    revert with 0, 50
                mem[(32 * idx) + _5769 + 32] = mem[(32 * idx) + _4390 + 32] - mem[(32 * idx) + _5687 + 32]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = _5623 - _5622
            mem[mem[64] + 32] = 128
            _7395 = mem[_5769]
            mem[mem[64] + 128] = mem[_5769]
            mem[mem[64] + 160 len 32 * _7395] = mem[_5769 + 32 len 32 * _7395]
            mem[mem[64] + 64] = 0
            mem[mem[64] + 96] = ext_call.return_data[0]
            return _5623 - _5622, 128, 0, ext_call.return_data[0], mem[mem[64] + 128 len (32 * _7395) + 32]
        mem[_5769 + 32 len 32 * _5737] = call.data[calldata.size len 32 * _5737]
        _6788 = mem[_4390]
        idx = 0
        while idx < _6788:
            if idx >= mem[_5687]:
                revert with 0, 50
            if idx >= mem[_4390]:
                revert with 0, 50
            if mem[(32 * idx) + _4390 + 32] < mem[(32 * idx) + _5687 + 32]:
                revert with 0, 17
            if idx >= mem[_5769]:
                revert with 0, 50
            mem[(32 * idx) + _5769 + 32] = mem[(32 * idx) + _4390 + 32] - mem[(32 * idx) + _5687 + 32]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = _5623 - _5622
        mem[mem[64] + 32] = 128
        _7396 = mem[_5769]
        mem[mem[64] + 128] = mem[_5769]
        mem[mem[64] + 160 len 32 * _7396] = mem[_5769 + 32 len 32 * _7396]
        mem[mem[64] + 64] = 0
        mem[mem[64] + 96] = ext_call.return_data[0]
        return _5623 - _5622, 128, 0, ext_call.return_data[0], mem[mem[64] + 128 len (32 * _7396) + 32]
    mem[160] = msg.sender
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).lastHarvest() with:
            gas gas_remaining wei
    mem[224] = ext_call.return_data[0]
    if not ext_call.success:
        mem[224] = 0
        mem[256] = 96
        idx = 0
        s = 0
        while idx < 3:
            if idx >= 3:
                revert with 0, 50
            if not mem[(32 * idx) + 140 len 20]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= 3:
                revert with 0, 50
            if s > !eth.balance(mem[(32 * idx) + 128]):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + eth.balance(mem[(32 * idx) + 128])
            continue 
        mem[288] = s
        if ('cd', 36).length > test266151307():
            revert with 0, 65
        mem[352] = ('cd', 36).length
        mem[64] = (32 * ('cd', 36).length) + 384
        if not ('cd', 36).length:
            idx = 0
            while idx < ('cd', 36).length:
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                _4282 = mem[96]
                s = 0
                t = 0
                while s < _4282:
                    if s >= mem[96]:
                        revert with 0, 50
                    if not mem[(32 * s) + 140 len 20]:
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = t
                        continue 
                    if s >= mem[96]:
                        revert with 0, 50
                    _4400 = mem[(32 * s) + 128]
                    mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_4400)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4432 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if t > !mem[_4432]:
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t + mem[_4432]
                    continue 
                if idx >= mem[352]:
                    revert with 0, 50
                mem[(32 * idx) + 384] = t
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[320] = 352
            mem[mem[64] len 259] = code.data[7270 len 259]
            mem[mem[64] + 259] = address(cd[4])
            create contract with 0 wei
                            code: code.data[7270 len 259], address(cd[4])
            if create.new_address:
                if gas_remaining < 45000:
                    revert with 0, 17
                if 2 >= mem[96]:
                    revert with 0, 50
                mem[192] = address(create.new_address)
                if gas_remaining - 45000 < gas_remaining:
                    revert with 0, 17
                _3013 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3013] = 0
                mem[_3013 + 32] = 96
                _3014 = mem[64]
                mem[64] = mem[64] + 64
                idx = 0
                s = 0
                while idx < mem[96]:
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
                    if s > !eth.balance(mem[(32 * idx) + 128]):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + eth.balance(mem[(32 * idx) + 128])
                    continue 
                mem[_3014] = s
                if ('cd', 36).length > test266151307():
                    revert with 0, 65
                _4398 = mem[64]
                mem[mem[64]] = ('cd', 36).length
                mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
                if not ('cd', 36).length:
                    idx = 0
                    while idx < ('cd', 36).length:
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        _6804 = mem[96]
                        s = 0
                        t = 0
                        while s < _6804:
                            if s >= mem[96]:
                                revert with 0, 50
                            if not mem[(32 * s) + 140 len 20]:
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                t = t
                                continue 
                            if s >= mem[96]:
                                revert with 0, 50
                            _7328 = mem[(32 * s) + 128]
                            mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(_7328)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7572 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if t > !mem[_7572]:
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t + mem[_7572]
                            continue 
                        if idx >= mem[_4398]:
                            revert with 0, 50
                        mem[(32 * idx) + _4398 + 32] = t
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[_3014 + 32] = _4398
                    _5632 = mem[288]
                    _5633 = mem[_3014]
                    if mem[_3014] < mem[288]:
                        revert with 0, 17
                    _5697 = mem[320]
                    _5742 = mem[_4398]
                    if mem[_4398] > test266151307():
                        revert with 0, 65
                    _5774 = mem[64]
                    mem[mem[64]] = mem[_4398]
                    mem[64] = mem[64] + (32 * _5742) + 32
                    if not _5742:
                        _6802 = mem[_4398]
                        idx = 0
                        while idx < _6802:
                            if idx >= mem[_5697]:
                                revert with 0, 50
                            if idx >= mem[_4398]:
                                revert with 0, 50
                            if mem[(32 * idx) + _4398 + 32] < mem[(32 * idx) + _5697 + 32]:
                                revert with 0, 17
                            if idx >= mem[_5774]:
                                revert with 0, 50
                            mem[(32 * idx) + _5774 + 32] = mem[(32 * idx) + _4398 + 32] - mem[(32 * idx) + _5697 + 32]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = _5633 - _5632
                        mem[mem[64] + 32] = 128
                        _7410 = mem[_5774]
                        mem[mem[64] + 128] = mem[_5774]
                        mem[mem[64] + 160 len 32 * _7410] = mem[_5774 + 32 len 32 * _7410]
                        mem[mem[64] + 64] = -45000
                        mem[mem[64] + 96] = 0
                        return _5633 - _5632, 128, -45000, 0, mem[mem[64] + 128 len (32 * _7410) + 32]
                    mem[_5774 + 32 len 32 * _5742] = call.data[calldata.size len 32 * _5742]
                    _6803 = mem[_4398]
                    idx = 0
                    while idx < _6803:
                        if idx >= mem[_5697]:
                            revert with 0, 50
                        if idx >= mem[_4398]:
                            revert with 0, 50
                        if mem[(32 * idx) + _4398 + 32] < mem[(32 * idx) + _5697 + 32]:
                            revert with 0, 17
                        if idx >= mem[_5774]:
                            revert with 0, 50
                        mem[(32 * idx) + _5774 + 32] = mem[(32 * idx) + _4398 + 32] - mem[(32 * idx) + _5697 + 32]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = _5633 - _5632
                    mem[mem[64] + 32] = 128
                    _7411 = mem[_5774]
                    mem[mem[64] + 128] = mem[_5774]
                    mem[mem[64] + 160 len 32 * _7411] = mem[_5774 + 32 len 32 * _7411]
                    mem[mem[64] + 64] = -45000
                    mem[mem[64] + 96] = 0
                    return _5633 - _5632, 128, -45000, 0, mem[mem[64] + 128 len (32 * _7411) + 32]
                mem[_4398 + 32 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
                idx = 0
                while idx < ('cd', 36).length:
                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                    _6807 = mem[96]
                    s = 0
                    t = 0
                    while s < _6807:
                        if s >= mem[96]:
                            revert with 0, 50
                        if not mem[(32 * s) + 140 len 20]:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t
                            continue 
                        if s >= mem[96]:
                            revert with 0, 50
                        _7330 = mem[(32 * s) + 128]
                        mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_7330)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7575 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t > !mem[_7575]:
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = t + mem[_7575]
                        continue 
                    if idx >= mem[_4398]:
                        revert with 0, 50
                    mem[(32 * idx) + _4398 + 32] = t
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[_3014 + 32] = _4398
                _5634 = mem[288]
                _5635 = mem[_3014]
                if mem[_3014] < mem[288]:
                    revert with 0, 17
                _5699 = mem[320]
                _5743 = mem[_4398]
                if mem[_4398] > test266151307():
                    revert with 0, 65
                _5775 = mem[64]
                mem[mem[64]] = mem[_4398]
                mem[64] = mem[64] + (32 * _5743) + 32
                if not _5743:
                    _6805 = mem[_4398]
                    idx = 0
                    while idx < _6805:
                        if idx >= mem[_5699]:
                            revert with 0, 50
                        if idx >= mem[_4398]:
                            revert with 0, 50
                        if mem[(32 * idx) + _4398 + 32] < mem[(32 * idx) + _5699 + 32]:
                            revert with 0, 17
                        if idx >= mem[_5775]:
                            revert with 0, 50
                        mem[(32 * idx) + _5775 + 32] = mem[(32 * idx) + _4398 + 32] - mem[(32 * idx) + _5699 + 32]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = _5635 - _5634
                    mem[mem[64] + 32] = 128
                    _7413 = mem[_5775]
                    mem[mem[64] + 128] = mem[_5775]
                    mem[mem[64] + 160 len 32 * _7413] = mem[_5775 + 32 len 32 * _7413]
                    mem[mem[64] + 64] = -45000
                    mem[mem[64] + 96] = 0
                    return _5635 - _5634, 128, -45000, 0, mem[mem[64] + 128 len (32 * _7413) + 32]
                mem[_5775 + 32 len 32 * _5743] = call.data[calldata.size len 32 * _5743]
                _6806 = mem[_4398]
                idx = 0
                while idx < _6806:
                    if idx >= mem[_5699]:
                        revert with 0, 50
                    if idx >= mem[_4398]:
                        revert with 0, 50
                    if mem[(32 * idx) + _4398 + 32] < mem[(32 * idx) + _5699 + 32]:
                        revert with 0, 17
                    if idx >= mem[_5775]:
                        revert with 0, 50
                    mem[(32 * idx) + _5775 + 32] = mem[(32 * idx) + _4398 + 32] - mem[(32 * idx) + _5699 + 32]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[mem[64]] = _5635 - _5634
                mem[mem[64] + 32] = 128
                _7414 = mem[_5775]
                mem[mem[64] + 128] = mem[_5775]
                mem[mem[64] + 160 len 32 * _7414] = mem[_5775 + 32 len 32 * _7414]
                mem[mem[64] + 64] = -45000
                mem[mem[64] + 96] = 0
                return _5635 - _5634, 128, -45000, 0, mem[mem[64] + 128 len (32 * _7414) + 32]
            mem[mem[64]] = 0x4641257d00000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(cd[4]))
            call address(cd[4]).harvest() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if gas_remaining < gas_remaining:
                revert with 0, 17
            _2964 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2964] = 0
            mem[_2964 + 32] = 96
            _2965 = mem[64]
            mem[64] = mem[64] + 64
            idx = 0
            s = 0
            while idx < mem[96]:
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
                if s > !eth.balance(mem[(32 * idx) + 128]):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + eth.balance(mem[(32 * idx) + 128])
                continue 
            mem[_2965] = s
            if ('cd', 36).length > test266151307():
                revert with 0, 65
            _4396 = mem[64]
            mem[mem[64]] = ('cd', 36).length
            mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
            if not ('cd', 36).length:
                idx = 0
                while idx < ('cd', 36).length:
                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                    _6798 = mem[96]
                    s = 0
                    t = 0
                    while s < _6798:
                        if s >= mem[96]:
                            revert with 0, 50
                        if not mem[(32 * s) + 140 len 20]:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t
                            continue 
                        if s >= mem[96]:
                            revert with 0, 50
                        _7324 = mem[(32 * s) + 128]
                        mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_7324)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7566 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t > !mem[_7566]:
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = t + mem[_7566]
                        continue 
                    if idx >= mem[_4396]:
                        revert with 0, 50
                    mem[(32 * idx) + _4396 + 32] = t
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[_2965 + 32] = _4396
                _5628 = mem[288]
                _5629 = mem[_2965]
                if mem[_2965] < mem[288]:
                    revert with 0, 17
                _5693 = mem[320]
                _5740 = mem[_4396]
                if mem[_4396] > test266151307():
                    revert with 0, 65
                _5772 = mem[64]
                mem[mem[64]] = mem[_4396]
                mem[64] = mem[64] + (32 * _5740) + 32
                if not _5740:
                    _6796 = mem[_4396]
                    idx = 0
                    while idx < _6796:
                        if idx >= mem[_5693]:
                            revert with 0, 50
                        if idx >= mem[_4396]:
                            revert with 0, 50
                        if mem[(32 * idx) + _4396 + 32] < mem[(32 * idx) + _5693 + 32]:
                            revert with 0, 17
                        if idx >= mem[_5772]:
                            revert with 0, 50
                        mem[(32 * idx) + _5772 + 32] = mem[(32 * idx) + _4396 + 32] - mem[(32 * idx) + _5693 + 32]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = _5629 - _5628
                    mem[mem[64] + 32] = 128
                    _7404 = mem[_5772]
                    mem[mem[64] + 128] = mem[_5772]
                    mem[mem[64] + 160 len 32 * _7404] = mem[_5772 + 32 len 32 * _7404]
                    mem[mem[64] + 64] = 0
                    mem[mem[64] + 96] = 0
                    return _5629 - _5628, 128, 0, 0, mem[mem[64] + 128 len (32 * _7404) + 32]
                mem[_5772 + 32 len 32 * _5740] = call.data[calldata.size len 32 * _5740]
                _6797 = mem[_4396]
                idx = 0
                while idx < _6797:
                    if idx >= mem[_5693]:
                        revert with 0, 50
                    if idx >= mem[_4396]:
                        revert with 0, 50
                    if mem[(32 * idx) + _4396 + 32] < mem[(32 * idx) + _5693 + 32]:
                        revert with 0, 17
                    if idx >= mem[_5772]:
                        revert with 0, 50
                    mem[(32 * idx) + _5772 + 32] = mem[(32 * idx) + _4396 + 32] - mem[(32 * idx) + _5693 + 32]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[mem[64]] = _5629 - _5628
                mem[mem[64] + 32] = 128
                _7405 = mem[_5772]
                mem[mem[64] + 128] = mem[_5772]
                mem[mem[64] + 160 len 32 * _7405] = mem[_5772 + 32 len 32 * _7405]
                mem[mem[64] + 64] = 0
                mem[mem[64] + 96] = 0
                return _5629 - _5628, 128, 0, 0, mem[mem[64] + 128 len (32 * _7405) + 32]
            mem[_4396 + 32 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
            idx = 0
            while idx < ('cd', 36).length:
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                _6801 = mem[96]
                s = 0
                t = 0
                while s < _6801:
                    if s >= mem[96]:
                        revert with 0, 50
                    if not mem[(32 * s) + 140 len 20]:
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = t
                        continue 
                    if s >= mem[96]:
                        revert with 0, 50
                    _7326 = mem[(32 * s) + 128]
                    mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_7326)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7569 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if t > !mem[_7569]:
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t + mem[_7569]
                    continue 
                if idx >= mem[_4396]:
                    revert with 0, 50
                mem[(32 * idx) + _4396 + 32] = t
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[_2965 + 32] = _4396
            _5630 = mem[288]
            _5631 = mem[_2965]
            if mem[_2965] < mem[288]:
                revert with 0, 17
            _5695 = mem[320]
            _5741 = mem[_4396]
            if mem[_4396] > test266151307():
                revert with 0, 65
            _5773 = mem[64]
            mem[mem[64]] = mem[_4396]
            mem[64] = mem[64] + (32 * _5741) + 32
            if not _5741:
                _6799 = mem[_4396]
                idx = 0
                while idx < _6799:
                    if idx >= mem[_5695]:
                        revert with 0, 50
                    if idx >= mem[_4396]:
                        revert with 0, 50
                    if mem[(32 * idx) + _4396 + 32] < mem[(32 * idx) + _5695 + 32]:
                        revert with 0, 17
                    if idx >= mem[_5773]:
                        revert with 0, 50
                    mem[(32 * idx) + _5773 + 32] = mem[(32 * idx) + _4396 + 32] - mem[(32 * idx) + _5695 + 32]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[mem[64]] = _5631 - _5630
                mem[mem[64] + 32] = 128
                _7407 = mem[_5773]
                mem[mem[64] + 128] = mem[_5773]
                mem[mem[64] + 160 len 32 * _7407] = mem[_5773 + 32 len 32 * _7407]
                mem[mem[64] + 64] = 0
                mem[mem[64] + 96] = 0
                return _5631 - _5630, 128, 0, 0, mem[mem[64] + 128 len (32 * _7407) + 32]
            mem[_5773 + 32 len 32 * _5741] = call.data[calldata.size len 32 * _5741]
            _6800 = mem[_4396]
            idx = 0
            while idx < _6800:
                if idx >= mem[_5695]:
                    revert with 0, 50
                if idx >= mem[_4396]:
                    revert with 0, 50
                if mem[(32 * idx) + _4396 + 32] < mem[(32 * idx) + _5695 + 32]:
                    revert with 0, 17
                if idx >= mem[_5773]:
                    revert with 0, 50
                mem[(32 * idx) + _5773 + 32] = mem[(32 * idx) + _4396 + 32] - mem[(32 * idx) + _5695 + 32]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = _5631 - _5630
            mem[mem[64] + 32] = 128
            _7408 = mem[_5773]
            mem[mem[64] + 128] = mem[_5773]
            mem[mem[64] + 160 len 32 * _7408] = mem[_5773 + 32 len 32 * _7408]
            mem[mem[64] + 64] = 0
            mem[mem[64] + 96] = 0
            return _5631 - _5630, 128, 0, 0, mem[mem[64] + 128 len (32 * _7408) + 32]
        mem[384 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            _4285 = mem[96]
            s = 0
            t = 0
            while s < _4285:
                if s >= mem[96]:
                    revert with 0, 50
                if not mem[(32 * s) + 140 len 20]:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t
                    continue 
                if s >= mem[96]:
                    revert with 0, 50
                _4406 = mem[(32 * s) + 128]
                mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_4406)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4433 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if t > !mem[_4433]:
                    revert with 0, 17
                if s == -1:
                    revert with 0, 17
                s = s + 1
                t = t + mem[_4433]
                continue 
            if idx >= mem[352]:
                revert with 0, 50
            mem[(32 * idx) + 384] = t
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[320] = 352
        mem[mem[64] len 259] = code.data[7270 len 259]
        mem[mem[64] + 259] = address(cd[4])
        create contract with 0 wei
                        code: code.data[7270 len 259], address(cd[4])
        if create.new_address:
            if gas_remaining < 45000:
                revert with 0, 17
            if 2 >= mem[96]:
                revert with 0, 50
            mem[192] = address(create.new_address)
            if gas_remaining - 45000 < gas_remaining:
                revert with 0, 17
            _3017 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3017] = 0
            mem[_3017 + 32] = 96
            _3018 = mem[64]
            mem[64] = mem[64] + 64
            idx = 0
            s = 0
            while idx < mem[96]:
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
                if s > !eth.balance(mem[(32 * idx) + 128]):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + eth.balance(mem[(32 * idx) + 128])
                continue 
            mem[_3018] = s
            if ('cd', 36).length > test266151307():
                revert with 0, 65
            _4404 = mem[64]
            mem[mem[64]] = ('cd', 36).length
            mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
            if not ('cd', 36).length:
                idx = 0
                while idx < ('cd', 36).length:
                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                    _6816 = mem[96]
                    s = 0
                    t = 0
                    while s < _6816:
                        if s >= mem[96]:
                            revert with 0, 50
                        if not mem[(32 * s) + 140 len 20]:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t
                            continue 
                        if s >= mem[96]:
                            revert with 0, 50
                        _7336 = mem[(32 * s) + 128]
                        mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_7336)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7584 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t > !mem[_7584]:
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = t + mem[_7584]
                        continue 
                    if idx >= mem[_4404]:
                        revert with 0, 50
                    mem[(32 * idx) + _4404 + 32] = t
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[_3018 + 32] = _4404
                _5640 = mem[288]
                _5641 = mem[_3018]
                if mem[_3018] < mem[288]:
                    revert with 0, 17
                _5705 = mem[320]
                _5746 = mem[_4404]
                if mem[_4404] > test266151307():
                    revert with 0, 65
                _5778 = mem[64]
                mem[mem[64]] = mem[_4404]
                mem[64] = mem[64] + (32 * _5746) + 32
                if not _5746:
                    _6814 = mem[_4404]
                    idx = 0
                    while idx < _6814:
                        if idx >= mem[_5705]:
                            revert with 0, 50
                        if idx >= mem[_4404]:
                            revert with 0, 50
                        if mem[(32 * idx) + _4404 + 32] < mem[(32 * idx) + _5705 + 32]:
                            revert with 0, 17
                        if idx >= mem[_5778]:
                            revert with 0, 50
                        mem[(32 * idx) + _5778 + 32] = mem[(32 * idx) + _4404 + 32] - mem[(32 * idx) + _5705 + 32]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = _5641 - _5640
                    mem[mem[64] + 32] = 128
                    _7422 = mem[_5778]
                    mem[mem[64] + 128] = mem[_5778]
                    mem[mem[64] + 160 len 32 * _7422] = mem[_5778 + 32 len 32 * _7422]
                    mem[mem[64] + 64] = -45000
                    mem[mem[64] + 96] = 0
                    return _5641 - _5640, 128, -45000, 0, mem[mem[64] + 128 len (32 * _7422) + 32]
                mem[_5778 + 32 len 32 * _5746] = call.data[calldata.size len 32 * _5746]
                _6815 = mem[_4404]
                idx = 0
                while idx < _6815:
                    if idx >= mem[_5705]:
                        revert with 0, 50
                    if idx >= mem[_4404]:
                        revert with 0, 50
                    if mem[(32 * idx) + _4404 + 32] < mem[(32 * idx) + _5705 + 32]:
                        revert with 0, 17
                    if idx >= mem[_5778]:
                        revert with 0, 50
                    mem[(32 * idx) + _5778 + 32] = mem[(32 * idx) + _4404 + 32] - mem[(32 * idx) + _5705 + 32]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[mem[64]] = _5641 - _5640
                mem[mem[64] + 32] = 128
                _7423 = mem[_5778]
                mem[mem[64] + 128] = mem[_5778]
                mem[mem[64] + 160 len 32 * _7423] = mem[_5778 + 32 len 32 * _7423]
                mem[mem[64] + 64] = -45000
                mem[mem[64] + 96] = 0
                return _5641 - _5640, 128, -45000, 0, mem[mem[64] + 128 len (32 * _7423) + 32]
            mem[_4404 + 32 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
            idx = 0
            while idx < ('cd', 36).length:
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                _6819 = mem[96]
                s = 0
                t = 0
                while s < _6819:
                    if s >= mem[96]:
                        revert with 0, 50
                    if not mem[(32 * s) + 140 len 20]:
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = t
                        continue 
                    if s >= mem[96]:
                        revert with 0, 50
                    _7338 = mem[(32 * s) + 128]
                    mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_7338)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7587 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if t > !mem[_7587]:
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t + mem[_7587]
                    continue 
                if idx >= mem[_4404]:
                    revert with 0, 50
                mem[(32 * idx) + _4404 + 32] = t
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[_3018 + 32] = _4404
            _5642 = mem[288]
            _5643 = mem[_3018]
            if mem[_3018] < mem[288]:
                revert with 0, 17
            _5707 = mem[320]
            _5747 = mem[_4404]
            if mem[_4404] > test266151307():
                revert with 0, 65
            _5779 = mem[64]
            mem[mem[64]] = mem[_4404]
            mem[64] = mem[64] + (32 * _5747) + 32
            if not _5747:
                _6817 = mem[_4404]
                idx = 0
                while idx < _6817:
                    if idx >= mem[_5707]:
                        revert with 0, 50
                    if idx >= mem[_4404]:
                        revert with 0, 50
                    if mem[(32 * idx) + _4404 + 32] < mem[(32 * idx) + _5707 + 32]:
                        revert with 0, 17
                    if idx >= mem[_5779]:
                        revert with 0, 50
                    mem[(32 * idx) + _5779 + 32] = mem[(32 * idx) + _4404 + 32] - mem[(32 * idx) + _5707 + 32]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[mem[64]] = _5643 - _5642
                mem[mem[64] + 32] = 128
                _7425 = mem[_5779]
                mem[mem[64] + 128] = mem[_5779]
                mem[mem[64] + 160 len 32 * _7425] = mem[_5779 + 32 len 32 * _7425]
                mem[mem[64] + 64] = -45000
                mem[mem[64] + 96] = 0
                return _5643 - _5642, 128, -45000, 0, mem[mem[64] + 128 len (32 * _7425) + 32]
            mem[_5779 + 32 len 32 * _5747] = call.data[calldata.size len 32 * _5747]
            _6818 = mem[_4404]
            idx = 0
            while idx < _6818:
                if idx >= mem[_5707]:
                    revert with 0, 50
                if idx >= mem[_4404]:
                    revert with 0, 50
                if mem[(32 * idx) + _4404 + 32] < mem[(32 * idx) + _5707 + 32]:
                    revert with 0, 17
                if idx >= mem[_5779]:
                    revert with 0, 50
                mem[(32 * idx) + _5779 + 32] = mem[(32 * idx) + _4404 + 32] - mem[(32 * idx) + _5707 + 32]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = _5643 - _5642
            mem[mem[64] + 32] = 128
            _7426 = mem[_5779]
            mem[mem[64] + 128] = mem[_5779]
            mem[mem[64] + 160 len 32 * _7426] = mem[_5779 + 32 len 32 * _7426]
            mem[mem[64] + 64] = -45000
            mem[mem[64] + 96] = 0
            return _5643 - _5642, 128, -45000, 0, mem[mem[64] + 128 len (32 * _7426) + 32]
        mem[mem[64]] = 0x4641257d00000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(cd[4]))
        call address(cd[4]).harvest() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if gas_remaining < gas_remaining:
            revert with 0, 17
        _2968 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2968] = 0
        mem[_2968 + 32] = 96
        _2969 = mem[64]
        mem[64] = mem[64] + 64
        idx = 0
        s = 0
        while idx < mem[96]:
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
            if s > !eth.balance(mem[(32 * idx) + 128]):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + eth.balance(mem[(32 * idx) + 128])
            continue 
        mem[_2969] = s
        if ('cd', 36).length > test266151307():
            revert with 0, 65
        _4402 = mem[64]
        mem[mem[64]] = ('cd', 36).length
        mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
        if not ('cd', 36).length:
            idx = 0
            while idx < ('cd', 36).length:
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                _6810 = mem[96]
                s = 0
                t = 0
                while s < _6810:
                    if s >= mem[96]:
                        revert with 0, 50
                    if not mem[(32 * s) + 140 len 20]:
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = t
                        continue 
                    if s >= mem[96]:
                        revert with 0, 50
                    _7332 = mem[(32 * s) + 128]
                    mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_7332)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7578 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if t > !mem[_7578]:
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t + mem[_7578]
                    continue 
                if idx >= mem[_4402]:
                    revert with 0, 50
                mem[(32 * idx) + _4402 + 32] = t
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[_2969 + 32] = _4402
            _5636 = mem[288]
            _5637 = mem[_2969]
            if mem[_2969] < mem[288]:
                revert with 0, 17
            _5701 = mem[320]
            _5744 = mem[_4402]
            if mem[_4402] > test266151307():
                revert with 0, 65
            _5776 = mem[64]
            mem[mem[64]] = mem[_4402]
            mem[64] = mem[64] + (32 * _5744) + 32
            if not _5744:
                _6808 = mem[_4402]
                idx = 0
                while idx < _6808:
                    if idx >= mem[_5701]:
                        revert with 0, 50
                    if idx >= mem[_4402]:
                        revert with 0, 50
                    if mem[(32 * idx) + _4402 + 32] < mem[(32 * idx) + _5701 + 32]:
                        revert with 0, 17
                    if idx >= mem[_5776]:
                        revert with 0, 50
                    mem[(32 * idx) + _5776 + 32] = mem[(32 * idx) + _4402 + 32] - mem[(32 * idx) + _5701 + 32]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[mem[64]] = _5637 - _5636
                mem[mem[64] + 32] = 128
                _7416 = mem[_5776]
                mem[mem[64] + 128] = mem[_5776]
                mem[mem[64] + 160 len 32 * _7416] = mem[_5776 + 32 len 32 * _7416]
                mem[mem[64] + 64] = 0
                mem[mem[64] + 96] = 0
                return _5637 - _5636, 128, 0, 0, mem[mem[64] + 128 len (32 * _7416) + 32]
            mem[_5776 + 32 len 32 * _5744] = call.data[calldata.size len 32 * _5744]
            _6809 = mem[_4402]
            idx = 0
            while idx < _6809:
                if idx >= mem[_5701]:
                    revert with 0, 50
                if idx >= mem[_4402]:
                    revert with 0, 50
                if mem[(32 * idx) + _4402 + 32] < mem[(32 * idx) + _5701 + 32]:
                    revert with 0, 17
                if idx >= mem[_5776]:
                    revert with 0, 50
                mem[(32 * idx) + _5776 + 32] = mem[(32 * idx) + _4402 + 32] - mem[(32 * idx) + _5701 + 32]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = _5637 - _5636
            mem[mem[64] + 32] = 128
            _7417 = mem[_5776]
            mem[mem[64] + 128] = mem[_5776]
            mem[mem[64] + 160 len 32 * _7417] = mem[_5776 + 32 len 32 * _7417]
            mem[mem[64] + 64] = 0
            mem[mem[64] + 96] = 0
            return _5637 - _5636, 128, 0, 0, mem[mem[64] + 128 len (32 * _7417) + 32]
        mem[_4402 + 32 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            _6813 = mem[96]
            s = 0
            t = 0
            while s < _6813:
                if s >= mem[96]:
                    revert with 0, 50
                if not mem[(32 * s) + 140 len 20]:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t
                    continue 
                if s >= mem[96]:
                    revert with 0, 50
                _7334 = mem[(32 * s) + 128]
                mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_7334)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7581 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if t > !mem[_7581]:
                    revert with 0, 17
                if s == -1:
                    revert with 0, 17
                s = s + 1
                t = t + mem[_7581]
                continue 
            if idx >= mem[_4402]:
                revert with 0, 50
            mem[(32 * idx) + _4402 + 32] = t
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[_2969 + 32] = _4402
        _5638 = mem[288]
        _5639 = mem[_2969]
        if mem[_2969] < mem[288]:
            revert with 0, 17
        _5703 = mem[320]
        _5745 = mem[_4402]
        if mem[_4402] > test266151307():
            revert with 0, 65
        _5777 = mem[64]
        mem[mem[64]] = mem[_4402]
        mem[64] = mem[64] + (32 * _5745) + 32
        if not _5745:
            _6811 = mem[_4402]
            idx = 0
            while idx < _6811:
                if idx >= mem[_5703]:
                    revert with 0, 50
                if idx >= mem[_4402]:
                    revert with 0, 50
                if mem[(32 * idx) + _4402 + 32] < mem[(32 * idx) + _5703 + 32]:
                    revert with 0, 17
                if idx >= mem[_5777]:
                    revert with 0, 50
                mem[(32 * idx) + _5777 + 32] = mem[(32 * idx) + _4402 + 32] - mem[(32 * idx) + _5703 + 32]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = _5639 - _5638
            mem[mem[64] + 32] = 128
            _7419 = mem[_5777]
            mem[mem[64] + 128] = mem[_5777]
            mem[mem[64] + 160 len 32 * _7419] = mem[_5777 + 32 len 32 * _7419]
            mem[mem[64] + 64] = 0
            mem[mem[64] + 96] = 0
            return _5639 - _5638, 128, 0, 0, mem[mem[64] + 128 len (32 * _7419) + 32]
        mem[_5777 + 32 len 32 * _5745] = call.data[calldata.size len 32 * _5745]
        _6812 = mem[_4402]
        idx = 0
        while idx < _6812:
            if idx >= mem[_5703]:
                revert with 0, 50
            if idx >= mem[_4402]:
                revert with 0, 50
            if mem[(32 * idx) + _4402 + 32] < mem[(32 * idx) + _5703 + 32]:
                revert with 0, 17
            if idx >= mem[_5777]:
                revert with 0, 50
            mem[(32 * idx) + _5777 + 32] = mem[(32 * idx) + _4402 + 32] - mem[(32 * idx) + _5703 + 32]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = _5639 - _5638
        mem[mem[64] + 32] = 128
        _7420 = mem[_5777]
        mem[mem[64] + 128] = mem[_5777]
        mem[mem[64] + 160 len 32 * _7420] = mem[_5777 + 32 len 32 * _7420]
        mem[mem[64] + 64] = 0
        mem[mem[64] + 96] = 0
        return _5639 - _5638, 128, 0, 0, mem[mem[64] + 128 len (32 * _7420) + 32]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 224] = 0
    mem[ceil32(return_data.size) + 256] = 96
    idx = 0
    s = 0
    while idx < 3:
        if idx >= 3:
            revert with 0, 50
        if not mem[(32 * idx) + 140 len 20]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if idx >= 3:
            revert with 0, 50
        if s > !eth.balance(mem[(32 * idx) + 128]):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + eth.balance(mem[(32 * idx) + 128])
        continue 
    mem[ceil32(return_data.size) + 288] = s
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    mem[ceil32(return_data.size) + 352] = ('cd', 36).length
    mem[64] = ceil32(return_data.size) + (32 * ('cd', 36).length) + 384
    if not ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            _4288 = mem[96]
            s = 0
            t = 0
            while s < _4288:
                if s >= mem[96]:
                    revert with 0, 50
                if not mem[(32 * s) + 140 len 20]:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t
                    continue 
                if s >= mem[96]:
                    revert with 0, 50
                _4412 = mem[(32 * s) + 128]
                mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_4412)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4434 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if t > !mem[_4434]:
                    revert with 0, 17
                if s == -1:
                    revert with 0, 17
                s = s + 1
                t = t + mem[_4434]
                continue 
            if idx >= mem[ceil32(return_data.size) + 352]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(return_data.size) + 384] = t
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[ceil32(return_data.size) + 320] = ceil32(return_data.size) + 352
        mem[mem[64] len 259] = code.data[7270 len 259]
        mem[mem[64] + 259] = address(cd[4])
        create contract with 0 wei
                        code: code.data[7270 len 259], address(cd[4])
        if create.new_address:
            if gas_remaining < 45000:
                revert with 0, 17
            if 2 >= mem[96]:
                revert with 0, 50
            mem[192] = address(create.new_address)
            if gas_remaining - 45000 < gas_remaining:
                revert with 0, 17
            _3021 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3021] = 0
            mem[_3021 + 32] = 96
            _3022 = mem[64]
            mem[64] = mem[64] + 64
            idx = 0
            s = 0
            while idx < mem[96]:
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
                if s > !eth.balance(mem[(32 * idx) + 128]):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + eth.balance(mem[(32 * idx) + 128])
                continue 
            mem[_3022] = s
            if ('cd', 36).length > test266151307():
                revert with 0, 65
            _4410 = mem[64]
            mem[mem[64]] = ('cd', 36).length
            mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
            if not ('cd', 36).length:
                idx = 0
                while idx < ('cd', 36).length:
                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                    _6828 = mem[96]
                    s = 0
                    t = 0
                    while s < _6828:
                        if s >= mem[96]:
                            revert with 0, 50
                        if not mem[(32 * s) + 140 len 20]:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            t = t
                            continue 
                        if s >= mem[96]:
                            revert with 0, 50
                        _7344 = mem[(32 * s) + 128]
                        mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_7344)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7596 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t > !mem[_7596]:
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = t + mem[_7596]
                        continue 
                    if idx >= mem[_4410]:
                        revert with 0, 50
                    mem[(32 * idx) + _4410 + 32] = t
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[_3022 + 32] = _4410
                _5648 = mem[ceil32(return_data.size) + 288]
                _5649 = mem[_3022]
                if mem[_3022] < mem[ceil32(return_data.size) + 288]:
                    revert with 0, 17
                _5713 = mem[ceil32(return_data.size) + 320]
                _5750 = mem[_4410]
                if mem[_4410] > test266151307():
                    revert with 0, 65
                _5782 = mem[64]
                mem[mem[64]] = mem[_4410]
                mem[64] = mem[64] + (32 * _5750) + 32
                if not _5750:
                    _6826 = mem[_4410]
                    idx = 0
                    while idx < _6826:
                        if idx >= mem[_5713]:
                            revert with 0, 50
                        if idx >= mem[_4410]:
                            revert with 0, 50
                        if mem[(32 * idx) + _4410 + 32] < mem[(32 * idx) + _5713 + 32]:
                            revert with 0, 17
                        if idx >= mem[_5782]:
                            revert with 0, 50
                        mem[(32 * idx) + _5782 + 32] = mem[(32 * idx) + _4410 + 32] - mem[(32 * idx) + _5713 + 32]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = _5649 - _5648
                    mem[mem[64] + 32] = 128
                    _7434 = mem[_5782]
                    mem[mem[64] + 128] = mem[_5782]
                    mem[mem[64] + 160 len 32 * _7434] = mem[_5782 + 32 len 32 * _7434]
                    mem[mem[64] + 64] = -45000
                    mem[mem[64] + 96] = ext_call.return_data[0]
                    return _5649 - _5648, 128, -45000, ext_call.return_data[0], mem[mem[64] + 128 len (32 * _7434) + 32]
                mem[_5782 + 32 len 32 * _5750] = call.data[calldata.size len 32 * _5750]
                _6827 = mem[_4410]
                idx = 0
                while idx < _6827:
                    if idx >= mem[_5713]:
                        revert with 0, 50
                    if idx >= mem[_4410]:
                        revert with 0, 50
                    if mem[(32 * idx) + _4410 + 32] < mem[(32 * idx) + _5713 + 32]:
                        revert with 0, 17
                    if idx >= mem[_5782]:
                        revert with 0, 50
                    mem[(32 * idx) + _5782 + 32] = mem[(32 * idx) + _4410 + 32] - mem[(32 * idx) + _5713 + 32]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[mem[64]] = _5649 - _5648
                mem[mem[64] + 32] = 128
                _7435 = mem[_5782]
                mem[mem[64] + 128] = mem[_5782]
                mem[mem[64] + 160 len 32 * _7435] = mem[_5782 + 32 len 32 * _7435]
                mem[mem[64] + 64] = -45000
                mem[mem[64] + 96] = ext_call.return_data[0]
                return _5649 - _5648, 128, -45000, ext_call.return_data[0], mem[mem[64] + 128 len (32 * _7435) + 32]
            mem[_4410 + 32 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
            idx = 0
            while idx < ('cd', 36).length:
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                _6831 = mem[96]
                s = 0
                t = 0
                while s < _6831:
                    if s >= mem[96]:
                        revert with 0, 50
                    if not mem[(32 * s) + 140 len 20]:
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = t
                        continue 
                    if s >= mem[96]:
                        revert with 0, 50
                    _7346 = mem[(32 * s) + 128]
                    mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_7346)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7599 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if t > !mem[_7599]:
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t + mem[_7599]
                    continue 
                if idx >= mem[_4410]:
                    revert with 0, 50
                mem[(32 * idx) + _4410 + 32] = t
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[_3022 + 32] = _4410
            _5650 = mem[ceil32(return_data.size) + 288]
            _5651 = mem[_3022]
            if mem[_3022] < mem[ceil32(return_data.size) + 288]:
                revert with 0, 17
            _5715 = mem[ceil32(return_data.size) + 320]
            _5751 = mem[_4410]
            if mem[_4410] > test266151307():
                revert with 0, 65
            _5783 = mem[64]
            mem[mem[64]] = mem[_4410]
            mem[64] = mem[64] + (32 * _5751) + 32
            if not _5751:
                _6829 = mem[_4410]
                idx = 0
                while idx < _6829:
                    if idx >= mem[_5715]:
                        revert with 0, 50
                    if idx >= mem[_4410]:
                        revert with 0, 50
                    if mem[(32 * idx) + _4410 + 32] < mem[(32 * idx) + _5715 + 32]:
                        revert with 0, 17
                    if idx >= mem[_5783]:
                        revert with 0, 50
                    mem[(32 * idx) + _5783 + 32] = mem[(32 * idx) + _4410 + 32] - mem[(32 * idx) + _5715 + 32]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[mem[64]] = _5651 - _5650
                mem[mem[64] + 32] = 128
                _7437 = mem[_5783]
                mem[mem[64] + 128] = mem[_5783]
                mem[mem[64] + 160 len 32 * _7437] = mem[_5783 + 32 len 32 * _7437]
                mem[mem[64] + 64] = -45000
                mem[mem[64] + 96] = ext_call.return_data[0]
                return _5651 - _5650, 128, -45000, ext_call.return_data[0], mem[mem[64] + 128 len (32 * _7437) + 32]
            mem[_5783 + 32 len 32 * _5751] = call.data[calldata.size len 32 * _5751]
            _6830 = mem[_4410]
            idx = 0
            while idx < _6830:
                if idx >= mem[_5715]:
                    revert with 0, 50
                if idx >= mem[_4410]:
                    revert with 0, 50
                if mem[(32 * idx) + _4410 + 32] < mem[(32 * idx) + _5715 + 32]:
                    revert with 0, 17
                if idx >= mem[_5783]:
                    revert with 0, 50
                mem[(32 * idx) + _5783 + 32] = mem[(32 * idx) + _4410 + 32] - mem[(32 * idx) + _5715 + 32]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = _5651 - _5650
            mem[mem[64] + 32] = 128
            _7438 = mem[_5783]
            mem[mem[64] + 128] = mem[_5783]
            mem[mem[64] + 160 len 32 * _7438] = mem[_5783 + 32 len 32 * _7438]
            mem[mem[64] + 64] = -45000
            mem[mem[64] + 96] = ext_call.return_data[0]
            return _5651 - _5650, 128, -45000, ext_call.return_data[0], mem[mem[64] + 128 len (32 * _7438) + 32]
        mem[mem[64]] = 0x4641257d00000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(cd[4]))
        call address(cd[4]).harvest() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if gas_remaining < gas_remaining:
            revert with 0, 17
        _2972 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2972] = 0
        mem[_2972 + 32] = 96
        _2973 = mem[64]
        mem[64] = mem[64] + 64
        idx = 0
        s = 0
        while idx < mem[96]:
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
            if s > !eth.balance(mem[(32 * idx) + 128]):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + eth.balance(mem[(32 * idx) + 128])
            continue 
        mem[_2973] = s
        if ('cd', 36).length > test266151307():
            revert with 0, 65
        _4408 = mem[64]
        mem[mem[64]] = ('cd', 36).length
        mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
        if not ('cd', 36).length:
            idx = 0
            while idx < ('cd', 36).length:
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                _6822 = mem[96]
                s = 0
                t = 0
                while s < _6822:
                    if s >= mem[96]:
                        revert with 0, 50
                    if not mem[(32 * s) + 140 len 20]:
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = t
                        continue 
                    if s >= mem[96]:
                        revert with 0, 50
                    _7340 = mem[(32 * s) + 128]
                    mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_7340)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7590 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if t > !mem[_7590]:
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t + mem[_7590]
                    continue 
                if idx >= mem[_4408]:
                    revert with 0, 50
                mem[(32 * idx) + _4408 + 32] = t
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[_2973 + 32] = _4408
            _5644 = mem[ceil32(return_data.size) + 288]
            _5645 = mem[_2973]
            if mem[_2973] < mem[ceil32(return_data.size) + 288]:
                revert with 0, 17
            _5709 = mem[ceil32(return_data.size) + 320]
            _5748 = mem[_4408]
            if mem[_4408] > test266151307():
                revert with 0, 65
            _5780 = mem[64]
            mem[mem[64]] = mem[_4408]
            mem[64] = mem[64] + (32 * _5748) + 32
            if not _5748:
                _6820 = mem[_4408]
                idx = 0
                while idx < _6820:
                    if idx >= mem[_5709]:
                        revert with 0, 50
                    if idx >= mem[_4408]:
                        revert with 0, 50
                    if mem[(32 * idx) + _4408 + 32] < mem[(32 * idx) + _5709 + 32]:
                        revert with 0, 17
                    if idx >= mem[_5780]:
                        revert with 0, 50
                    mem[(32 * idx) + _5780 + 32] = mem[(32 * idx) + _4408 + 32] - mem[(32 * idx) + _5709 + 32]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[mem[64]] = _5645 - _5644
                mem[mem[64] + 32] = 128
                _7428 = mem[_5780]
                mem[mem[64] + 128] = mem[_5780]
                mem[mem[64] + 160 len 32 * _7428] = mem[_5780 + 32 len 32 * _7428]
                mem[mem[64] + 64] = 0
                mem[mem[64] + 96] = ext_call.return_data[0]
                return _5645 - _5644, 128, 0, ext_call.return_data[0], mem[mem[64] + 128 len (32 * _7428) + 32]
            mem[_5780 + 32 len 32 * _5748] = call.data[calldata.size len 32 * _5748]
            _6821 = mem[_4408]
            idx = 0
            while idx < _6821:
                if idx >= mem[_5709]:
                    revert with 0, 50
                if idx >= mem[_4408]:
                    revert with 0, 50
                if mem[(32 * idx) + _4408 + 32] < mem[(32 * idx) + _5709 + 32]:
                    revert with 0, 17
                if idx >= mem[_5780]:
                    revert with 0, 50
                mem[(32 * idx) + _5780 + 32] = mem[(32 * idx) + _4408 + 32] - mem[(32 * idx) + _5709 + 32]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = _5645 - _5644
            mem[mem[64] + 32] = 128
            _7429 = mem[_5780]
            mem[mem[64] + 128] = mem[_5780]
            mem[mem[64] + 160 len 32 * _7429] = mem[_5780 + 32 len 32 * _7429]
            mem[mem[64] + 64] = 0
            mem[mem[64] + 96] = ext_call.return_data[0]
            return _5645 - _5644, 128, 0, ext_call.return_data[0], mem[mem[64] + 128 len (32 * _7429) + 32]
        mem[_4408 + 32 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            _6825 = mem[96]
            s = 0
            t = 0
            while s < _6825:
                if s >= mem[96]:
                    revert with 0, 50
                if not mem[(32 * s) + 140 len 20]:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t
                    continue 
                if s >= mem[96]:
                    revert with 0, 50
                _7342 = mem[(32 * s) + 128]
                mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_7342)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7593 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if t > !mem[_7593]:
                    revert with 0, 17
                if s == -1:
                    revert with 0, 17
                s = s + 1
                t = t + mem[_7593]
                continue 
            if idx >= mem[_4408]:
                revert with 0, 50
            mem[(32 * idx) + _4408 + 32] = t
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[_2973 + 32] = _4408
        _5646 = mem[ceil32(return_data.size) + 288]
        _5647 = mem[_2973]
        if mem[_2973] < mem[ceil32(return_data.size) + 288]:
            revert with 0, 17
        _5711 = mem[ceil32(return_data.size) + 320]
        _5749 = mem[_4408]
        if mem[_4408] > test266151307():
            revert with 0, 65
        _5781 = mem[64]
        mem[mem[64]] = mem[_4408]
        mem[64] = mem[64] + (32 * _5749) + 32
        if not _5749:
            _6823 = mem[_4408]
            idx = 0
            while idx < _6823:
                if idx >= mem[_5711]:
                    revert with 0, 50
                if idx >= mem[_4408]:
                    revert with 0, 50
                if mem[(32 * idx) + _4408 + 32] < mem[(32 * idx) + _5711 + 32]:
                    revert with 0, 17
                if idx >= mem[_5781]:
                    revert with 0, 50
                mem[(32 * idx) + _5781 + 32] = mem[(32 * idx) + _4408 + 32] - mem[(32 * idx) + _5711 + 32]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = _5647 - _5646
            mem[mem[64] + 32] = 128
            _7431 = mem[_5781]
            mem[mem[64] + 128] = mem[_5781]
            mem[mem[64] + 160 len 32 * _7431] = mem[_5781 + 32 len 32 * _7431]
            mem[mem[64] + 64] = 0
            mem[mem[64] + 96] = ext_call.return_data[0]
            return _5647 - _5646, 128, 0, ext_call.return_data[0], mem[mem[64] + 128 len (32 * _7431) + 32]
        mem[_5781 + 32 len 32 * _5749] = call.data[calldata.size len 32 * _5749]
        _6824 = mem[_4408]
        idx = 0
        while idx < _6824:
            if idx >= mem[_5711]:
                revert with 0, 50
            if idx >= mem[_4408]:
                revert with 0, 50
            if mem[(32 * idx) + _4408 + 32] < mem[(32 * idx) + _5711 + 32]:
                revert with 0, 17
            if idx >= mem[_5781]:
                revert with 0, 50
            mem[(32 * idx) + _5781 + 32] = mem[(32 * idx) + _4408 + 32] - mem[(32 * idx) + _5711 + 32]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = _5647 - _5646
        mem[mem[64] + 32] = 128
        _7432 = mem[_5781]
        mem[mem[64] + 128] = mem[_5781]
        mem[mem[64] + 160 len 32 * _7432] = mem[_5781 + 32 len 32 * _7432]
        mem[mem[64] + 64] = 0
        mem[mem[64] + 96] = ext_call.return_data[0]
        return _5647 - _5646, 128, 0, ext_call.return_data[0], mem[mem[64] + 128 len (32 * _7432) + 32]
    mem[ceil32(return_data.size) + 384 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
    idx = 0
    while idx < ('cd', 36).length:
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        _4291 = mem[96]
        s = 0
        t = 0
        while s < _4291:
            if s >= mem[96]:
                revert with 0, 50
            if not mem[(32 * s) + 140 len 20]:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                t = t
                continue 
            if s >= mem[96]:
                revert with 0, 50
            _4418 = mem[(32 * s) + 128]
            mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(_4418)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4435 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if t > !mem[_4435]:
                revert with 0, 17
            if s == -1:
                revert with 0, 17
            s = s + 1
            t = t + mem[_4435]
            continue 
        if idx >= mem[ceil32(return_data.size) + 352]:
            revert with 0, 50
        mem[(32 * idx) + ceil32(return_data.size) + 384] = t
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[ceil32(return_data.size) + 320] = ceil32(return_data.size) + 352
    mem[mem[64] len 259] = code.data[7270 len 259]
    mem[mem[64] + 259] = address(cd[4])
    create contract with 0 wei
                    code: code.data[7270 len 259], address(cd[4])
    if create.new_address:
        if gas_remaining < 45000:
            revert with 0, 17
        if 2 >= mem[96]:
            revert with 0, 50
        mem[192] = address(create.new_address)
        if gas_remaining - 45000 < gas_remaining:
            revert with 0, 17
        _3025 = mem[64]
        mem[64] = mem[64] + 64
        mem[_3025] = 0
        mem[_3025 + 32] = 96
        _3026 = mem[64]
        mem[64] = mem[64] + 64
        idx = 0
        s = 0
        while idx < mem[96]:
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
            if s > !eth.balance(mem[(32 * idx) + 128]):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + eth.balance(mem[(32 * idx) + 128])
            continue 
        mem[_3026] = s
        if ('cd', 36).length > test266151307():
            revert with 0, 65
        _4416 = mem[64]
        mem[mem[64]] = ('cd', 36).length
        mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
        if not ('cd', 36).length:
            idx = 0
            while idx < ('cd', 36).length:
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                _6840 = mem[96]
                s = 0
                t = 0
                while s < _6840:
                    if s >= mem[96]:
                        revert with 0, 50
                    if not mem[(32 * s) + 140 len 20]:
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = t
                        continue 
                    if s >= mem[96]:
                        revert with 0, 50
                    _7352 = mem[(32 * s) + 128]
                    mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_7352)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7608 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if t > !mem[_7608]:
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t + mem[_7608]
                    continue 
                if idx >= mem[_4416]:
                    revert with 0, 50
                mem[(32 * idx) + _4416 + 32] = t
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[_3026 + 32] = _4416
            _5656 = mem[ceil32(return_data.size) + 288]
            _5657 = mem[_3026]
            if mem[_3026] < mem[ceil32(return_data.size) + 288]:
                revert with 0, 17
            _5721 = mem[ceil32(return_data.size) + 320]
            _5754 = mem[_4416]
            if mem[_4416] > test266151307():
                revert with 0, 65
            _5786 = mem[64]
            mem[mem[64]] = mem[_4416]
            mem[64] = mem[64] + (32 * _5754) + 32
            if not _5754:
                _6838 = mem[_4416]
                idx = 0
                while idx < _6838:
                    if idx >= mem[_5721]:
                        revert with 0, 50
                    if idx >= mem[_4416]:
                        revert with 0, 50
                    if mem[(32 * idx) + _4416 + 32] < mem[(32 * idx) + _5721 + 32]:
                        revert with 0, 17
                    if idx >= mem[_5786]:
                        revert with 0, 50
                    mem[(32 * idx) + _5786 + 32] = mem[(32 * idx) + _4416 + 32] - mem[(32 * idx) + _5721 + 32]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[mem[64]] = _5657 - _5656
                mem[mem[64] + 32] = 128
                _7446 = mem[_5786]
                mem[mem[64] + 128] = mem[_5786]
                mem[mem[64] + 160 len 32 * _7446] = mem[_5786 + 32 len 32 * _7446]
                mem[mem[64] + 64] = -45000
                mem[mem[64] + 96] = ext_call.return_data[0]
                return _5657 - _5656, 128, -45000, ext_call.return_data[0], mem[mem[64] + 128 len (32 * _7446) + 32]
            mem[_5786 + 32 len 32 * _5754] = call.data[calldata.size len 32 * _5754]
            _6839 = mem[_4416]
            idx = 0
            while idx < _6839:
                if idx >= mem[_5721]:
                    revert with 0, 50
                if idx >= mem[_4416]:
                    revert with 0, 50
                if mem[(32 * idx) + _4416 + 32] < mem[(32 * idx) + _5721 + 32]:
                    revert with 0, 17
                if idx >= mem[_5786]:
                    revert with 0, 50
                mem[(32 * idx) + _5786 + 32] = mem[(32 * idx) + _4416 + 32] - mem[(32 * idx) + _5721 + 32]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = _5657 - _5656
            mem[mem[64] + 32] = 128
            _7447 = mem[_5786]
            mem[mem[64] + 128] = mem[_5786]
            mem[mem[64] + 160 len 32 * _7447] = mem[_5786 + 32 len 32 * _7447]
            mem[mem[64] + 64] = -45000
            mem[mem[64] + 96] = ext_call.return_data[0]
            return _5657 - _5656, 128, -45000, ext_call.return_data[0], mem[mem[64] + 128 len (32 * _7447) + 32]
        mem[_4416 + 32 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            _6843 = mem[96]
            s = 0
            t = 0
            while s < _6843:
                if s >= mem[96]:
                    revert with 0, 50
                if not mem[(32 * s) + 140 len 20]:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t
                    continue 
                if s >= mem[96]:
                    revert with 0, 50
                _7354 = mem[(32 * s) + 128]
                mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_7354)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7611 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if t > !mem[_7611]:
                    revert with 0, 17
                if s == -1:
                    revert with 0, 17
                s = s + 1
                t = t + mem[_7611]
                continue 
            if idx >= mem[_4416]:
                revert with 0, 50
            mem[(32 * idx) + _4416 + 32] = t
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[_3026 + 32] = _4416
        _5658 = mem[ceil32(return_data.size) + 288]
        _5659 = mem[_3026]
        if mem[_3026] < mem[ceil32(return_data.size) + 288]:
            revert with 0, 17
        _5723 = mem[ceil32(return_data.size) + 320]
        _5755 = mem[_4416]
        if mem[_4416] > test266151307():
            revert with 0, 65
        _5787 = mem[64]
        mem[mem[64]] = mem[_4416]
        mem[64] = mem[64] + (32 * _5755) + 32
        if not _5755:
            _6841 = mem[_4416]
            idx = 0
            while idx < _6841:
                if idx >= mem[_5723]:
                    revert with 0, 50
                if idx >= mem[_4416]:
                    revert with 0, 50
                if mem[(32 * idx) + _4416 + 32] < mem[(32 * idx) + _5723 + 32]:
                    revert with 0, 17
                if idx >= mem[_5787]:
                    revert with 0, 50
                mem[(32 * idx) + _5787 + 32] = mem[(32 * idx) + _4416 + 32] - mem[(32 * idx) + _5723 + 32]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = _5659 - _5658
            mem[mem[64] + 32] = 128
            _7449 = mem[_5787]
            mem[mem[64] + 128] = mem[_5787]
            mem[mem[64] + 160 len 32 * _7449] = mem[_5787 + 32 len 32 * _7449]
            mem[mem[64] + 64] = -45000
            mem[mem[64] + 96] = ext_call.return_data[0]
            return _5659 - _5658, 128, -45000, ext_call.return_data[0], mem[mem[64] + 128 len (32 * _7449) + 32]
        mem[_5787 + 32 len 32 * _5755] = call.data[calldata.size len 32 * _5755]
        _6842 = mem[_4416]
        idx = 0
        while idx < _6842:
            if idx >= mem[_5723]:
                revert with 0, 50
            if idx >= mem[_4416]:
                revert with 0, 50
            if mem[(32 * idx) + _4416 + 32] < mem[(32 * idx) + _5723 + 32]:
                revert with 0, 17
            if idx >= mem[_5787]:
                revert with 0, 50
            mem[(32 * idx) + _5787 + 32] = mem[(32 * idx) + _4416 + 32] - mem[(32 * idx) + _5723 + 32]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = _5659 - _5658
        mem[mem[64] + 32] = 128
        _7450 = mem[_5787]
        mem[mem[64] + 128] = mem[_5787]
        mem[mem[64] + 160 len 32 * _7450] = mem[_5787 + 32 len 32 * _7450]
        mem[mem[64] + 64] = -45000
        mem[mem[64] + 96] = ext_call.return_data[0]
        return _5659 - _5658, 128, -45000, ext_call.return_data[0], mem[mem[64] + 128 len (32 * _7450) + 32]
    mem[mem[64]] = 0x4641257d00000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(cd[4]))
    call address(cd[4]).harvest() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if gas_remaining < gas_remaining:
        revert with 0, 17
    _2976 = mem[64]
    mem[64] = mem[64] + 64
    mem[_2976] = 0
    mem[_2976 + 32] = 96
    _2977 = mem[64]
    mem[64] = mem[64] + 64
    idx = 0
    s = 0
    while idx < mem[96]:
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
        if s > !eth.balance(mem[(32 * idx) + 128]):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + eth.balance(mem[(32 * idx) + 128])
        continue 
    mem[_2977] = s
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    _4414 = mem[64]
    mem[mem[64]] = ('cd', 36).length
    mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
    if not ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            _6834 = mem[96]
            s = 0
            t = 0
            while s < _6834:
                if s >= mem[96]:
                    revert with 0, 50
                if not mem[(32 * s) + 140 len 20]:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t
                    continue 
                if s >= mem[96]:
                    revert with 0, 50
                _7348 = mem[(32 * s) + 128]
                mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_7348)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7602 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if t > !mem[_7602]:
                    revert with 0, 17
                if s == -1:
                    revert with 0, 17
                s = s + 1
                t = t + mem[_7602]
                continue 
            if idx >= mem[_4414]:
                revert with 0, 50
            mem[(32 * idx) + _4414 + 32] = t
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[_2977 + 32] = _4414
        _5652 = mem[ceil32(return_data.size) + 288]
        _5653 = mem[_2977]
        if mem[_2977] < mem[ceil32(return_data.size) + 288]:
            revert with 0, 17
        _5717 = mem[ceil32(return_data.size) + 320]
        _5752 = mem[_4414]
        if mem[_4414] > test266151307():
            revert with 0, 65
        _5784 = mem[64]
        mem[mem[64]] = mem[_4414]
        mem[64] = mem[64] + (32 * _5752) + 32
        if not _5752:
            _6832 = mem[_4414]
            idx = 0
            while idx < _6832:
                if idx >= mem[_5717]:
                    revert with 0, 50
                if idx >= mem[_4414]:
                    revert with 0, 50
                if mem[(32 * idx) + _4414 + 32] < mem[(32 * idx) + _5717 + 32]:
                    revert with 0, 17
                if idx >= mem[_5784]:
                    revert with 0, 50
                mem[(32 * idx) + _5784 + 32] = mem[(32 * idx) + _4414 + 32] - mem[(32 * idx) + _5717 + 32]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = _5653 - _5652
            mem[mem[64] + 32] = 128
            _7440 = mem[_5784]
            mem[mem[64] + 128] = mem[_5784]
            mem[mem[64] + 160 len 32 * _7440] = mem[_5784 + 32 len 32 * _7440]
            mem[mem[64] + 64] = 0
            mem[mem[64] + 96] = ext_call.return_data[0]
            return _5653 - _5652, 128, 0, ext_call.return_data[0], mem[mem[64] + 128 len (32 * _7440) + 32]
        mem[_5784 + 32 len 32 * _5752] = call.data[calldata.size len 32 * _5752]
        _6833 = mem[_4414]
        idx = 0
        while idx < _6833:
            if idx >= mem[_5717]:
                revert with 0, 50
            if idx >= mem[_4414]:
                revert with 0, 50
            if mem[(32 * idx) + _4414 + 32] < mem[(32 * idx) + _5717 + 32]:
                revert with 0, 17
            if idx >= mem[_5784]:
                revert with 0, 50
            mem[(32 * idx) + _5784 + 32] = mem[(32 * idx) + _4414 + 32] - mem[(32 * idx) + _5717 + 32]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = _5653 - _5652
        mem[mem[64] + 32] = 128
        _7441 = mem[_5784]
        mem[mem[64] + 128] = mem[_5784]
        mem[mem[64] + 160 len 32 * _7441] = mem[_5784 + 32 len 32 * _7441]
        mem[mem[64] + 64] = 0
        mem[mem[64] + 96] = ext_call.return_data[0]
        return _5653 - _5652, 128, 0, ext_call.return_data[0], mem[mem[64] + 128 len (32 * _7441) + 32]
    mem[_4414 + 32 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
    idx = 0
    while idx < ('cd', 36).length:
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        _6837 = mem[96]
        s = 0
        t = 0
        while s < _6837:
            if s >= mem[96]:
                revert with 0, 50
            if not mem[(32 * s) + 140 len 20]:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                t = t
                continue 
            if s >= mem[96]:
                revert with 0, 50
            _7350 = mem[(32 * s) + 128]
            mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(_7350)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _7605 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if t > !mem[_7605]:
                revert with 0, 17
            if s == -1:
                revert with 0, 17
            s = s + 1
            t = t + mem[_7605]
            continue 
        if idx >= mem[_4414]:
            revert with 0, 50
        mem[(32 * idx) + _4414 + 32] = t
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[_2977 + 32] = _4414
    _5654 = mem[ceil32(return_data.size) + 288]
    _5655 = mem[_2977]
    if mem[_2977] < mem[ceil32(return_data.size) + 288]:
        revert with 0, 17
    _5719 = mem[ceil32(return_data.size) + 320]
    _5753 = mem[_4414]
    if mem[_4414] > test266151307():
        revert with 0, 65
    _5785 = mem[64]
    mem[mem[64]] = mem[_4414]
    mem[64] = mem[64] + (32 * _5753) + 32
    if not _5753:
        _6835 = mem[_4414]
        idx = 0
        while idx < _6835:
            if idx >= mem[_5719]:
                revert with 0, 50
            if idx >= mem[_4414]:
                revert with 0, 50
            if mem[(32 * idx) + _4414 + 32] < mem[(32 * idx) + _5719 + 32]:
                revert with 0, 17
            if idx >= mem[_5785]:
                revert with 0, 50
            mem[(32 * idx) + _5785 + 32] = mem[(32 * idx) + _4414 + 32] - mem[(32 * idx) + _5719 + 32]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = _5655 - _5654
        mem[mem[64] + 32] = 128
        _7443 = mem[_5785]
        mem[mem[64] + 128] = mem[_5785]
        mem[mem[64] + 160 len 32 * _7443] = mem[_5785 + 32 len 32 * _7443]
        mem[mem[64] + 64] = 0
        mem[mem[64] + 96] = ext_call.return_data[0]
        return _5655 - _5654, 128, 0, ext_call.return_data[0], mem[mem[64] + 128 len (32 * _7443) + 32]
    mem[_5785 + 32 len 32 * _5753] = call.data[calldata.size len 32 * _5753]
    _6836 = mem[_4414]
    idx = 0
    while idx < _6836:
        if idx >= mem[_5719]:
            revert with 0, 50
        if idx >= mem[_4414]:
            revert with 0, 50
        if mem[(32 * idx) + _4414 + 32] < mem[(32 * idx) + _5719 + 32]:
            revert with 0, 17
        if idx >= mem[_5785]:
            revert with 0, 50
        mem[(32 * idx) + _5785 + 32] = mem[(32 * idx) + _4414 + 32] - mem[(32 * idx) + _5719 + 32]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[mem[64]] = _5655 - _5654
    mem[mem[64] + 32] = 128
    _7444 = mem[_5785]
    mem[mem[64] + 128] = mem[_5785]
    mem[mem[64] + 160 len 32 * _7444] = mem[_5785 + 32 len 32 * _7444]
    mem[mem[64] + 64] = 0
    mem[mem[64] + 96] = ext_call.return_data[0]
    return _5655 - _5654, 128, 0, ext_call.return_data[0], mem[mem[64] + 128 len (32 * _7444) + 32]
}



}
