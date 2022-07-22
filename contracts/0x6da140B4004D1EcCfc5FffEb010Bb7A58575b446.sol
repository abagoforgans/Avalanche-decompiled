contract main {




// =====================  Runtime code  =====================


#
#  - revokeAllowance(address arg1, address arg2)
#  - recoverERC20(address arg1, uint256 arg2)
#
const indentifier = 0xa58605943571627895e9199c4b9bee82981358c9253a80848fa54eae46a75fb4


address owner;
uint256 swapGasEstimate;
array of uint256 name;
mapping of address sub_71e8c643;
mapping of address stor99;

function name() {
    return name[0 len name.length]
}

function swapGasEstimate() {
    return swapGasEstimate
}

function sub_71e8c643(?) {
    require calldata.size - 4 >= 64
    return sub_71e8c643[address(arg1)][address(arg2)]
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function setAllowances() {
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setSwapGasEstimate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    swapGasEstimate = arg1
    emit 0xf43f23b7: arg1, this.address
}

function recoverAVAX(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'YakAdapter: Nothing to recover'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Recovered(address arg1, uint256 arg2):
                   arg1,
    emit 0x0: arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a204e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function swap(uint256 arg1, uint256 arg2, address arg3, address arg4, address arg5) {
    require calldata.size - 4 >= 160
    require ext_code.size(sub_71e8c643[address(arg3)][address(arg4)])
    call sub_71e8c643[address(arg3)][address(arg4)].swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
         gas gas_remaining wei
        args 0, 0, address(arg4), arg1, arg2, address(arg5), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xe2bdbc6b: arg1, arg2, arg3, arg4
}

function query(uint256 arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    if not sub_71e8c643[address(arg2)][address(arg3)]:
        return 0
    if not arg1:
        return 0
    require ext_code.size(sub_71e8c643[address(arg2)][address(arg3)])
    staticcall sub_71e8c643[address(arg2)][address(arg3)].paused() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        return 0
    require ext_code.size(sub_71e8c643[address(arg2)][address(arg3)])
    staticcall sub_71e8c643[address(arg2)][address(arg3)].quotePotentialSwap(address arg1, address arg2, uint256 arg3) with:
            gas gas_remaining wei
           args address(arg2), address(arg3), arg1
    if not ext_call.success:
        return 0
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_4490af06(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        mem[mem[64]] = 0xee8c24b800000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).getTokenAddresses() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _17 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _18 = mem[_17]
        require mem[_17] <= 4294967296
        require mem[_17] + 32 <= return_data.size
        require mem[_17 + mem[_17]] <= 4294967296 and mem[_17] + (32 * mem[_17 + mem[_17]]) + 32 <= return_data.size
        mem[_17 + ceil32(return_data.size)] = mem[_17 + mem[_17]]
        _21 = mem[_17 + _18]
        s = 0
        while s < 32 * _21:
            mem[s + _17 + ceil32(return_data.size) + 32] = mem[s + _17 + _18 + 32]
            s = s + 32
            continue 
        mem[64] = (32 * _21) + _17 + ceil32(return_data.size) + 32
        _32 = mem[_17 + ceil32(return_data.size)]
        s = 0
        while s < _32:
            _42 = mem[_17 + ceil32(return_data.size)]
            idx = 0
            while idx < _42:
                if s != idx:
                    require s < mem[_17 + ceil32(return_data.size)]
                    mem[0] = mem[(32 * s) + _17 + ceil32(return_data.size) + 44 len 20]
                    mem[32] = 3
                    _45 = sha3(mem[0], 3)
                    require idx < mem[_17 + ceil32(return_data.size)]
                    mem[0] = mem[(32 * idx) + _17 + ceil32(return_data.size) + 44 len 20]
                    mem[32] = _45
                    stor[_45][mem[0]] = 0
                _32 = mem[_17 + ceil32(return_data.size)]
                _42 = mem[_17 + ceil32(return_data.size)]
                idx = idx + 1
                continue 
            _32 = mem[_17 + ceil32(return_data.size)]
            s = s + 1
            continue 
        mem[(32 * _21) + _17 + ceil32(return_data.size) + 32] = address(cd[((32 * idx) + cd[4] + 36)])
        emit 0x623a1d97: address(cd[((32 * idx) + cd[4] + 36)])
        idx = idx + 1
        continue 
}

function addPools(address[] arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    idx = 0
    while idx < arg1.length:
        mem[mem[64]] = 0xee8c24b800000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        staticcall address(cd[((32 * idx) + arg1 + 36)]).getTokenAddresses() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _17 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _18 = mem[_17]
        require mem[_17] <= 4294967296
        require mem[_17] + 32 <= return_data.size
        require mem[_17 + mem[_17]] <= 4294967296 and mem[_17] + (32 * mem[_17 + mem[_17]]) + 32 <= return_data.size
        mem[_17 + ceil32(return_data.size)] = mem[_17 + mem[_17]]
        _21 = mem[_17 + _18]
        s = 0
        while s < 32 * _21:
            mem[s + _17 + ceil32(return_data.size) + 32] = mem[s + _17 + _18 + 32]
            s = s + 32
            continue 
        mem[64] = (32 * _21) + _17 + ceil32(return_data.size) + 32
        _32 = mem[_17 + ceil32(return_data.size)]
        s = 0
        while s < _32:
            _51 = mem[_17 + ceil32(return_data.size)]
            t = 0
            while t < _51:
                if s != t:
                    require s < mem[_17 + ceil32(return_data.size)]
                    mem[0] = mem[(32 * s) + _17 + ceil32(return_data.size) + 44 len 20]
                    mem[32] = 3
                    _54 = sha3(mem[0], 3)
                    require t < mem[_17 + ceil32(return_data.size)]
                    mem[0] = mem[(32 * t) + _17 + ceil32(return_data.size) + 44 len 20]
                    mem[32] = _54
                    stor[_54][mem[0]] = address(cd[((32 * idx) + arg1 + 36)])
                    if address(cd[((32 * idx) + arg1 + 36)]):
                        require s < mem[_17 + ceil32(return_data.size)]
                        _59 = mem[(32 * s) + _17 + ceil32(return_data.size) + 32]
                        mem[(32 * _21) + _17 + ceil32(return_data.size) + 36] = this.address
                        mem[(32 * _21) + _17 + ceil32(return_data.size) + 68] = address(cd[((32 * idx) + arg1 + 36)])
                        require ext_code.size(address(_59))
                        staticcall address(_59).allowance(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args this.address, address(cd[((32 * idx) + arg1 + 36)])
                        mem[(32 * _21) + _17 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < -1:
                            mem[(32 * _21) + _17 + ceil32(return_data.size) + 36] = address(cd[((32 * idx) + arg1 + 36)])
                            mem[(32 * _21) + _17 + ceil32(return_data.size) + 68] = -1
                            require ext_code.size(address(_59))
                            call address(_59).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(cd[((32 * idx) + arg1 + 36)]), -1
                            mem[(32 * _21) + _17 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                _32 = mem[_17 + ceil32(return_data.size)]
                _51 = mem[_17 + ceil32(return_data.size)]
                t = t + 1
                continue 
            _32 = mem[_17 + ceil32(return_data.size)]
            s = s + 1
            continue 
        mem[(32 * _21) + _17 + ceil32(return_data.size) + 32] = address(cd[((32 * idx) + arg1 + 36)])
        emit 0xa44f9b37: address(cd[((32 * idx) + arg1 + 36)])
        idx = idx + 1
        continue 
}

function sub_21901c6f(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    if arg2.length <= 1:
        revert with 0, 'At least two tkns'
    if not arg1:
        revert with 0, 'Only non-zero pool'
    mem[(32 * arg2.length) + 128] = 0xee8c24b800000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.getTokenAddresses() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg2.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _12 = mem[(32 * arg2.length) + 128]
    require mem[(32 * arg2.length) + 128] <= 4294967296
    require mem[(32 * arg2.length) + 128] + 32 <= return_data.size
    require mem[(32 * arg2.length) + mem[(32 * arg2.length) + 128] + 128] <= 4294967296 and mem[(32 * arg2.length) + 128] + (32 * mem[(32 * arg2.length) + mem[(32 * arg2.length) + 128] + 128]) + 32 <= return_data.size
    mem[(32 * arg2.length) + ceil32(return_data.size) + 128] = mem[(32 * arg2.length) + mem[(32 * arg2.length) + 128] + 128]
    _15 = mem[(32 * arg2.length) + _12 + 128]
    mem[(32 * arg2.length) + ceil32(return_data.size) + 160 len floor32(mem[(32 * arg2.length) + _12 + 128])] = mem[(32 * arg2.length) + _12 + 160 len floor32(mem[(32 * arg2.length) + _12 + 128])]
    idx = 0
    s = 0
    while idx < mem[(32 * arg2.length) + ceil32(return_data.size) + 128]:
        t = 0
        while t < arg2.length:
            require t < arg2.length
            require t < mem[(32 * arg2.length) + ceil32(return_data.size) + 128]
            if mem[(32 * t) + (32 * arg2.length) + ceil32(return_data.size) + 172 len 20] != mem[(32 * t) + 140 len 20]:
                t = t + 1
                continue 
            t = t + 1
            s = s + 1
            continue 
        t = t + 1
        s = s
        continue 
    if arg2.length != s:
        revert with 0, 'Pool does not support tkns'
    idx = 0
    while idx < arg2.length:
        s = 0
        while s < arg2.length:
            if idx != s:
                require idx < arg2.length
                require s < arg2.length
                mem[0] = mem[(32 * s) + 140 len 20]
                mem[32] = sha3(mem[(32 * idx) + 140 len 20], 3)
                sub_71e8c643[mem[(32 * idx) + 140 len 20]][mem[(32 * s) + 140 len 20]] = arg1
                if arg1:
                    require idx < arg2.length
                    _103 = mem[(32 * idx) + 128]
                    mem[(32 * _15) + (32 * arg2.length) + ceil32(return_data.size) + 164] = this.address
                    mem[(32 * _15) + (32 * arg2.length) + ceil32(return_data.size) + 196] = arg1
                    require ext_code.size(address(_103))
                    staticcall address(_103).allowance(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args this.address, arg1
                    mem[(32 * _15) + (32 * arg2.length) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < -1:
                        mem[(32 * _15) + (32 * arg2.length) + ceil32(return_data.size) + 164] = arg1
                        mem[(32 * _15) + (32 * arg2.length) + ceil32(return_data.size) + 196] = -1
                        require ext_code.size(address(_103))
                        call address(_103).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), -1
                        mem[(32 * _15) + (32 * arg2.length) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
            s = s + 1
            continue 
        idx = idx + 1
        continue 
    mem[(32 * _15) + (32 * arg2.length) + ceil32(return_data.size) + 256 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    emit 0x969168e4: address(arg1), Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * _15) + (32 * arg2.length) + ceil32(return_data.size) + floor32(arg2.length) + 256 len (32 * arg2.length) - floor32(arg2.length)])
}



}
