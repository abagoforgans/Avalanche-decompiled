contract main {




// =====================  Runtime code  =====================


#
#  - sub_81e32598(?)
#
address owner;
address stor1;

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

function sub_604f1ac7(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = address(arg1)
}

function withdrawETH() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'WITHDRAW_FAILED'
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

function withdrawToken(address arg1) {
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
    if ext_call.return_data[0] <= 0:
        revert with 0, 'ZERO_TOKEN_BALANCE'
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_b680a32c(?) {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == arg4
    require arg5 == bool(arg5)
    mem[100] = this.address
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = address(arg1)
    mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if stor1 == address(arg3):
        mem[(2 * ceil32(return_data.size)) + 96] = 2
        mem[(2 * ceil32(return_data.size)) + 128] = stor1
        mem[(2 * ceil32(return_data.size)) + 160] = address(arg2)
        mem[(2 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 196] = arg4
        mem[(2 * ceil32(return_data.size)) + 228] = 64
        mem[(2 * ceil32(return_data.size)) + 260] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = (2 * ceil32(return_data.size)) + 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(arg1))
        staticcall address(arg1).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg4, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _62 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg4) >> 32
        require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg4) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
        _64 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 193
        mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192]
        require _62 + (32 * _64) + 32 <= return_data.size
        idx = 0
        s = (2 * ceil32(return_data.size)) + _62 + 224
        t = (4 * ceil32(return_data.size)) + 224
        while idx < _64:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if _64 < 1:
            revert with 'NH{q', 17
        if _64 - 1 >= _64:
            revert with 'NH{q', 50
        _153 = mem[(32 * _64 - 1) + (4 * ceil32(return_data.size)) + 224]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _158 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _160 = mem[_158]
        require mem[_158] == mem[_158]
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg4
        mem[mem[64] + 36] = 1
        mem[mem[64] + 68] = 160
        _164 = mem[(2 * ceil32(return_data.size)) + 96]
        mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = mem[64] + 196
        while idx < _164:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp
        require ext_code.size(address(arg1))
        call address(arg1).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg4, 1, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _164) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _242 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _244 = mem[_242]
        require mem[_242] == mem[_242]
        if mem[_242] < _160:
            revert with 'NH{q', 17
        if _153 < mem[_242] - _160:
            revert with 'NH{q', 17
        if _153 - mem[_242] + _160 and 10^18 > -1 / _153 - mem[_242] + _160:
            revert with 'NH{q', 17
        if not _153:
            revert with 'NH{q', 18
        if uint8(var300002) < var300001:
            if var312003 < var312001:
                revert with 'NH{q', 17
            # nil
        else:
            if not arg5:
                emit 0x30658b22: address(arg2), (10^18 * _153) - (10^18 * mem[_242]) + (10^18 * _160) / _153, bool(arg5), 0
                return (10^18 * _153) - (10^18 * mem[_242]) + (10^18 * _160) / _153, 0
            mem[mem[64] + 4] = address(arg1)
            mem[mem[64] + 36] = _244 - _160
            require ext_code.size(address(arg2))
            call address(arg2).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), _244 - _160
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _904 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_904] == bool(mem[_904])
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _244 - _160
            mem[mem[64] + 36] = 64
            _926 = mem[(2 * ceil32(return_data.size)) + 96]
            mem[mem[64] + 68] = mem[(2 * ceil32(return_data.size)) + 96]
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = mem[64] + 100
            while idx < _926:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(arg1))
            staticcall address(arg1).getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _244 - _160, 64, mem[mem[64] + 68 len (32 * _926) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1044 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1046 = mem[_1044]
            require mem[_1044] <= test266151307()
            require _1044 + mem[_1044] + 31 < _1044 + return_data.size
            _1048 = mem[_1044 + mem[_1044]]
            if mem[_1044 + mem[_1044]] > test266151307():
                revert with 'NH{q', 65
            if _1044 + ceil32(return_data.size) + floor32(mem[_1044 + mem[_1044]]) + 1 > test266151307() or floor32(mem[_1044 + mem[_1044]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _1044 + ceil32(return_data.size) + floor32(mem[_1044 + mem[_1044]]) + 1
            mem[_1044 + ceil32(return_data.size)] = _1048
            require _1046 + (32 * _1048) + 32 <= return_data.size
            idx = 0
            s = _1044 + _1046 + 32
            t = _1044 + ceil32(return_data.size) + 32
            while idx < _1048:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _1048 < 1:
                revert with 'NH{q', 17
            if _1048 - 1 >= _1048:
                revert with 'NH{q', 50
            _1178 = mem[(32 * _1048 - 1) + _1044 + ceil32(return_data.size) + 32]
            mem[mem[64] + 4] = owner
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args owner
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1198 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1200 = mem[_1198]
            require mem[_1198] == mem[_1198]
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _244 - _160
            mem[mem[64] + 36] = 1
            mem[mem[64] + 68] = 160
            _1215 = mem[(2 * ceil32(return_data.size)) + 96]
            mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 96]
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = mem[64] + 196
            while idx < _1215:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = owner
            mem[mem[64] + 132] = block.timestamp
            require ext_code.size(address(arg1))
            call address(arg1).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _244 - _160, 1, 160, owner, block.timestamp, mem[mem[64] + 164 len (32 * _1215) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = owner
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args owner
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1314 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1314] == mem[_1314]
            if mem[_1314] < _1200:
                revert with 'NH{q', 17
            if _1178 < mem[_1314] - _1200:
                revert with 'NH{q', 17
            if _1178 - mem[_1314] + _1200 and 10^18 > -1 / _1178 - mem[_1314] + _1200:
                revert with 'NH{q', 17
            if not _1178:
                revert with 'NH{q', 18
            emit 0x30658b22: address(arg2), (10^18 * _153) - (10^18 * _244) + (10^18 * _160) / _153, bool(arg5), (10^18 * _1178) - (10^18 * mem[_1314]) + (10^18 * _1200) / _1178
            return (10^18 * _153) - (10^18 * _244) + (10^18 * _160) / _153, 
                   (10^18 * _1178) - (10^18 * mem[_1314]) + (10^18 * _1200) / _1178
    else:
        mem[(2 * ceil32(return_data.size)) + 96] = 3
        mem[(2 * ceil32(return_data.size)) + 128] = stor1
        mem[(2 * ceil32(return_data.size)) + 160] = address(arg3)
        mem[(2 * ceil32(return_data.size)) + 192] = address(arg2)
        mem[(2 * ceil32(return_data.size)) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 228] = arg4
        mem[(2 * ceil32(return_data.size)) + 260] = 64
        mem[(2 * ceil32(return_data.size)) + 292] = 3
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = (2 * ceil32(return_data.size)) + 324
        while idx < 3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(arg1))
        staticcall address(arg1).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg4, Array(len=3, data=mem[(2 * ceil32(return_data.size)) + 324 len 96])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        _61 = mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg4) >> 32
        require mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg4) >> 32 + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
        _63 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg4) >> 32 + 224]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg4) >> 32 + 224] > test266151307():
            revert with 'NH{q', 65
        if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg4) >> 32 + 224]) + 225 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg4) >> 32 + 224]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg4) >> 32 + 224]) + 225
        mem[(4 * ceil32(return_data.size)) + 224] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg4) >> 32 + 224]
        require _61 + (32 * _63) + 32 <= return_data.size
        idx = 0
        s = (2 * ceil32(return_data.size)) + _61 + 256
        t = (4 * ceil32(return_data.size)) + 256
        while idx < _63:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if _63 < 1:
            revert with 'NH{q', 17
        if _63 - 1 >= _63:
            revert with 'NH{q', 50
        _151 = mem[(32 * _63 - 1) + (4 * ceil32(return_data.size)) + 256]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _157 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _159 = mem[_157]
        require mem[_157] == mem[_157]
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg4
        mem[mem[64] + 36] = 1
        mem[mem[64] + 68] = 160
        _163 = mem[(2 * ceil32(return_data.size)) + 96]
        mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = mem[64] + 196
        while idx < _163:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp
        require ext_code.size(address(arg1))
        call address(arg1).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg4, 1, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _163) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _241 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _243 = mem[_241]
        require mem[_241] == mem[_241]
        if mem[_241] < _159:
            revert with 'NH{q', 17
        if _151 < mem[_241] - _159:
            revert with 'NH{q', 17
        if _151 - mem[_241] + _159 and 10^18 > -1 / _151 - mem[_241] + _159:
            revert with 'NH{q', 17
        if not _151:
            revert with 'NH{q', 18
        if uint8(var301002) < var301001:
            if var313003 < var313001:
                revert with 'NH{q', 17
            # nil
        else:
            if not arg5:
                emit 0x30658b22: address(arg2), (10^18 * _151) - (10^18 * mem[_241]) + (10^18 * _159) / _151, bool(arg5), 0
                return (10^18 * _151) - (10^18 * mem[_241]) + (10^18 * _159) / _151, 0
            mem[mem[64] + 4] = address(arg1)
            mem[mem[64] + 36] = _243 - _159
            require ext_code.size(address(arg2))
            call address(arg2).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), _243 - _159
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _901 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_901] == bool(mem[_901])
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _243 - _159
            mem[mem[64] + 36] = 64
            _924 = mem[(2 * ceil32(return_data.size)) + 96]
            mem[mem[64] + 68] = mem[(2 * ceil32(return_data.size)) + 96]
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = mem[64] + 100
            while idx < _924:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(arg1))
            staticcall address(arg1).getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _243 - _159, 64, mem[mem[64] + 68 len (32 * _924) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1043 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1045 = mem[_1043]
            require mem[_1043] <= test266151307()
            require _1043 + mem[_1043] + 31 < _1043 + return_data.size
            _1047 = mem[_1043 + mem[_1043]]
            if mem[_1043 + mem[_1043]] > test266151307():
                revert with 'NH{q', 65
            if _1043 + ceil32(return_data.size) + floor32(mem[_1043 + mem[_1043]]) + 1 > test266151307() or floor32(mem[_1043 + mem[_1043]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _1043 + ceil32(return_data.size) + floor32(mem[_1043 + mem[_1043]]) + 1
            mem[_1043 + ceil32(return_data.size)] = _1047
            require _1045 + (32 * _1047) + 32 <= return_data.size
            idx = 0
            s = _1043 + _1045 + 32
            t = _1043 + ceil32(return_data.size) + 32
            while idx < _1047:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if _1047 < 1:
                revert with 'NH{q', 17
            if _1047 - 1 >= _1047:
                revert with 'NH{q', 50
            _1177 = mem[(32 * _1047 - 1) + _1043 + ceil32(return_data.size) + 32]
            mem[mem[64] + 4] = owner
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args owner
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1197 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1199 = mem[_1197]
            require mem[_1197] == mem[_1197]
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _243 - _159
            mem[mem[64] + 36] = 1
            mem[mem[64] + 68] = 160
            _1213 = mem[(2 * ceil32(return_data.size)) + 96]
            mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 96]
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = mem[64] + 196
            while idx < _1213:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = owner
            mem[mem[64] + 132] = block.timestamp
            require ext_code.size(address(arg1))
            call address(arg1).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _243 - _159, 1, 160, owner, block.timestamp, mem[mem[64] + 164 len (32 * _1213) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = owner
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args owner
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1313 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1313] == mem[_1313]
            if mem[_1313] < _1199:
                revert with 'NH{q', 17
            if _1177 < mem[_1313] - _1199:
                revert with 'NH{q', 17
            if _1177 - mem[_1313] + _1199 and 10^18 > -1 / _1177 - mem[_1313] + _1199:
                revert with 'NH{q', 17
            if not _1177:
                revert with 'NH{q', 18
            emit 0x30658b22: address(arg2), (10^18 * _151) - (10^18 * _243) + (10^18 * _159) / _151, bool(arg5), (10^18 * _1177) - (10^18 * mem[_1313]) + (10^18 * _1199) / _1177
            return (10^18 * _151) - (10^18 * _243) + (10^18 * _159) / _151, 
                   (10^18 * _1177) - (10^18 * mem[_1313]) + (10^18 * _1199) / _1177
}



}
